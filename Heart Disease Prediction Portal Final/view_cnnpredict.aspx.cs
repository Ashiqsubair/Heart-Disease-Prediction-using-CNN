using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Heart_Disease_Prediction_Portal_Final
{
    public partial class view_cnnpredict : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_emrno.Text = Session["emr"].ToString();
        }
    }
}