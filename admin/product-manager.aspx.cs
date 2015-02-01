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
    public partial class product_manager : System.Web.UI.Page
    {
        public SqlDataReader data;
        protected void Page_Load(object sender, EventArgs e)
        {
            indexManager index = new indexManager();
            this.data = index.getproduct();

        }
    }
}