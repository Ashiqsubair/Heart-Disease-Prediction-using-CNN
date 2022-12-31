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
    public partial class doubt_view : System.Web.UI.Page
    {
        dbconnect dbc = new dbconnect();
        string sq = "";

        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

        protected void lkbt_reply_Click(object sender, EventArgs e)
        {
           
        }

        protected void lkbt_reply_Click1(object sender, EventArgs e)
        {
             LinkButton lb = (LinkButton)sender;
            TableCell tc = (TableCell)lb.Parent;
            GridViewRow gr = (GridViewRow)tc.Parent;

            string slno = gr.Cells[0].Text;
            Session["slno"] = slno.ToString();
            TextBox1.Visible = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        protected void bt_upload_Click(object sender, EventArgs e)
        {
            string slno = Session["slno"].ToString();
            sq = "update doubt_question set answer='" + TextBox1.Text+"' where slno=" + slno.ToString();
            dbc.execQuery(sq);
            Response.Write("<html><script>Replied</script></html>");
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