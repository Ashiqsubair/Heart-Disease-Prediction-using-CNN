using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;

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
            string Mai = txt_email.ToString();
            try
            {
                SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                client.EnableSsl = true;
                client.DeliveryMethod = SmtpDeliveryMethod.Network;
                client.UseDefaultCredentials = false;
                client.Credentials = new System.Net.NetworkCredential("heartpredictionportal@gmail.com", "Fmnc@789");
                string message = "Thank you for Registering ....your User name is Your emailID and your PASSWORD is " +pass ;
                MailMessage msg = new MailMessage("heartpredictionportal@gmail.com",txt_email.Text);
                msg.Body = message;
                client.Send(msg);
            }
            catch (Exception ex)
            {

                Response.Write("<html><script>alert('Mail sending Failure');</script></html>");
            }




            sq = "insert into doctordb values('"+txt_dname.Text +"','"+ txt_dreg.Text+"','"+ txt_hospital.Text+"', '"+DropDownList1.Text+"','"+ txt_email.Text+"',"+txt_mobn.Text+",'"+Image1.ImageUrl+"','"+pass.ToString()+"', 'NO')";
            dbc.execQuery(sq);
            Response.Write("<html><script>alert('Registered!! Check Your Mail for Password')</script></html>");
            
        }

        protected void bt_upload_Click(object sender, EventArgs e)
        {
          FileUpload1.SaveAs(Server.MapPath(".")+ "\\docimages\\"+txt_dreg.Text+".jpg");
          Image1.ImageUrl = "~\\docimages\\" + txt_dreg.Text + ".jpg";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}