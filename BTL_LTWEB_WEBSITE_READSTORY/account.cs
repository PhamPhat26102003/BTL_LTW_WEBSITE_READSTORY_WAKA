using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BTL_LTWEB_WEBSITE_READSTORY
{
    public class account
    {
        public string User { get; set; }
        public string Pass { get; set; }

        public string Gmail { get; set; }

        public account() { }

        public account(string User, string Pass, string Gmail)
        {
            this.User = User;
            this.Pass = Pass;
            this.Gmail = Gmail;
        }
    }
}