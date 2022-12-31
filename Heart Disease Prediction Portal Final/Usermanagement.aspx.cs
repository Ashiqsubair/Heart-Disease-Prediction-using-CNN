using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace Heart_Disease_Prediction_Portal_Final
{
    public partial class Usermanagement : System.Web.UI.Page
    {
        dbconnect dbc = new dbconnect();
        string sq = "";
        SqlDataReader rd;


        protected void Page_Load(object sender, EventArgs e)
        {

          
    
        }

        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
    LinkButton lb = (LinkButton)sender;
            TableCell tc = (TableCell)lb.Parent;
            GridViewRow gr = (GridViewRow)tc.Parent;

            string email = gr.Cells[4].Text;
            sq = "delete from publicdb where email='" + email+"'";
            dbc.execQuery(sq);
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

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