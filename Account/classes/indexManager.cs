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

        public SqlDataReader getproduct(string id=null)
        {
            connection.Open();
            string sql = null;
            if (!string.IsNullOrEmpty(id))
            {
                sql = "select * from tbl_product where id=@id";

            }
            else
            {
                sql = "select * from tbl_product";
            }
            SqlCommand cmd = new SqlCommand(sql, connection);
            if (!string.IsNullOrEmpty(id))
            {
                cmd.Parameters.Add(new SqlParameter("id", id));
            }
            
            SqlDataReader data = cmd.ExecuteReader();
            return data;
        }
    }
}