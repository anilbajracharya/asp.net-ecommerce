using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;


namespace ecommerce.Account.classes
{
    public class connectionManager
    {

       public SqlConnection  getConnection()
        {
        string strConn = ConfigurationManager.ConnectionStrings["ecomConString"].ConnectionString;
        SqlConnection cons = new SqlConnection(strConn);
        return cons;
        }

       public string getbasurl(string path=null)
       {
           var Request = HttpContext.Current.Request;
           string baseUrl = Request.Url.GetLeftPart(UriPartial.Authority)+"/"+path;
           return baseUrl;
       }

    }
}