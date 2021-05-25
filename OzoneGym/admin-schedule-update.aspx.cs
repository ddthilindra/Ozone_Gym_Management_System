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

    public partial class admin_schedule_update : System.Web.UI.Page
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


                    SqlCommand cmd = new SqlCommand("Select * from Schedules  where Schedule_Id=" + Request.QueryString["Schedule_Id"], con);
                    SqlDataReader dr = cmd.ExecuteReader();

                    if (dr.HasRows)

                    {


                        while (dr.Read())
                        {


                            schedulen.Text = dr.GetValue(2).ToString();
                            DropDownList2.Text = dr.GetValue(3).ToString();
                            TextBox1.Text = dr.GetValue(5).ToString();
                            DropDownList1.Text = dr.GetValue(6).ToString();



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

        protected void submit_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {

                    con.Open();




                }



                SqlCommand cmd = new SqlCommand ("UPDATE Schedules SET Schedule_name=@Schedule_name, Schedule_type=@Schedule_type, Description=@Description, Gender=@Gender WHERE Schedule_Id = " + Request.QueryString["Schedule_Id"], con);

                cmd.Parameters.AddWithValue("@Schedule_name", schedulen.Text.Trim());
                cmd.Parameters.AddWithValue("@Schedule_type", DropDownList2.SelectedItem.Value);
                //cmd.Parameters.AddWithValue("@Image", filepath);
                cmd.Parameters.AddWithValue("@Description", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@Gender", DropDownList1.SelectedItem.Value);

                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Author added Succesfully');</script>");
                Response.Redirect("admin-schedule.aspx");
                con.Close();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

           



        }
    }
}