using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Heart_Disease_Prediction_Portal_Final
{
    public partial class userpred_view : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_email.Text = Session["uid"].ToString();
        }

        protected void bt_back_Click(object sender, EventArgs e)
        {
            Response.Redirect("userhome.aspx");
        }
    }
}