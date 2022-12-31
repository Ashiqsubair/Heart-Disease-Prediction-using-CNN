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
    public partial class Doctor_Register : System.Web.UI.Page
    {
        string sq = "";
        dbconnect dbc = new dbconnect();
        SqlConnection cn;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_reg_Click(object sender, EventArgs e)
        {

            Random r = new Random();
            int pass = r.Next(1111, 9999);


            sq = "insert into doctordb values('"+txt_dname.Text +"','"+ txt_dreg.Text+"','"+ txt_hospital.Text+"', '"+DropDownList1.Text+"','"+ txt_email.Text+"',"+txt_mobn.Text+",'"+Image1.ImageUrl+"','"+pass.ToString()+"', 'NO')";
            dbc.execQuery(sq);
            Response.Write("<html><script>alert('Registered!!')</script></html>");
            Response.Redirect("default.aspx");
        }

        protected void bt_upload_Click(object sender, EventArgs e)
        {
          FileUpload1.SaveAs(Server.MapPath(".")+ "\\docimages\\"+txt_dreg.Text+".jpg");
          Image1.ImageUrl = "~\\docimages\\" + txt_dreg.Text + ".jpg";
        }
    }
}