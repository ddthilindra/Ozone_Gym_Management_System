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
    public partial class empoyeeEdit : System.Web.UI.Page
    {
        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                try
                {

                    SqlConnection con = new SqlConnection(strcon);

                    if (con.State == ConnectionState.Closed)
                    {

                        con.Open();

                    }


                    SqlCommand cmd = new SqlCommand("Select * from Employee where Emp_id=" + Request.QueryString["Emp_id"], con);
                    SqlDataReader dr = cmd.ExecuteReader();

                    if (dr.HasRows)

                    {


                        while (dr.Read())
                        {

                            empname.Text = dr.GetValue(1).ToString();
                            nic.Text = dr.GetValue(2).ToString();
                            dob.Text = dr.GetValue(3).ToString();
                            empemail.Text = dr.GetValue(4).ToString();
                            empaddress.Text = dr.GetValue(5).ToString();
                            empgender.Text = dr.GetValue(6).ToString();
                            empphone.Text = dr.GetValue(7).ToString();
                            empshift.Text = dr.GetValue(8).ToString();
                            schedule.Text = dr.GetValue(9).ToString();
                            masterat.Text = dr.GetValue(10).ToString();
                            type.Text = dr.GetValue(11).ToString();


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

        protected void updateemp_Click(object sender, EventArgs e)
        {


            try
            {

                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {

                    con.Open();




                }



                SqlCommand cmd = new SqlCommand("UPDATE Employee SET Name=@Name,NIC=@NIC,DOB=@DOB,Email=@Email,Address=@Address,Gender=@Gender,Contact=@Contact,Shift=@Shift,Schedule=@Schedule,Specialization=@Specialization,Type=@Type WHERE Emp_id = " + Request.QueryString["Emp_id"], con);



                cmd.Parameters.AddWithValue("@Name", empname.Text.Trim());

                cmd.Parameters.AddWithValue("@NIC", nic.Text.Trim());
                cmd.Parameters.AddWithValue("@DOB", dob.Text.Trim());
                cmd.Parameters.AddWithValue("@Email", empemail.Text.Trim());
                cmd.Parameters.AddWithValue("@Address", empaddress.Text.Trim());
                cmd.Parameters.AddWithValue("@Gender", empgender.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@Contact", empphone.Text.Trim());
                cmd.Parameters.AddWithValue("@Shift", empshift.Text.Trim());
                cmd.Parameters.AddWithValue("@Schedule", schedule.Text.Trim());
                cmd.Parameters.AddWithValue("@Specialization", masterat.Text.Trim());
                cmd.Parameters.AddWithValue("@Type", type.Text.Trim());


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('UPDATED!!');</script>");
                Response.Redirect("employee-report.aspx");




            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }


        }

        protected void empcreate_Click(object sender, EventArgs e)
        {
            Response.Redirect("add-employee.aspx");
        }
    }
}