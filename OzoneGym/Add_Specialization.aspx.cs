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
    

    public partial class Add_Specialization : System.Web.UI.Page
    {
        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void add_emp_specialization_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {

                    con.Open();

                }


                SqlCommand cmd = new SqlCommand("INSERT INTO Specialization_Table(Specialization,OTRate,Allowance,Bonus,Basic) values (@specialization,@otrate,@allowance,@bonus,@basic)", con);



                cmd.Parameters.AddWithValue("@specialization", specialization.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@otrate", otrate.Text.Trim());
                cmd.Parameters.AddWithValue("@allowance", allowance.Text.Trim());
                cmd.Parameters.AddWithValue("@bonus", bonus.Text.Trim());
                cmd.Parameters.AddWithValue("@basic", basic.Text.Trim());



                cmd.ExecuteNonQuery();
                con.Close();
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