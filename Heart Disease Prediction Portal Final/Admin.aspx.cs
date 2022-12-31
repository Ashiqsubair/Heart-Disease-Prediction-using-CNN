using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Heart_Disease_Prediction_Portal_Final
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bt_usermgmt_Click(object sender, EventArgs e)
        {
            Response.Redirect("Usermanagement.aspx");
        }

        protected void bt_parasetup_Click(object sender, EventArgs e)
        {
            Response.Redirect("Adparameter.aspx");
        }

        protected void bt_feedbk_Click(object sender, EventArgs e)
        {
            Response.Redirect("Feedbackview.aspx");
        }

        protected void bt_approvedoc_Click(object sender, EventArgs e)
        {
            Response.Redirect("Approve_doctor.aspx");
        }

        protected void bt_resultanaly_Click(object sender, EventArgs e)
        {
            Response.Redirect("result_analysis.aspx");
        }

        protected void bt_perfanaly_Click(object sender, EventArgs e)
        {
            Response.Redirect("Performance_analysis.aspx");
        }

        protected void bt_datasetmgmt_Click(object sender, EventArgs e)
        {
            Response.Redirect("Datasetmgmnt.aspx");
        }

        protected void bt_diseasepred_Click(object sender, EventArgs e)
        {
            Response.Redirect("prediction.aspx");
        }

        protected void btn_logout_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
            Session.Clear();
        }

        protected void bt_patientreport_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlabreport.aspx");
        }
    }
}