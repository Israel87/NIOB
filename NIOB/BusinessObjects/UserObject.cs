using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NIOB.BusinessObjects
{
    public class UserObject
    {
        public Biodata biodata { get; set; }
        public Access_Log access_log { get; set; }
        public Tbl_User tbl_user { get; set; }
        public List<Employment_Info> emp_info { get; set; }
        public Address_Info address_info { get; set; }
        public Education_info edu_info { get; set; }
        public List<Payment_Info> payment_info { get; set; }
        public Association association { get; set; }
        public List<Document_Info> doc_info { get; set; }
        public List<Training_Info> training_info { get; set; }
        public ActivationKey acticationkey { get; set; }

    }

    public class Biodata
    {
        public int ID { get; set; }
        public string Title { get; set; }
        public string Surname { get; set; }
        public string Firstname { get; set; }
        public int LevelID { get; set; }
        public string Gender { get; set; }
        public string DOB { get; set; }
        public string State { get; set; }
        public string PhoneNumber { get; set; }
    }

    public class ActivationKey
    {
        public int ID { get; set; }
        public int BiodataID { get; set; }
        public string Key { get; set; }
        public string EmailAddress { get; set; }
        public string DateCreated { get; set; }
        public string DateActivated { get; set; }
        public int ActivationStatus { get; set; }
    }

    public class Access_Log
    {
        public int ID { get; set; }
        public int BiodataID { get; set; }
        public string Action { get; set; }
        public string IP { get; set; }
        public string DateCreated { get; set; }
    }


    public class Tbl_User
    {
        public int ID { get; set; }
        public int BiodataID { get; set; }
        public int UserType { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public string Username { get; set; }
        public string DateCreated { get; set; }
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
        public string DateCreated { get; set; }
    }

    public class Education_info
    {
        public int ID { get; set; }
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
        public string Title { get; set; }
        public string Scope { get; set; }
        public string Employer { get; set; }
        public string Address { get; set; }
        public string StartDate { get; set; }
        public string EndDate { get; set; }
        public string Status { get; set; }
    }

    public class Payment_Info
    {
        public int ID { get; set; }
        public int BiodataID { get; set; }
        public string Item { get; set; }
        public string Amount { get; set; }
        public string DateCreated { get; set; }
    }


    public class Training_Info
    {
        public int ID { get; set; }
        public int BiodataID { get; set; }
        public string TrainingID { get; set; }
        public string Status { get; set; }
        public string DateCreated { get; set; }
    }

    public class Association
    {
        public int ID { get; set; }
        public int BiodataID { get; set; }
        public string Name { get; set; }
        public string PositionHeld { get; set; }
        public string Datejoined { get; set; }
    }

    public class Payment_Log
    {
        public int ID { get; set; }
        public int BiodataID { get; set; }
        public string Item { get; set; }
        public string Price { get; set; }
        public int Status { get; set; }
        public string DateCreated { get; set; }
    }
}