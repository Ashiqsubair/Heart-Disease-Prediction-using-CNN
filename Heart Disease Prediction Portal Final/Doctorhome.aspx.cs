using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Heart_Disease_Prediction_Portal_Final
{
    public partial class Doctorhome : System.Web.UI.Page
    {
        string sq = "";
        dbconnect dbc= new dbconnect();
        SqlDataReader rd;
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_docmail.Text = Session["demail"].ToString();
            sq = "select name from doctordb where email='" + lbl_docmail.Text + "'";
            rd = dbc.readfn(sq);
            if (rd.HasRows == true)
            {
                rd.Read();
                lbl_docname.Text = rd["name"].ToString();
                Session["dname"]= lbl_docname.Text;
            }
            rd.Close();
            Session["dname"] = lbl_docname.Text;
        }

        protected void bt_consulting_Click(object sender, EventArgs e)
        {
            Response.Redirect("docconsulting.aspx");
        }

        protected void btn_labr_Click(object sender, EventArgs e)
        {
            Response.Redirect("doctorlabreport.aspx?docname="+lbl_docname.Text );
            Session["dname"] = lbl_docname.Text;
            Session["demail"] = lbl_docmail.Text;
        }

        protected void btn_doubt_Click(object sender, EventArgs e)
        {
            Response.Redirect("doubt_view.aspx");
        }

        protected void btn_logout_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
            Session.Clear();
        }

        protected void btn_pred_Click(object sender, EventArgs e)
        {
            Response.Redirect("doc_prediction__view.aspx?docname="+lbl_docname.Text);
        }

        protected void bt_feedback_Click(object sender, EventArgs e)
        {
            Response.Redirect("Docfeedback.aspx?docname="+lbl_docname.Text);
        }

        protected void btn_resulta_Click(object sender, EventArgs e)
        {
            Response.Redirect("result_analysis_doct.aspx?docname=" + lbl_docname.Text);
        }
    }
}