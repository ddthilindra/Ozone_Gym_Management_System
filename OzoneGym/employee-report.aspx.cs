using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OzoneFitness
{
    public partial class employee_report : System.Web.UI.Page
    {
    
        protected void Page_Load(object sender, EventArgs e)
        {

            GridView1.DataBind();
        }

       
    }
}