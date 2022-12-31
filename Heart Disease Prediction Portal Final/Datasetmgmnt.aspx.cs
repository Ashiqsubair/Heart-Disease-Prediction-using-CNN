using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace Heart_Disease_Prediction_Portal_Final
{
    public partial class Datasetmgmnt : System.Web.UI.Page
    {
        string sq = "";
        dbconnect dbc = new dbconnect();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_upload_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath(".") + "\\Dataset\\" + FileUpload1.FileName);
            sq = "drop table datatb";
            try
            {

                dbc.execQuery(sq);
            }
            catch (Exception ex)
            { 
            }
            StreamReader sr = new StreamReader(Server.MapPath(".") + "\\Dataset\\" + FileUpload1.FileName);
            int i = 0;
            string line = "";
            line = sr.ReadLine();
            DataTable dt = new DataTable();
            string[] words = line.Split(',');
            sq = "create table datatb (";
            string part2 = "";
            string fs1 = "Slno numeric(10) PRIMARY KEY,";
            dt.Columns.Add("SlNo");
            foreach (string word in words)
            {
                string fs = "";

                fs = "[" + word + "]" + " nvarchar(20)";
                if (part2 == "")
                {
                    part2 = fs;

                }
                else
                {
                    part2 = part2 + ", " + fs + "";

                }

                dt.Columns.Add(word);
                i++;
            }
            txt_recordno.Text = i.ToString();
            txt_attributeno.Text = dt.Columns.Count.ToString();

            sq = sq + fs1 + " " + part2 + ")";

            try
            {

                dbc.execQuery(sq);
            }
            catch (Exception ex)
            {
            }
            sq = "delete from [datatb]";
            dbc.execQuery(sq);
            int k = 0;
            int j = 0;
            while ((line = sr.ReadLine()) != null)
            {
                string[] recordparts = line.Split(',');
                DataRow dr = dt.NewRow();

                int fc = 1;
                sq = "insert into datatb values(" + j.ToString() + ",";
                part2 = "";
                foreach (string data in recordparts)
                {
                    dr[0] = j.ToString();
                    dr[fc] = data;

                    if (part2 == "")
                    {
                        part2 = "'" + data + "'";
                    }
                    else
                    {

                        part2 = part2 + " ,'" + data + "'";
                    }
                    fc++;
                }
                sq = sq + part2 + ")";
                try
                {
                    dbc.execQuery(sq);
                }
                catch (Exception ex)
                {

                }
                j++;
                dt.Rows.Add(dr); k++;
            }
            
            sr.Close();
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void bt_save_Click(object sender, EventArgs e)
        {
         
            sq = "insert into datasettb values ('" + txt_filename.Text + "','" + txt_datasetds.Text + "'," + txt_recordno.Text + "," + txt_attributeno.Text + ")";
            dbc.execQuery(sq);
            Response.Write("<html><script>alert('saved!')</script></html>");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

      

        protected void GridView1_PageIndexChanging1(object sender, GridViewPageEventArgs e)
        {
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
GridView1.PageIndex = e.NewPageIndex;
GridView1.DataBind();
 
        }

        protected void btn_logout_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void bt_back_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin.aspx");
        }
    }
}