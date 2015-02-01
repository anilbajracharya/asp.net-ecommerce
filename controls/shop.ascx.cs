using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using ecommerce.Account.classes;

namespace ecommerce
{
    public partial class shop : System.Web.UI.UserControl
    {
        public SqlDataReader data;
        protected void Page_Load(object sender, EventArgs e)
        {
            indexManager index = new indexManager();
            this.data = index.getproduct();
        }
    }
}