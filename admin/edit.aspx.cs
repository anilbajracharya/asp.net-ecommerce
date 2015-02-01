using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using ecommerce.Account.classes;
namespace ecommerce.admin
{
   
    public partial class edit : System.Web.UI.Page
    {
        public SqlDataReader data;
        protected void Page_Load(object sender, EventArgs e)
        {
            ProductManager index = new ProductManager();
            string id = Request.QueryString["id"];
            this.data = index.getproduct(id);
        

            while (data.Read())
            {
               txtname.Text=data[data.GetOrdinal("title")].ToString();
            }

        }

        protected void save_Click(object sender, EventArgs e)
        {
            ProductManager edit = new ProductManager();
           // edit.editProduct();
        }

   
    }
}