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
    public partial class userdoubt : System.Web.UI.Page
    {
        dbconnect dbc = new dbconnect();
        string sq = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_email.Text =Session["uid"].ToString();
            lbl_date.Text = DateTime.Now.ToShortDateString();
        }

        protected void bt_submit_Click(object sender, EventArgs e)
        {
            sq="insert into doubt_question values( '"+lbl_email.Text+"','"+DropDownList1.Text+"','"+TextBox1.Text+"','"+lbl_date.Text+"','')";
            dbc.execQuery(sq);
            Response.Write("<html><script>alert('Submitted')</script></html>");
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void bt_back_Click(object sender, EventArgs e)
        {
            Response.Redirect("userhome.aspx");
        }
    }
}