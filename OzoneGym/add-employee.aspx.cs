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
    public partial class add_employee : System.Web.UI.Page
    {
        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // Employee add button click event

        protected void addemp_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {

                    con.Open();

                }


                SqlCommand cmd = new SqlCommand("INSERT INTO Employee(Name,NIC,DOB,Email,Address,Gender,Contact,Shift,Schedule,Specialization,Type) values (@Name,@NIC,@DOB,@Email,@Address,@Gender,@Contact,@Shift,@Schedule,@Specialization,@Type)", con);

                

                
                cmd.Parameters.AddWithValue("@Name", empname.Text.Trim());
                cmd.Parameters.AddWithValue("@NIC", nic.Text.Trim());
                cmd.Parameters.AddWithValue("@DOB", dob.Text.Trim());
                cmd.Parameters.AddWithValue("@Email", empemail.Text.Trim());
                cmd.Parameters.AddWithValue("@Address", empaddress.Text.Trim());
                cmd.Parameters.AddWithValue("@Gender", empgender.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@Contact", empphone.Text.Trim());
                cmd.Parameters.AddWithValue("@Shift", empshift.Text.Trim());
                cmd.Parameters.AddWithValue("@Schedule", schedule.Text.Trim());
                cmd.Parameters.AddWithValue("@Specialization", masterat.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@Type", type.Text.Trim());

               
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("employee-report.aspx");



            }
            catch(Exception ex)
            {
                Console.WriteLine(ex.Message);
                Response.Write("<script>alert('" +ex.Message + "');</script>");

            }


        }
    }
}