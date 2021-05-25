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

    public partial class user_diets_show : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                string status = Request.QueryString["status"];



                if ((checkReserved() == false) || (status == "update"))
                {
                    BindListView();
                }

                else
                {
                    Response.Redirect("user-diet-reserved.aspx");
                }

            }
        }



        private void BindListView()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                int UId = Convert.ToInt32(Session["CID"].ToString());
                string gender;
                double hight;
                double weight;

                SqlCommand cmd1 = new SqlCommand("Select Gender,Height,Weight from Customer where CID='" + UId + "'", con);
                SqlDataReader result = cmd1.ExecuteReader();

                if (result.HasRows)
                {
                    result.Read();

                    gender = result[0].ToString();
                    hight = (Convert.ToDouble(result[1])) / 100;
                    weight = Convert.ToDouble(result[2]);
                    float bmi = BMICalc(hight, weight);


                    result.Close();
                    SqlCommand cmd = new SqlCommand("Select * from Diet where Gender='" + gender + "' AND Start_BMI<='" + bmi + "' AND End_BMI>='" + bmi + "' ", con);
                    ListView1.DataSource = cmd.ExecuteReader();
                    ListView1.DataBind();



                    con.Close();



                }
                else
                {
                    Response.Write("<script>alert('Some Thing Went Wrong!!!');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('LAST TRY BLOCK " + ex.Message + "');</script>");
            }


        }


        private float BMICalc(double hight, double weight)
        {
            float BMI = 0;

            BMI = (float)(weight / (hight * hight));

            return BMI;
        }


        private bool checkReserved()
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            int UId = 1;
            bool res;

            SqlCommand cmd1 = new SqlCommand("Select * from DietReservation where CustRegId='" + UId + "'", con);
            SqlDataReader result = cmd1.ExecuteReader();

            if (result.HasRows)
            {
                res = true;
            }
            else
            {
                res = false;
            }

            return res;
        }



    }
}