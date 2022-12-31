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
    public partial class Adparameter : System.Web.UI.Page
    {
        dbconnect dbc = new dbconnect();
        string sq = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            sq = "select parametername as Parameter,code as Code,minimumvalue as [Min Value],maximumvalue as [Max Value] from parameterdb order by parametername asc";
            DataSet ds = dbc.fillfn(sq);
            GridView1.DataSource = ds.Tables["t1"];
            GridView1.DataBind();
        }


        protected void lkbt_delete_Click(object sender, EventArgs e)
        {
            LinkButton lb = (LinkButton)sender;
            TableCell tc = (TableCell)lb.Parent;
            GridViewRow gr = (GridViewRow)tc.Parent;

            string code = gr.Cells[2].Text;
            sq = "delete from parameterdb where code='" + code + "'";
            dbc.execQuery(sq);
            sq = "select parametername as Parameter,code as Code,minimumvalue as [Min Value],maximumvalue as [Max Value] from parameterdb order by parametername asc";
            DataSet ds = dbc.fillfn(sq);
            GridView1.DataSource = ds.Tables["t1"];
            GridView1.DataBind();
        }

        protected void bt_save_Click(object sender, EventArgs e)
        {
            sq = "insert into parameterdb values('" + txt_paraname.Text.ToUpper() + "','" + txt_code.Text + "'," + txt_min.Text + ",'" + txt_max.Text + "')";
            dbc.execQuery(sq);
            GridView1.DataBind();
            sq = "select parametername as Parameter,code as Code,minimumvalue as [Min Value],maximumvalue as [Max Value] from parameterdb order by parametername asc";
            DataSet ds = dbc.fillfn(sq);
            GridView1.DataSource = ds.Tables["t1"];
            GridView1.DataBind();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
        }

        protected void txt_paraname_TextChanged(object sender, EventArgs e)
        {

        }

        protected void bt_back_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin.aspx");
        }

        
    }
}