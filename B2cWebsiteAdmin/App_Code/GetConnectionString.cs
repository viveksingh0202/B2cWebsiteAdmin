using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;

namespace B2cWebsiteAdmin.App_Code
{
    public class GetConnectionString
    {
        public string connection = "Data Source=103.48.51.217,1232;DataBase=Webforcustomer1;User Id=sa;Password=ffbj*2hFWn#2sn3@dd";
        //public string connection = "Data Source=SERVER;Initial Catalog=demo2;Integrated Security=True";
        public string getconnection()
        {
            return connection;
        }
    }
}