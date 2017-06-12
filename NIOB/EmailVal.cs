using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Text.RegularExpressions;
using System.Web;

namespace NIOB
{
    public class EmailPhoneVal

    {
        public static bool checkForEmail(string email)
        {
            bool IsValid = false;
            Regex reg = new Regex(@"^([\w\.\-+)@([\w\-]+)((\.(\w){2,3})+)$");
            if (reg.IsMatch(email))
                IsValid = true;

            return IsValid;

        }

        public static bool checkForPhoneNumber(string phone)
        {

            bool IsValid = false;
            Regex r = new Regex(@"^[0]\d{10}$");
            if (r.IsMatch(phone))
                IsValid = true;

            return IsValid;

           
        }
    }
}