using NIOB.BusinessObjects;
using Oracle.DataAccess.Client;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;

namespace NIOB.Util
{
    public class ConnectionManager
    {
        UserObject user = new UserObject(); //instantiate user object
        private static string connString = ConfigurationManager.ConnectionStrings["OracleString"].ConnectionString;

        internal OracleConnection getConnection()
        {
            OracleConnection con = new OracleConnection(connString);
            return con;
        }

        internal DataTable getUserInfo(string username, string pwd)
        {
            DataTable dt = new DataTable();
            OracleConnection conn = new OracleConnection();
            OracleDataAdapter da; 

            try
            {
                conn = getConnection(); // connect to oracle
                if (conn.State != ConnectionState.Open) conn.Open(); // open the oracle connection
                OracleCommand cmd = new OracleCommand("GetUserInfo", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new OracleParameter("V_USERNAME", OracleDbType.Varchar2, username, ParameterDirection.Input));
                cmd.Parameters.Add(new OracleParameter("V_PASSWORD", OracleDbType.Varchar2, pwd, ParameterDirection.Input));
                cmd.Parameters.Add("CUR", OracleDbType.RefCursor).Direction = ParameterDirection.Output;
                da = new OracleDataAdapter(cmd);
                da.Fill(dt);
            }
            catch
            {
                throw new Exception("Oopzzzzz...");
            }

            if (conn.State.ToString() != "Closed") conn.Close(); // close the oracle connection

            return dt;
        }

        internal bool InsertUser(UserObject user)
        {
            OracleConnection conn = new OracleConnection();
            bool response;

            //format date
            string DOB = Convert.ToDateTime(user.biodata.DOB).ToString("dd-MMM-yyyy");
            string StartDate = Convert.ToDateTime(user.emp_info[0].StartDate).ToString("dd-MMM-yyyy");
            string DateJoined = Convert.ToDateTime(user.association.Datejoined).ToString("dd-MMM-yyyy");


            try
            {
                conn = getConnection(); // connect to oracle
                if (conn.State != ConnectionState.Open) conn.Open(); // open the oracle connection
                OracleCommand cmd = new OracleCommand("InsertUser", conn);
                cmd.CommandType = CommandType.StoredProcedure;

                //biodata
                cmd.Parameters.Add(new OracleParameter("V_TITLE", OracleDbType.Varchar2, user.biodata.Title, ParameterDirection.Input));
                cmd.Parameters.Add(new OracleParameter("V_FIRSTNAME", OracleDbType.Varchar2, user.biodata.Firstname, ParameterDirection.Input));
                cmd.Parameters.Add(new OracleParameter("V_SURNAME", OracleDbType.Varchar2, user.biodata.Surname, ParameterDirection.Input));
                cmd.Parameters.Add(new OracleParameter("V_DOB", OracleDbType.Date, DOB, ParameterDirection.Input));
                cmd.Parameters.Add(new OracleParameter("V_GENDER", OracleDbType.Varchar2, user.biodata.Gender, ParameterDirection.Input));
                cmd.Parameters.Add(new OracleParameter("V_PHONENUMBER", OracleDbType.Varchar2, user.biodata.PhoneNumber, ParameterDirection.Input));
                cmd.Parameters.Add(new OracleParameter("V_STATE", OracleDbType.Varchar2, user.biodata.State, ParameterDirection.Input));
                //eduinfo
                cmd.Parameters.Add(new OracleParameter("V_PRIMARY", OracleDbType.Varchar2, user.edu_info.Primary, ParameterDirection.Input));
                cmd.Parameters.Add(new OracleParameter("V_SECONDARY", OracleDbType.Varchar2, user.edu_info.Secondary, ParameterDirection.Input));
                cmd.Parameters.Add(new OracleParameter("V_TECHNICAL", OracleDbType.Varchar2, user.edu_info.Technical, ParameterDirection.Input));
                cmd.Parameters.Add(new OracleParameter("V_TERTIARY", OracleDbType.Varchar2, user.edu_info.Tertiary, ParameterDirection.Input));
                cmd.Parameters.Add(new OracleParameter("V_PRIMARYCERT", OracleDbType.Varchar2, user.edu_info.PrimaryCert, ParameterDirection.Input));
                cmd.Parameters.Add(new OracleParameter("V_SECONDARYCERT", OracleDbType.Varchar2, user.edu_info.SecondaryCert, ParameterDirection.Input));
                cmd.Parameters.Add(new OracleParameter("V_TECHNICALCERT", OracleDbType.Varchar2, user.edu_info.TechnicalCert, ParameterDirection.Input));
                cmd.Parameters.Add(new OracleParameter("V_TERTIARYCERT", OracleDbType.Varchar2, user.edu_info.TertiaryCert, ParameterDirection.Input));
                //address info
                cmd.Parameters.Add(new OracleParameter("V_STREET", OracleDbType.Varchar2, user.address_info.Street, ParameterDirection.Input));
                cmd.Parameters.Add(new OracleParameter("V_LGA", OracleDbType.Varchar2, user.address_info.LGA, ParameterDirection.Input));
                //emp info
                cmd.Parameters.Add(new OracleParameter("V_EMP_TITLE", OracleDbType.Varchar2, user.emp_info[0].Title, ParameterDirection.Input));
                cmd.Parameters.Add(new OracleParameter("V_EMPLOYER", OracleDbType.Varchar2, user.emp_info[0].Employer, ParameterDirection.Input));
                cmd.Parameters.Add(new OracleParameter("V_EMPLOYERADDRESS", OracleDbType.Varchar2, user.emp_info[0].Address, ParameterDirection.Input));
                cmd.Parameters.Add(new OracleParameter("V_SCOPE", OracleDbType.Varchar2, user.emp_info[0].Scope, ParameterDirection.Input));
                cmd.Parameters.Add(new OracleParameter("V_STARTDATE", OracleDbType.Date, StartDate, ParameterDirection.Input));
                cmd.Parameters.Add(new OracleParameter("V_EMPSTATUS", OracleDbType.Varchar2, user.emp_info[0].Status, ParameterDirection.Input));

                //tbl_user info
                cmd.Parameters.Add(new OracleParameter("V_USERNAME", OracleDbType.Varchar2, user.tbl_user.Username, ParameterDirection.Input));
                cmd.Parameters.Add(new OracleParameter("V_PASSWORD", OracleDbType.Varchar2, user.tbl_user.Password, ParameterDirection.Input));
                cmd.Parameters.Add(new OracleParameter("V_EMAIL", OracleDbType.Varchar2, user.tbl_user.Email, ParameterDirection.Input));
                cmd.Parameters.Add(new OracleParameter("V_USERTYPE", OracleDbType.Varchar2, user.tbl_user.UserType, ParameterDirection.Input));
                //association info
                cmd.Parameters.Add(new OracleParameter("V_ASSOCIATIONNAME", OracleDbType.Varchar2, user.association.Name, ParameterDirection.Input));
                cmd.Parameters.Add(new OracleParameter("V_POSITION", OracleDbType.Varchar2, user.association.PositionHeld, ParameterDirection.Input));
                cmd.Parameters.Add(new OracleParameter("V_DATEJOINED", OracleDbType.Date, DateJoined, ParameterDirection.Input));
                //doc info
                cmd.Parameters.Add(new OracleParameter("V_DOCTYPE", OracleDbType.Varchar2, user.doc_info[0].DocumentType, ParameterDirection.Input));
                cmd.Parameters.Add(new OracleParameter("V_DOCURL", OracleDbType.Varchar2, user.doc_info[0].DocumentUrl, ParameterDirection.Input));

                cmd.ExecuteNonQuery();
                response = true;
            }
            catch
            {
                response = false;
                throw new Exception("Oopzzzzz...");
                
            }

            if (conn.State.ToString() != "Closed") conn.Close(); // close the oracle connection
            return response;
        }

        internal DataTable GetStates()
        {
            DataTable dt = new DataTable();
            OracleConnection conn = new OracleConnection();
            OracleDataAdapter da;

            try
            {
                conn = getConnection(); // connect to oracle
                if (conn.State != ConnectionState.Open) conn.Open(); // open the oracle connection
                OracleCommand cmd = new OracleCommand("GetStates", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new OracleParameter("CUR", OracleDbType.RefCursor, ParameterDirection.Output));
                da = new OracleDataAdapter(cmd);
                da.Fill(dt);
            }
            catch
            {
                throw new Exception("Oopzzzzz...");
            }

            if (conn.State.ToString() != "Closed") conn.Close(); // close the oracle connection

            return dt;
        }

        internal DataTable GetLGA(string stateid)
        {
            DataTable dt = new DataTable();
            OracleConnection conn = new OracleConnection();
            OracleDataAdapter da;

            try
            {
                conn = getConnection(); // connect to oracle
                if (conn.State != ConnectionState.Open) conn.Open(); // open the oracle connection
                OracleCommand cmd = new OracleCommand("GETLGA", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new OracleParameter("V_STATEID", OracleDbType.Varchar2, stateid, ParameterDirection.Input));
                cmd.Parameters.Add(new OracleParameter("CUR", OracleDbType.RefCursor, ParameterDirection.Output));
                da = new OracleDataAdapter(cmd);
                da.Fill(dt);
            }
            catch
            {
                throw new Exception("Oopzzzzz...");
            }

            if (conn.State.ToString() != "Closed") conn.Close(); // close the oracle connection

            return dt;
        }
    }
}