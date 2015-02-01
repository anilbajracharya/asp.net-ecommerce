using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using ecommerce.Account.classes;
namespace ecommerce.controls
{
    public partial class menu : System.Web.UI.UserControl
    {
        public SqlDataReader data;
        protected void Page_Load(object sender, EventArgs e)
        {
            indexManager index = new indexManager();
            this.data=index.getMenu();
           
        }
    }
}