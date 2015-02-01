using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ecommerce.Account.classes;
using System.Data.SqlClient;

namespace ecommerce.Account.classes
{
    public class indexManager
    {
        public SqlConnection connection;
        public indexManager()
        {
            connectionManager varCons = new connectionManager();
            SqlConnection cons = varCons.getConnection();
            this.connection = cons;
            
        }
        public SqlDataReader getMenu()
        {
            connection.Open();
            SqlCommand cmd = new SqlCommand("select * from tbl_menu", connection); ;
            SqlDataReader data = cmd.ExecuteReader();
            return data;
        }

        public SqlDataReader getBanner()
        {
            connection.Open();
            SqlCommand cmd = new SqlCommand("select * from tbl_banner", connection);
            SqlDataReader data = cmd.ExecuteReader();
            return data;
        }

        public SqlDataReader getproduct()
        {
            connection.Open();
            SqlCommand cmd = new SqlCommand("select * from tbl_product", connection);
            SqlDataReader data = cmd.ExecuteReader();
            return data;
        }
    }
}