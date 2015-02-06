using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ecommerce.Account.classes;
using System.Data.SqlClient;
namespace ecommerce
{
    public partial class product : System.Web.UI.Page
    {
        public SqlDataReader singleproduct;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            int id = Convert.ToInt32(Page.RouteData.Values["id"]);
            string title;
            decimal price=0;
            string no_price=null;

            ProductManager index = new ProductManager();
            id = 2;
            this.singleproduct = index.getproduct(id);
            while (singleproduct.Read())
            {
               title= singleproduct[singleproduct.GetOrdinal("title")].ToString();
               price = (decimal)singleproduct[singleproduct.GetOrdinal("price")];
             //  no_price = (string)singleproduct[singleproduct.GetOrdinal("no_price")];

            }
            lit_price.Text = price.ToString();
          //  lit_no_price.Text = no_price.ToString();
        }
    }
}