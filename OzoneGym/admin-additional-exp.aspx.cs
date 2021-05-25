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
    public partial class admin_additional_exp : System.Web.UI.Page
    {
        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString.ToString();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addExp_Click(object sender, EventArgs e)
        {
            
            try {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed) {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO Additional_Expenditure(date,WaterBill,ElectricityBill,MonthlyRepair) VALUES(@date,@waterbill,@electricitybill,@monthlyrepair)", con);

                cmd.Parameters.AddWithValue("@date", adexDate.Text);
                cmd.Parameters.AddWithValue("@waterbill", adexWaterbill.Text.Trim());
                cmd.Parameters.AddWithValue("@electricitybill", adexEbill.Text.Trim());
                cmd.Parameters.AddWithValue("@monthlyrepair", adexMonthlyR.Text.Trim());

                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Additional Expenditure Added Successfully');</script>");
                Response.Redirect("admin-additional-exp-details.aspx");
                con.Close();
            }
            catch (Exception ex) {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }
    }
}