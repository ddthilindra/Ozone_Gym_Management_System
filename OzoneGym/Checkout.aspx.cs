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
    public partial class Checkout : System.Web.UI.Page
    {
        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        { 
        }


        protected void adCheckout_Click(object sender, EventArgs e)
        {

            try
            {

                SqlConnection con = new SqlConnection(strcon);

                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO checkout(customer_name,phone_no,email,address) VALUES(@customer_name,@phone_no,@email,@address)", con);

                cmd.Parameters.AddWithValue("@customer_name", cusname.Text.Trim());
                cmd.Parameters.AddWithValue("@phone_no", pnum.Text.Trim());
                cmd.Parameters.AddWithValue("@email", email.Text.Trim());
                cmd.Parameters.AddWithValue("@address", Addressname.Text.Trim());


                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Added Successfully');</script>");
                Response.Redirect("CheckoutReport.aspx");
                con.Close();



            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');<script>");
            }

        }
    }
}