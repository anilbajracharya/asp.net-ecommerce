using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ecommerce.Account.classes;
using System.Data.SqlClient;
namespace ecommerce.admin
{
    public partial class delete : System.Web.UI.Page
    {
        public SqlDataReader data;
        public string url;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string id = Request.QueryString["id"];
                if (!string.IsNullOrEmpty(id))
                {
                    indexManager index = new indexManager();

                    this.data = index.getproduct(id);

                    connectionManager baseurl = new connectionManager();
                    url = baseurl.getbasurl("image/product/");


                    while (data.Read())
                    {
                        deleteproduct.Value = id;
                        /*
                        txtname.Text = data[data.GetOrdinal("title")].ToString();
                        desc.Text = data[data.GetOrdinal("description")].ToString();
                        img.ImageUrl = url + data[data.GetOrdinal("img")].ToString();

                        price.Text = data[data.GetOrdinal("price")].ToString();
                        stock.Text = data[data.GetOrdinal("stock")].ToString();
                        */
                    }
                }
            }
        }

        protected void delete_Click(object sender, EventArgs e)
        {
            ProductManager delete = new ProductManager();
            string id = Request.QueryString["id"];
            string result=delete.deleteProduct(id);
            if (result == "sucess")
            {
                Response.Redirect("product-manager.aspx?sucess=delete");
                Response.End();
            }
            else
            {
                Response.Write("no=" + result);
                
            }
        }
    }
}