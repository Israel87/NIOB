using NIOB.BusinessObjects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NIOB.Artisan
{
    public partial class Logout : System.Web.UI.Page
    {
        Dictionary<string, UserObject> activeUsers = new Dictionary<string, UserObject>();

        protected void Page_Load(object sender, EventArgs e)
        {
            string _uname = Context.User.Identity.Name;

            if (Application["activeUsers"] != null) activeUsers = (Dictionary<string, UserObject>)Application["activeUsers"];

            FormsAuthentication.SignOut();
            //connMngr.updateAgentAction(_uname, "logged out");
            activeUsers.Remove(_uname);

            Application["activeUsers"] = activeUsers;

            Response.Redirect("/", true);
        }
    }
}