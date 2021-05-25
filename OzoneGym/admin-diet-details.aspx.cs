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
    public partial class admin_diet_details : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
            

           string del = Request.QueryString["Deleted"];

            if(del == "sucess")
            {
                
            }

        }

     /*protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string Did = GridView1.SelectedRow.Cells[0].Text;
            Response.Redirect("admin-edit-diet.aspx?Did=" + Did);
        }*/
    }
}