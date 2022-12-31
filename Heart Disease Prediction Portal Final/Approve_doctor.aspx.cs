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
    public partial class Approve_doctor : System.Web.UI.Page
    {

        dbconnect dbc = new dbconnect();
        string sq = "";
        SqlDataReader rd;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

             LinkButton lb= ( LinkButton)  sender;
               TableCell tc=( TableCell) lb.Parent;
               GridViewRow gr=(GridViewRow  ) tc.Parent;

               string regno = gr.Cells[1].Text;
               sq = "select * from doctordb where regno ='" +regno+"'";
               rd = dbc.readfn(sq);
               if (rd.HasRows == true)
               {

                   rd.Read();
                   Label3.Text = rd["email"].ToString();

               }
               rd.Close();




        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            sq = "update doctordb set status='YES' where email='" + Label3.Text + "'";
            dbc.execQuery(sq);
            GridView1.DataBind();
        }

        protected void btn_logout_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
            Session.Clear();
        }

        protected void bt_back_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin.aspx");
        }
    }
}