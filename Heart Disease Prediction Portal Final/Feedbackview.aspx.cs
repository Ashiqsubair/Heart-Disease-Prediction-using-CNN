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
    public partial class Feedbackview : System.Web.UI.Page
    {
        dbconnect dbc = new dbconnect();
         DataSet ds=new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void rdbt_user_CheckedChanged(object sender, EventArgs e)
        {
      
                GridView1.Visible = true;
                GridView2.Visible = false;
                string sq = "select fid,date,userid,feedback from usrfeedback";
                ds = dbc.fillfn(sq);
           
                GridView1.DataSource = ds.Tables[0];
                GridView1.DataBind();

            
            
        }

        protected void rdbt_doctor_CheckedChanged(object sender, EventArgs e)
        {
           
                GridView2.Visible = true;
                GridView1.Visible = false;
                string sq = "select fid,date,doctorid,feedback from docfeedback";
                ds = dbc.fillfn(sq);
                
                GridView2.DataSource = ds.Tables[0];
                GridView2.DataBind();
            
           
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
            Session.Clear();
        }

        protected void bt_back_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin.aspx");
        }

        ////protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        //{
        }
    }