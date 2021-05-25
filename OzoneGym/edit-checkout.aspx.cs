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
    public partial class edit_checkout : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }


                    SqlCommand cmd = new SqlCommand("Select * from checkout where checkout_ID=" + Request.QueryString["checkout_ID"], con);
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            cusname.Text = dr.GetValue(1).ToString();
                            pnum.Text = dr.GetValue(2).ToString();
                            email.Text = dr.GetValue(3).ToString();
                            Addressname.Text = dr.GetValue(4).ToString();
                            
                        }

                    }

                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }


                SqlCommand cmd = new SqlCommand("UPDATE checkout SET customer_name=@customer_name, phone_no=@phone_no, email=@email, address=@address where checkout_ID=" + Request.QueryString["checkout_ID"], con);


                cmd.Parameters.AddWithValue("@customer_name", cusname.Text.Trim());
                cmd.Parameters.AddWithValue("@phone_no", pnum.Text.Trim());
                cmd.Parameters.AddWithValue("@email", email.Text.Trim());
                cmd.Parameters.AddWithValue("@address", Addressname.Text.Trim());





                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Updated!!');</script>");
                Response.Redirect("CheckoutReport.aspx", false);
                Context.ApplicationInstance.CompleteRequest();

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }
    }
}