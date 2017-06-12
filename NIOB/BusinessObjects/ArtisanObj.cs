using System;
using System.Collections.Generic;
//using System.Linq;
using System.Web;


namespace ArtisanObj
{
    // Beginning of ArtisanObj

            public class Artisans
            {
                //public int JobID { get; set; }
                //public string Details { get; set; }
                //public string JobTile { get; set; }
                //public string Company { get; set; }
                //public string JobStatus { get; set; }
                //DateTime Job_DateCreated { get; set; }
                //DateTime Job_ExpiryDate { get; set; }
                //// End of Job Object
                //public int NewsID { get; set; }
                //public string Title { get; set; }
                //public string Body { get; set; }
                //DateTime News_DateCreated { get; set; }
                //// End of New Object
                //public int Payment_ItemID { get; set; }
                //public string Item { get; set; }
                //public string Description { get; set; }
                //public string Price { get; set; }
                //DateTime Item_DateCreated { get; set; }
                //// End of Payment Object
                //public int LGAID { get; set; }
                //public string LGA { get; set; }
                //// End of LGA Object
                //public int StateID { get; set; }
                //public string States { get; set; }
                //// End of State Object
                //public int TrainingID { get; set; }
                //public string Title { get; set; }
                //public string Description { get; set; }
                //public string Venue { get; set; }
                //DateTime Training_StartDate { get; set; }
                //public string Duration { get; set; }
                //DateTime Training_DateCreated { get; set; }
                //// End of Training Object
                //public int UserTypeID { get; set; }
                //public string Usertype { get; set; }
                //// End of UserType Object

             }



            public class Biodata
            {
                public int ID { get; set; }
                public string Title { get; set; }
                public string Surname { get; set; }
                public string Firstname { get; set; }
                public int LevelID { get; set; }
                public string Gender { get; set; }
                DateTime DOB { get; set; }
                public string StateOfOrigin { get; set; }
                public string PhoneNumber { get; set; }
            }

            public class Access_Log
            {
                public int ID { get; set; }
                public int BiodataID { get; set; }
                public string Action { get; set; }
                public string IP { get; set; }
                DateTime DateCreated { get; set; }
            }


            public class Tbl_User
            {
                public int ID { get; set; }
                public int BiodataID { get; set; }
                public string UserType { get; set; }
                public string Email { get; set; }
                public string Password { get; set; }
                public string Username { get; set; }
                DateTime DateCreated { get; set; }
            }

    

            public class Address_Info
            {
                public int ID { get; set; }
                public int BiodataID { get; set; }
                public string Street { get; set; }
                public string City { get; set; }
                public string LGA { get; set; }
                public string State { get; set; }
            }

            public class Document_Info
            {
                public int ID { get; set; }
                public int BiodataID { get; set; }
                public string DocumentType { get; set; }
                public string DocumentUrl { get; set; }
                DateTime DateCreated { get; set; }
            }

            public class Education_info
            {
                public int ID { get; set;}
                public int BiodataID { get; set; }
                public string Primary { get; set; }
                public string Secondary { get; set; }
                public string Tertiary { get; set; }
                public string Technical { get; set; }
                public string PrimaryCert { get; set; }
                public string SecondaryCert { get; set; }
                public string TertiaryCert { get; set; }
                public string TechnicalCert { get; set; }
            }

            public class Employment_Info
            {
                public int ID { get; set; }
                public int BiodataID { get; set; }
                public string Occupation { get; set; }
                public string Scope { get; set; }
                public string Employer { get; set; }
                public string Address { get; set; }
                DateTime StartDate { get; set; }
                DateTime EndDate { get; set; }
                public string Status { get; set; }
            }

            public class Payment_Info
            {
                public int ID { get; set; }
                public int BiodataID { get; set; }
                public string Item { get; set; }
                public string Amount { get; set; }
                DateTime DateCreated { get; set; }
            }


            public class Training_Info
            {
                public int ID { get; set; }
                public int BiodataID { get; set; }
                public string TrainingID { get; set; }
                public string Status { get; set; }
                DateTime DateCreated { get; set; }
            }

            public class Association
            {
                public int ID { get; set; }
                public int BiodataID { get; set; }
                public string Name { get; set; }
                public string PositionHeld { get; set; }
                DateTime Datejoined { get; set; }
            }

            public class Payment_Log
            {
                public int ID { get; set; }
                public int BiodataID { get; set; }
                public string Item { get; set; }
                public string Price { get; set; }
                public int Status { get; set; }
                DateTime DateCreated { get; set; }
            }

           


    // End of ArtisanObj Namespace.
}