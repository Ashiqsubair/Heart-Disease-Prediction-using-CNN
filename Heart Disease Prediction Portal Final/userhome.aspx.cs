using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace Heart_Disease_Prediction_Portal_Final
{
    public partial class userhome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {
                Label1.Text = Session["uid"].ToString();
            }
            catch (Exception ex)
            {

                Response.Redirect("Default.aspx");
            }
        }

        protected void bt_dtclearing_Click(object sender, EventArgs e)
        {
            Response.Redirect("userdoubt.aspx");
        }

        protected void bt_consulting_Click(object sender, EventArgs e)
        {
            Response.Redirect("userconsult.aspx");
        }

        protected void bt_labreport_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlabreport.aspx");
            Session["uid"] = Label1.Text;
        }

        protected void bt_feedback_Click(object sender, EventArgs e)
        {
            Response.Redirect("userfeedback.aspx");
            Session["uid"] = Label1.Text;
        }

        protected void btn_logout_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
            Session.Clear();
        }

        protected void bt_prediview_Click(object sender, EventArgs e)
        {
            Response.Redirect("userpred_view.aspx");
            Session["email"] = Label1.ToString();
        }
    }
}