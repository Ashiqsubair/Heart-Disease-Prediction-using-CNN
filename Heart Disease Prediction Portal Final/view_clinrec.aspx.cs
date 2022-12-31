using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Heart_Disease_Prediction_Portal_Final
{
    public partial class view_clinrec : System.Web.UI.Page
    {

        dbconnect dbc= new dbconnect();
        string sq="";
        SqlDataReader rd;
        protected void Page_Load(object sender, EventArgs e)
        {

            string emr = Session["emr"].ToString();
            lbl_emrno.Text = emr.ToString();

            sq = "select * from view_result where emrno=" + Session["emr"].ToString();
            rd = dbc.readfn(sq);
            if (rd.HasRows == true)
            {
                rd.Read();
                if (rd["p_value"].ToString() == "1")
                {

                    lblresult.Text = "Caution!!! Symptoms of Heart Disease";

                }

                else
                {

                    lblresult.Text = "No diseases... ";


                }



            }
            else
            {
                lblresult.Text = "No prediction result";
            }
            rd.Close();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void bt_back_Click(object sender, EventArgs e)
        {
            Response.Redirect("Doctorhome.aspx");
        }
    }
}