using NIOB.BusinessObjects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NIOB
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string _uname = Context.User.Identity.Name;
            Dictionary<string, UserObject> activeUsers = new Dictionary<string, UserObject>();

            //refresh user session
            if (Application["activeUsers"] != null) activeUsers = (Dictionary<string, UserObject>)Application["activeUsers"];
            FormsAuthentication.SignOut();
            //log action to logger.cs

            activeUsers.Remove(_uname);
            Application["activeUsers"] = activeUsers;

            Response.Redirect("Login", true);
        }
    }
}