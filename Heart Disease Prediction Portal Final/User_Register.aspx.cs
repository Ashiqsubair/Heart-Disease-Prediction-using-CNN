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
    public partial class Register : System.Web.UI.Page
    {
        string sq = "";
        SqlConnection cn;
        SqlCommand cmd;
        dbconnect dbc= new dbconnect();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_reg_Click(object sender, EventArgs e)
        {
            sq = "insert into publicdb values('"+txt_fname.Text+"','"+txt_lname.Text+"','"+txt_dob.Text+"',"+txt_mob.Text+",'"+txt_email.Text+"','"+txt_pass.Text+"','"+Image2.ImageUrl+"')";
            dbc.execQuery(sq);
            Response.Write("<html><script>alert('Registered!!')</script></html>");
            Response.Redirect("default.aspx");
        }

        protected void bt_upload_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath(".") + "\\userimages\\" + txt_email.Text + ".jpg");
            Image2.ImageUrl = "~\\userimages\\" + txt_email.Text + ".jpg";
        }
    }
}