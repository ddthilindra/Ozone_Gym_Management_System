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
    public partial class admin_update_payment_package1 : System.Web.UI.Page
    {
        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
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


                    SqlCommand cmd = new SqlCommand("Select * from Package where PID=" + Request.QueryString["PID"], con);
                    SqlDataReader dr = cmd.ExecuteReader();

                    if (dr.HasRows)

                    {


                        while (dr.Read())
                        {




                            inputPackName.Text = dr.GetValue(2).ToString();
                            inputPackPrice.Text = dr.GetValue(3).ToString();
                            inputPackPrd.Text = dr.GetValue(4).ToString();
                            inputWorkDays.Text = dr.GetValue(5).ToString();
                            inputPackDes.Text = dr.GetValue(6).ToString();
                            







                        }
                    }







                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                    Response.Write("<script>alert('" + ex.Message + "');</script>");

                }

            }
        }

        protected void submitbtn_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {

                    con.Open();




                }



                SqlCommand cmd = new SqlCommand("UPDATE Package SET Name=@pName,Price=@pPrice,Duration=@pPeriod,NoOfworkdays=@pWorkdays,Description=@pDes WHERE PID = " + Request.QueryString["PID"], con);



                cmd.Parameters.AddWithValue("@pName", inputPackName.Text.Trim());
                cmd.Parameters.AddWithValue("@pPrice", inputPackPrice.Text.Trim());
                cmd.Parameters.AddWithValue("@pPeriod", inputPackPrd.Text.Trim());
                cmd.Parameters.AddWithValue("@pWorkdays", inputWorkDays.Text.Trim());
                cmd.Parameters.AddWithValue("@pDes", inputPackDes.Text.Trim());
                


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('UPDATED!!');</script>");
                Response.Redirect("admin-add-payment-package.aspx");




            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }
    }
}