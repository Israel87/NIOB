using NIOB.BusinessLogic;
using NIOB.BusinessObjects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NIOB.Register
{
    public partial class Assessor : System.Web.UI.Page
    {
        UserObject user = new UserObject();     //instantiate user object
        Logic logic = new Logic();      //instantiate logic class
        //call email service

        protected void Page_Load(object sender, EventArgs e)
        {
            populateDDLs();
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            //validate required field


            //instantiate all user info class
            Biodata userbiodata = new Biodata();
            Tbl_User usertbl_user = new Tbl_User();
            Employment_Info userempinfo = new Employment_Info();
            Education_info usereduinfo = new Education_info();
            Address_Info useraddressinfo = new Address_Info();
            Document_Info userdocinfo = new Document_Info();
            Association userassociation = new Association();

            ////collect html field values into user info params
            //biodata
            userbiodata.Title = title.Value;
            userbiodata.Firstname = firstname.Value;
            userbiodata.Surname = lastname.Value;
            userbiodata.DOB = Request.Form["dob"].ToString();
            userbiodata.Gender = gender.Value;
            userbiodata.PhoneNumber = phoneno.Value;
            userbiodata.State = state.Value;

            //tbl_user info
            usertbl_user.Username = username.Value;
            usertbl_user.Password = password.Value;
            usertbl_user.Email = email.Value;
            usertbl_user.UserType = 2;

            //address info
            useraddressinfo.Street = houseAddress.Value;
            useraddressinfo.LGA = lga.Value;
            useraddressinfo.State = state.Value;

            //employment info
            userempinfo.Title = designation.Value;
            userempinfo.Employer = employername.Value;
            userempinfo.Scope = scopeofresp.Value;
            userempinfo.Address = employeraddress.Value;
            userempinfo.StartDate = Request.Form["appointmentdate"];
            userempinfo.Status = "current";

            //education info
            usereduinfo.Primary = primary.Value;
            usereduinfo.Secondary = secondary.Value;
            usereduinfo.Technical = technical.Value;
            usereduinfo.Tertiary = tertiary.Value;
            usereduinfo.PrimaryCert = primaryCert.Value;
            usereduinfo.SecondaryCert = secondaryCert.Value;
            usereduinfo.TechnicalCert = technicalCert.Value;
            usereduinfo.TertiaryCert = tertiaryCert.Value;

            //document info
            userdocinfo.DocumentType = primarycertUpload.Name;
            userdocinfo.DocumentUrl = primarycertUpload.Value;

            //association
            userassociation.Name = associationname.Value;
            userassociation.PositionHeld = positionheld.Value;
            userassociation.Datejoined = Request.Form["assodatejoined"];

            //inject user info into user object
            user.biodata = userbiodata;
            user.edu_info = usereduinfo;
            user.emp_info = userempinfo;
            user.tbl_user = usertbl_user;
            user.association = userassociation;
            user.address_info = useraddressinfo;
            user.doc_info = userdocinfo;

            //generate activation key and update user activation info


            //initiate insert function
            if (logic.InsertUser(user))
            {
                //send email

                //redirect to success page
                Response.Redirect("Success");
            }
            else
            {
                //log error

                //redirect to error page
            }
        }

        private void populateDDLs()
        {
            //Populate your stateOfOriginDDL
            state.DataSource = logic.GetStates();
            state.DataTextField = "statename";
            state.DataValueField = "stateid";
            state.DataBind();
            state.Items.Insert(0, new ListItem("Select State", ""));
            lga.Items.Insert(0, new ListItem("Select LGA", ""));

        }
    }
}