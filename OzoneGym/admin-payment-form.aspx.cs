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
    public partial class admin_payment_form : System.Web.UI.Page
    {
        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitbtn_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed) {
                    con.Open();
                }

                

                SqlCommand cmd = new SqlCommand("INSERT INTO Package(Name,Price,Duration,NoOfworkdays,Description) VALUES(@PackName,@PackPrice,@PackPrd,@WorkDays,@PackDes)",con);

                cmd.Parameters.AddWithValue("@PackName", inputPackName.Text.Trim());
                cmd.Parameters.AddWithValue("@PackPrice", inputPackPrice.Text.Trim());
                cmd.Parameters.AddWithValue("@PackPrd", inputPackPrd.Text.Trim());
                cmd.Parameters.AddWithValue("@WorkDays", inputWorkDays.Text.Trim());
                cmd.Parameters.AddWithValue("@PackDes", inputPackDes.Text.Trim());

                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('package added successfully');</script>");
                Response.Redirect("admin-add-payment-package.aspx");
                con.Close();
                

            }
            catch(Exception ex) {
                Console.WriteLine(ex.Message);
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }
    }
}