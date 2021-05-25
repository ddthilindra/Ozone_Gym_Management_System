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
    public partial class admin_update_additional : System.Web.UI.Page
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


                    SqlCommand cmd = new SqlCommand("Select * from Additional_Expenditure where AdditionalId=" + Request.QueryString["AdditionalId"], con);
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            //filepath = dr.GetValue(8).ToString();
                            adexDate.Text = dr.GetValue(2).ToString();
                            adexWaterbill.Text = dr.GetValue(3).ToString();
                            adexEbill.Text = dr.GetValue(4).ToString();
                            adexMonthlyR.Text = dr.GetValue(5).ToString();


                            // Console.Write(email.Text);
                        }

                    }

                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                }

            }

        }


        protected void upExp_Click(object sender, EventArgs e)
        {
            try
            {
                
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }


                SqlCommand cmd = new SqlCommand("UPDATE Additional_Expenditure SET date=@date, WaterBill=@WaterBill, ElectricityBill=@ElectricityBill, MonthlyRepair=@MonthlyRepair  where AdditionalId=" + Request.QueryString["AdditionalId"], con);


                cmd.Parameters.AddWithValue("@date", adexDate.Text.Trim());
                cmd.Parameters.AddWithValue("@WaterBill", adexWaterbill.Text.Trim());
                cmd.Parameters.AddWithValue("@ElectricityBill", adexEbill.Text.Trim());
                cmd.Parameters.AddWithValue("@MonthlyRepair", adexMonthlyR.Text.Trim());
                





                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Updated!!');</script>");
                Response.Redirect("admin-additional-exp-details.aspx", false);
                Context.ApplicationInstance.CompleteRequest();

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }


    }
}