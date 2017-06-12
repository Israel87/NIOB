using NIOB.BusinessLogic;
using NIOB.BusinessObjects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NIOB.Register
{
    public partial class Artisan : System.Web.UI.Page
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
            //if (!checkValidation())
            //{
                
            //    return;
            //}

            //if (Page.IsValid) {

            //}
            if (!checkValidation())
            {
                return;
            }

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
            userbiodata.Firstname = firstname.Value.Trim();
            userbiodata.Surname = lastname.Value.Trim();
            userbiodata.DOB = Request.Form["dob"].ToString();
            userbiodata.Gender = gender.Value;
            userbiodata.PhoneNumber = phoneno.Value.Trim();
            userbiodata.State = state.Value;

            //tbl_user info
            usertbl_user.Username = username.Value.Trim();
            usertbl_user.Password = password.Value.Trim();
            usertbl_user.Email = email.Value.Trim();
            usertbl_user.UserType = 1;

            //address info
            useraddressinfo.Street = houseAddress.Value.Trim();
            useraddressinfo.LGA = lga.Value;
            useraddressinfo.State = state.Value;

            //employment info
            userempinfo.Title = designation.Value;
            userempinfo.Employer = employername.Value.Trim();
            userempinfo.Scope = scopeofresp.Value.Trim();
            userempinfo.Address = employeraddress.Value.Trim();
            userempinfo.StartDate = Request.Form["appointmentdate"];
            userempinfo.Status = "current";

            //education info
            usereduinfo.Primary = primary.Value.Trim();
            usereduinfo.Secondary = secondary.Value.Trim();
            usereduinfo.Technical = technical.Value.Trim();
            usereduinfo.Tertiary = tertiary.Value.Trim();
            usereduinfo.PrimaryCert = primaryCert.Value;
            usereduinfo.SecondaryCert = secondaryCert.Value;
            usereduinfo.TechnicalCert = technicalCert.Value;
            usereduinfo.TertiaryCert = tertiaryCert.Value;

            //document info
            userdocinfo.DocumentType = primarycertUpload.Name;
            userdocinfo.DocumentUrl = primarycertUpload.Value;
            
            //association
            userassociation.Name = associationname.Value.Trim();
            userassociation.PositionHeld = positionheld.Value.Trim();
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


        public bool checkValidation()
        {
           
            if (title.Value.Trim() == "")
            {
                return false;
            }

            if (firstname.Value.Trim() == "")
            {
                return false;
            }

            if (lastname.Value.Trim() == "")
            {
                return false;
            }
            if (gender.Value == "")
            {
                return false;
            }
            if (username.Value.Trim() == "")
            {
                return false;
            }
            if (password.Value.Length > 8)
            {
                return false;
            }

            if (EmailPhoneVal.checkForEmail(email.Value.Trim()) != true)
            {
                return false;
            }

            if (EmailPhoneVal.checkForPhoneNumber(phoneno.Value.Trim()) != true)
            {
                return false;
            }

            else
            {
                return true;
            }
        }



        //private bool validateEmail()
        //{
        //    throw new NotImplementedException();
        //}

        //private bool validateTitle()
        //{
        //    throw new NotImplementedException();
        //}

        //private bool validateFirstName()
        //{
        //    throw new NotImplementedException();
        //}
        //private bool validateLastName()
        //{
        //    throw new NotImplementedException();
        //}

        //private bool validateGender()
        //{
        //    throw new NotImplementedException();
        //}
        //private bool validateDOB()
        //{
        //    throw new NotImplementedException();
        //}
        //private bool validateUsername()
        //{
        //    throw new NotImplementedException();
        //}

        //private bool validatePassword()
        //{
        //    throw new NotImplementedException();
        //}


      

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