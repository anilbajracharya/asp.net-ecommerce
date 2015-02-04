using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace ecommerce.Account.classes
{
    public class ProductManager
    {

          public SqlConnection connection;
          public ProductManager()
        {
            connectionManager varCons = new connectionManager();
            SqlConnection cons = varCons.getConnection();
            this.connection = cons;
            
        }

          public string deleteProduct(string id)
          {
            connection.Open();
            string result;
            try
            {
                string query = "DELETE  FROM tbl_product id=@id";
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.Add(new SqlParameter("id", id));
                command.ExecuteNonQuery();
                result = "sucess";
            }
            catch (Exception ex)
            {
                result = ex.ToString();
            }
            return result;
          }
        public string editProduct(string id,string title,string img,string desc,string price,string stock)
        {
            string result = null;
            connection.Open();
            
            try
            {
                string query = "Update tbl_product set title=@title,description=@desc,img=@img,stock=@stock where id=@id";
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.Add(new SqlParameter("id", id));
                command.Parameters.Add(new SqlParameter("title", title));
                command.Parameters.Add(new SqlParameter("img", img));
                command.Parameters.Add(new SqlParameter("stock", stock));
                command.Parameters.Add(new SqlParameter("desc", desc));
                command.ExecuteNonQuery();
            }
            catch(Exception ex)
            {
                result = ex.ToString();
            }
            
            return result;
        }
        public string addProduct(string title, string img, string desc, string price, string stock)
        {
            string result; 
                try
                {
                    string query = "INSERT into tbl_product(title,description,img,stock)VALUES(@title,@desc,@img,@stock)";
                    SqlCommand command = new SqlCommand(query, connection);
                    command.Parameters.Add(new SqlParameter("title", title));
                    command.Parameters.Add(new SqlParameter("img", img));
                    command.Parameters.Add(new SqlParameter("stock", stock));
                    command.Parameters.Add(new SqlParameter("desc", desc));
                    command.ExecuteNonQuery();
                    result = "Sucess";              
                }
                catch (Exception ex)
                {
                    result = ex.ToString();
                }
            
            return result;
        }
    }
}