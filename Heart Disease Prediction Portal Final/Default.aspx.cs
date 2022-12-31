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
    public partial class _Default : System.Web.UI.Page
    {
        string sq = "";
        dbconnect dbc=new dbconnect();//class declared
        SqlDataReader rd;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void admin_CheckedChanged(object sender, EventArgs e)
        {
            if (admin.Checked == true)
            {
                welcome.Text = "Welcome";
                name.Text = "Admin";

            }
        }

        protected void doctor_CheckedChanged(object sender, EventArgs e)
        {
            if (doctor.Checked == true)
            {
                welcome.Text = "Welcome";
                name.Text = "Doctor";
                linkdoctor.Visible = true;
                linkregister.Visible = false;
                Session["did"] = Login1.UserName.ToString();
            }
        }


        protected void public_CheckedChanged(object sender, EventArgs e)
        {
            if (public1.Checked == true)
            {
                welcome.Text = "Welcome";
                name.Text = "User";
                linkregister.Visible = true;
                linkdoctor.Visible = false;

            }
        }

        protected void linkregister_Click(object sender, EventArgs e)
        {
            Response.Redirect("User_Register.aspx");

        }

        protected void linkdoctor_Click(object sender, EventArgs e)
        {
            Response.Redirect("Doctor_Register.aspx");
        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            if (admin.Checked == true)
            {
                sq = "select * from admindb where username='" + Login1.UserName+"' and password='"+ Login1.Password+"'";
                rd=dbc.readfn(sq);
                if (rd.HasRows == true)
                {
                    Response.Redirect("Admin.aspx");
                }
            }

            if (doctor.Checked == true)
            {
                sq = "select * from doctordb where email='" + Login1.UserName + "' and password='" + Login1.Password + "'";
                rd = dbc.readfn(sq);
                if (rd.HasRows == true)
                {
                    rd.Read();
                    if (rd["status"].ToString().Trim() == "YES")
                    {
                        Session["demail"] = Login1.UserName;
                        Response.Redirect("Doctorhome.aspx");
                       
                    }
                    else
                    {

                        Response.Write("<html><script>alert('You are not approved ..!!')</script></html>");

                    }
                }
            
            } if (public1.Checked == true)
            {
                sq = "select * from publicdb where email='" + Login1.UserName + "' and password='" + Login1.Password + "'";
                rd = dbc.readfn(sq);
                if (rd.HasRows == true)
                {
                    Session["uid"]=Login1.UserName.ToString();
                    Response.Redirect("userhome.aspx");
                }
            }
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {

        }
    }
}