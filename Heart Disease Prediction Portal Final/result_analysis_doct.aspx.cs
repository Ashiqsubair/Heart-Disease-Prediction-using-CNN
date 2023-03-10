using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.DataVisualization.Charting;
using System.Data.SqlClient;
using System.Data; 
namespace Heart_Disease_Prediction_Portal_Final
{
    public partial class result_analysis_doct : System.Web.UI.Page
    {
        dbconnect dbc = new dbconnect();
        string sq = "";
        SqlDataReader rd;
        protected void Page_Load(object sender, EventArgs e)
        {

            lbldocname.Text = Request.Params.Get("docname");
            sq = "select count(emrno) from view_result where docname='"+lbldocname.Text +"'";
            int p = dbc.scalrFn(sq);
            sq = "select count(emrno) from view_result where p_value=1  and  docname='" + lbldocname.Text + "'";
            int ps = dbc.scalrFn(sq);
            sq = "select count(emrno) from view_result where p_value=0 and  docname='" + lbldocname.Text + "'";
            int pn = dbc.scalrFn(sq);
            lbl_yes.Text = ps.ToString();
            lbl_no.Text = pn.ToString();
            lbl_testcase.Text = p.ToString();

            string[] xVal = { "Diseased", "Healthy" };
            double[] yVal =  new double[2];
            yVal[0] = ps;
            yVal[1]= pn;
            Chart1.Series[0].Points.DataBindXY(xVal, yVal);
            Chart1.Legends[0].Enabled = true;


        }

        protected void btn_logout_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
            Session.Clear();

        }

        protected void bt_back_Click(object sender, EventArgs e)
        {
            Response.Redirect("Doctorhome.aspx");
        }
    }
}