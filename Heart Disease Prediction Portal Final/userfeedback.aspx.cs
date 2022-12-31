using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Heart_Disease_Prediction_Portal_Final
{
    public partial class userfeedback : System.Web.UI.Page
    {
        dbconnect dbc = new dbconnect();
        string sq = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            
            sq = "select max(emrno) from emrdata where email='" + lbl_userid.Text + "'";
            int p = dbc.scalrFn(sq);

           lbl_emrno.Text = p.ToString();
            //lbl_emrno.Text=
            lbl_fid.Text = p.ToString();
            lbl_date.Text = DateTime.Now.ToShortDateString();
            lbl_userid.Text = Session["uid"].ToString();
        }

        protected void bt_submit_Click(object sender, EventArgs e)
        {
            sq = "insert into usrfeedback values(" + lbl_emrno.Text + ",'" + lbl_date.Text + "','" + lbl_userid.Text + "','" + txt_feedback.Text + "')";
            dbc.execQuery(sq);
            Response.Write("<html><script>alert('feedback submitted!!')</script></html>");
            Response.Redirect("userhome.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void lkbt_select_Click(object sender, EventArgs e)
        {
            LinkButton lb = (LinkButton)sender;
            TableCell tc = (TableCell)lb.Parent;
            GridViewRow gr = (GridViewRow)tc.Parent;

            string emrno = gr.Cells[0].Text;
            lbl_emrno.Text = emrno.ToString();
            GridView1.DataBind();
        }

        protected void bt_back_Click(object sender, EventArgs e)
        {
            Response.Redirect("userhome.aspx");
        }

        protected void btn_logout_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
            Session.Clear();
        }
    }
}