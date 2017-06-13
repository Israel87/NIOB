using Newtonsoft.Json;
using NIOB.BusinessLogic;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;

namespace NIOB.App_Start
{
    /// <summary>
    /// Summary description for Service
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class Service : System.Web.Services.WebService
    {
        Logic logic = new Logic();      //instantiate logic class

        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }

        [WebMethod()]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public string GetLGA(string stateid)
        {
            DataTable dt = new DataTable();
            dt = logic.GetLGA(stateid);

            if (dt.Rows.Count > 0)
            {
                string json = JsonConvert.SerializeObject(dt);
                return json;
            }
            else { return ""; }
        }
    }
}
