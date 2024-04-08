using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BTL_LTWEB_WEBSITE_READSTORY
{
    public class story
    {
        public int id { get; set; }
        public string name { get; set; }
        public string nameAuthor { get; set; }
        public string summary { get; set; }
        public string status { get; set; }
        public string image { get; set; }

        public story()
        {

        }

        public story(int id, string name, string nameAuthor, string summary, string status, string image)
        {
            this.id = id;
            this.name = name;
            this.nameAuthor = nameAuthor;
            this.summary = summary;
            this.status = status;
            this.image = image;
        }
    }
}