using NIOB.BusinessObjects;
using NIOB.Util;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;

namespace NIOB.BusinessLogic
{
    public class Logic
    {
        ConnectionManager connMngr = new ConnectionManager();

        internal UserObject GetUser(string _uname, string _pwd)
        {
            UserObject _user = new UserObject();
            DataTable dt = new DataTable();
            dt = connMngr.getUserInfo(_uname, _pwd);
            if (dt != null && dt.Rows.Count > 0)
            {
                DataRow dr = dt.Rows[0];
                _user.tbl_user = new Tbl_User();
                _user.tbl_user.BiodataID = Convert.ToInt32(dr["BIODATAID"]);
                _user.tbl_user.Email = dr["EMAIL"].ToString();
                _user.tbl_user.ID = Convert.ToInt32(dr["ID"]);
                _user.tbl_user.Password = dr["PASSWORD"].ToString();
                _user.tbl_user.Username = dr["USERNAME"].ToString();
                _user.tbl_user.UserType = Convert.ToInt32(dr["USERTYPE"]);
                _user.tbl_user.DateCreated = dr["DATECREATED"].ToString();
            }
            else
            {
                _user = null;
            }

            return _user;
        }

        internal bool InsertUser(UserObject user)
        {
            if (connMngr.InsertUser(user))
                return true;
            else
                return false;
        }

        internal DataTable GetStates()
        {
            DataTable dt = new DataTable();
            dt = connMngr.GetStates();
            if (dt != null & dt.Rows.Count > 0)
                return dt;
            else return null;
        }

        internal DataTable GetLGA(string stateid)
        {
            DataTable dt = new DataTable();
            dt = connMngr.GetLGA(stateid);
            if (dt != null & dt.Rows.Count > 0)
                return dt;
            else return null;
        }
    }
}