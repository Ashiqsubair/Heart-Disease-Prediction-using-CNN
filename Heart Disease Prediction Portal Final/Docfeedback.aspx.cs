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
    public partial class Docfeedback : System.Web.UI.Page
    {
        string sq = "";
        dbconnect dbc = new dbconnect();
        SqlDataReader rd;
        protected void Page_Load(object sender, EventArgs e)
        {
            lbldocname.Text = Request.Params.Get("docname");
        
            sq = "select max(fid) from docfeedback";
            int p = dbc.scalrFn(sq);
            p++;
            lbl_fid.Text= p.ToString();
            lbl_date.Text = DateTime.Now.ToShortDateString();
            string docid = "";
            docid = "select regno from doctordb where name='" + lbldocname.Text+"'";
           
             rd=dbc.readfn(docid);
             
            if (rd.HasRows==true)
                {
                rd.Read();
                lbl_docid.Text=rd["regno"].ToString();
                }

            rd.Close();



            //lbl_docid.Text = Session["did"].ToString();

        }

        protected void bt_submit_Click(object sender, EventArgs e)
        {
            sq="insert into docfeedback values("+lbl_emrno.Text+","+lbl_fid.Text+",'"+lbl_date.Text+"','"+lbl_docid.Text+"','"+txt_feedback.Text+"')";
            dbc.execQuery(sq);
            Response.Write("<html><script>alert('feedback submitted!!')</script></html>");
            Response.Redirect("doctorhome.aspx");
        }

        protected void lkbt_select_Click(object sender, EventArgs e)
        {
        
        }

        protected void _lnkselect_Click(object sender, EventArgs e)
        {
  
        }

        protected void _lnkselect_Click1(object sender, EventArgs e)
        {
  LinkButton lb = (LinkButton)sender;
            TableCell tc = (TableCell)lb.Parent;
            GridViewRow gr = (GridViewRow)tc.Parent;

            string emrno = gr.Cells[0].Text;
            lbl_emrno.Text = emrno.ToString();
            GridView1.DataBind();
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