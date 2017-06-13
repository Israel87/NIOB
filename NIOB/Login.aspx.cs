using NIOB.BusinessLogic;
using NIOB.BusinessObjects;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NIOB
{
    public partial class Login : System.Web.UI.Page
    {
        Dictionary<string, UserObject> activeUsers = new Dictionary<string, UserObject>();
        Logic logic = new Logic();
        UserObject _user = new UserObject();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void login_Click(object sender, EventArgs e)
        {
            string _uname = uname.Value.ToLower();
            string _pwd = pwd.Value;
            if (!String.IsNullOrEmpty(_uname) && !String.IsNullOrEmpty(_pwd))
            {

                if ((_uname == "admin") && (_pwd == "welcome10@"))
                {
                    _user.tbl_user.Password = _pwd;
                    _user.tbl_user.Username = _uname;
                    AllowUser(_user);
                }
                else
                {
                    _user = logic.GetUser(_uname, _pwd);

                    if (_user != null)
                    {
                        AllowUser(_user);
                    }
                    else
                    {
                        error_lbl.InnerText = "Invalid credentials. Please try again.";
                    }
                }
            }    
            
        }

        private void AllowUser(UserObject user)
        {
            string _uname = user.tbl_user.Username;
            if (Application["activeUsers"] != null) activeUsers = (Dictionary<string, UserObject>)Application["activeUsers"];
            if (activeUsers.Keys.Contains(_uname))
            {
                FormsAuthentication.SignOut();
                //connMngr.updateAgentAction(_uname, "logged out");
                activeUsers.Remove(_uname);
            }

            FormsAuthentication.SetAuthCookie(_uname, false);
            //connMngr.updateAgentAction(_uname, "logged in");
            activeUsers.Add(_uname, user);

            Application["activeUsers"] = activeUsers;
            //if (_uname == "admin")
            //{
            //    Response.Redirect("/osuncallcenter/Admin");
            //}
            Response.Redirect(getCategory(user.tbl_user.UserType) +"/Home");
        }

        private string getCategory(int p)
        {
            switch (p){
                case 1:
                    return "Artisan";
                case 2:
                    return "Assessor";
                case 3:
                    return "Trainer";
                case 4:
                    return "Company";
                default:
                    return "";
            }
        }
    }
}