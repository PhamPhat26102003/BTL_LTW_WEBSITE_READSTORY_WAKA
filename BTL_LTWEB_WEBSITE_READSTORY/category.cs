using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BTL_LTWEB_WEBSITE_READSTORY
{
    public class category
    {
        public int id { get; set; }
        public string name { get; set; }

        public category() { }

        public category(int id, string name)
        {
            this.id = id;
            this.name = name;
        }
    }
}