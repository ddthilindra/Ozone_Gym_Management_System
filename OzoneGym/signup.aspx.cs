using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.WebSockets;

namespace OzoneFitness
{
    public partial class signup : System.Web.UI.Page
    {
        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            btnsignup.Enabled = false;
        }

        //Signup click event
        protected void btnsignup_Click(object sender, EventArgs e)
        {
            //Response.Write("<script>alert('Testing');</script>");

            String img;
            img = "image.jpg";

            try
            {
                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                string email = inputEmail.Text.Trim();

                if (checkEmail(email) == false)
                {
                    string Password = BCrypt.Net.BCrypt.HashString(reinputPassword.Text);

                    SqlCommand cmd = new SqlCommand("INSERT INTO Customer(Fname,Lname,Image,Weight,Height,Gender,Age,Phone,Occpation,Address1,Address2,Email,Password) values(@fname,@lname,'" + img + "',@inputWeight,@inputHeight,@inputGender,@inputage,@inputphone,@inputoccupation,@inputAdd1,@inputAdd2,@inputEmail,'" + Password + "')", con);

                    Console.Write(cmd);

                    cmd.Parameters.AddWithValue("@fname", fname.Text.Trim());
                    cmd.Parameters.AddWithValue("@lname", lname.Text.Trim());
                    cmd.Parameters.AddWithValue("@inputWeight", inputWeight.Text.Trim());
                    cmd.Parameters.AddWithValue("@inputHeight", inputHeight.Text.Trim());
                    cmd.Parameters.AddWithValue("@inputGender", inputGender.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@inputage", inputage.Text.Trim());
                    cmd.Parameters.AddWithValue("@inputphone", inputphone.Text.Trim());
                    cmd.Parameters.AddWithValue("@inputoccupation", inputoccupation.Text.Trim());
                    cmd.Parameters.AddWithValue("@inputAdd1", inputAdd1.Text.Trim());
                    cmd.Parameters.AddWithValue("@inputAdd2", inputAdd2.Text.Trim());
                    cmd.Parameters.AddWithValue("@inputEmail", inputEmail.Text.Trim());
                    cmd.Parameters.AddWithValue("@reinputPassword", reinputPassword.Text.Trim());

                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Signup Success...!');</script>");
                }
                else
                {
                    Response.Write("<script>alert('This Email is already exist...!');</script>");
                }

            }


            catch (Exception ex)
            {
                Response.Write("<script>alert('Signup Unsuccess...!');</script>");
                Console.Write(ex.Message);
            }
        }

        private bool checkEmail(String email)
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            bool pass;

            SqlCommand cmd1 = new SqlCommand("SELECT * FROM Customer WHERE Email = '"+email+"'", con);
            SqlDataReader result = cmd1.ExecuteReader();

            if (result.HasRows)
            {
                pass = true;
            }
            else
            {
                pass = false;
            }

            return pass;
        }

        protected void chktems_CheckedChanged(object sender, EventArgs e)
        {
            btnsignup.Enabled = chktems.Checked;
        }

        protected void demoSign_Click(object sender, EventArgs e)
        {
            fname.Text = "deshitha";
            lname.Text = "thilindra";
            inputWeight.Text = "59.9";
            inputHeight.Text = "160";
            inputage.Text = "22";
            inputphone.Text = "0705577355";
            inputoccupation.Text = "Manager";
            inputAdd1.Text = "3/A";
            inputAdd2.Text = "Matara";
            inputEmail.Text = "ddthilindra@gmail.com";
        }
    }
}
