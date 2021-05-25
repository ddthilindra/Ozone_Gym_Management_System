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
    public partial class updateUserdetails : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

            cid.Text = Session["CID"].ToString();

            if (!Page.IsPostBack)
            {
                try
                {

                    SqlConnection con = new SqlConnection(strcon);

                    if (con.State == ConnectionState.Closed)
                    {

                        con.Open();

                    }

                    SqlCommand cmd = new SqlCommand("SELECT * FROM Customer WHERE CID='" + cid.Text.Trim()+"'" , con);
                    SqlDataReader dr = cmd.ExecuteReader();

                    if (dr.HasRows)

                    {

                        while (dr.Read())
                        {

                            fname.Text= dr.GetValue(1).ToString();
                            lname.Text= dr.GetValue(2).ToString();
                            inputWeight.Text= dr.GetValue(4).ToString();
                            inputHeight.Text= dr.GetValue(5).ToString();
                            inputGender.Text = dr.GetValue(6).ToString();
                            inputage.Text= dr.GetValue(7).ToString();
                            inputphone.Text= dr.GetValue(8).ToString();
                            inputoccupation.Text= dr.GetValue(9).ToString();
                            inputAdd1.Text= dr.GetValue(10).ToString();
                            inputAdd2.Text= dr.GetValue(11).ToString();
                            inputEmail.Text= dr.GetValue(12).ToString();
                            
                            reinputPassword.Text= dr.GetValue(13).ToString();
                            
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

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            String img;
            img = "image.jpg";


            try
            {
                cid.Text = Session["CID"].ToString();

                String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                string Password = BCrypt.Net.BCrypt.HashString(reinputPassword.Text);

                SqlCommand cmd = new SqlCommand("UPDATE Customer SET Fname=@fname,Lname=@lname,Image='" + img + "',Weight=@inputWeight,Height=@inputHeight,Gender=@inputGender,Age=@inputage,Phone=@inputphone,Occpation=@inputoccupation,Address1=@inputAdd1,Address2=@inputAdd2,Email=@inputEmail,Password='"+Password+ "' WHERE CID='" + cid.Text.Trim() + "'", con);

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
                Response.Write("<script>alert('Update Success...!');</script>");
            }


            catch (Exception ex)
            {
                Response.Write("<script>alert('Signup Unsuccess...!');</script>");
                Console.Write(ex.Message);
            }
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            try
            {
                cid.Text = Session["CID"].ToString();

                String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }


                SqlCommand cmd = new SqlCommand("DELETE FROM Customer WHERE CID='" + cid.Text.Trim() + "'", con);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Delete Success...!');</script>");
            }


            catch (Exception ex)
            {
                Response.Write("<script>alert('Signup Unsuccess...!');</script>");
                Console.Write(ex.Message);
            }
        }
    }
}