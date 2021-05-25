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
    public partial class Specialization_Edit : System.Web.UI.Page
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


                    SqlCommand cmd = new SqlCommand("Select * from Specialization_Table where Special_Id=" + Request.QueryString["Special_Id"], con);
                    SqlDataReader dr = cmd.ExecuteReader();

                    if (dr.HasRows)

                    {


                        while (dr.Read())
                        {




                            specialization.Text = dr.GetValue(1).ToString();
                            otrate.Text = dr.GetValue(2).ToString();
                            allowance.Text = dr.GetValue(3).ToString();
                            bonus.Text = dr.GetValue(4).ToString();
                            basic.Text = dr.GetValue(4).ToString();

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

        protected void edit_emp_specialization_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {

                    con.Open();

                }


                SqlCommand cmd = new SqlCommand("UPDATE Specialization_Table SET Specialization=@specialization,OTRate=@otrate,Allowance=@allowance,Bonus=@bonus,Basic=@basic WHERE Special_Id = " + Request.QueryString["Special_Id"], con);



                cmd.Parameters.AddWithValue("@specialization", specialization.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@otrate", otrate.Text.Trim());
                cmd.Parameters.AddWithValue("@allowance", allowance.Text.Trim());
                cmd.Parameters.AddWithValue("@bonus", bonus.Text);
                cmd.Parameters.AddWithValue("@basic", basic.Text);


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('UPDATED!!');</script>");
                Response.Redirect("employee-specialization-report.aspx");



            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }
    }
    
}