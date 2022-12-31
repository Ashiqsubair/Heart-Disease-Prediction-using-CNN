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
    public partial class userconsult : System.Web.UI.Page
    {
        dbconnect dbc = new dbconnect();
        string sq = "";
        SqlDataReader rd;
        DataTable dt=new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_email.Text = Session["uid"].ToString();
            lbl_date.Text = DateTime.Now.ToShortDateString();
            lbl_usrname.Text =Session["uid"].ToString();
            sq= "select firstname from publicdb where email='"+lbl_usrname.Text+"'";
          rd=  dbc.readfn(sq);
            if (rd.HasRows==true)
                {
                    rd.Read();
                   lbl_usrname.Text = rd["firstname"].ToString();
                }
            rd.Close();

            sq = "select max(emrno) from emrdata";
            int p= dbc.scalrFn(sq);
            p++;
            lbl_emr.Text = p.ToString();
        }

        protected void bt_add_Click(object sender, EventArgs e)
        {

            sq = "select * from clinicalrecord where  emrno =" + lbl_emr.Text + " and parameter='" + dd_parametr.Text + "'";
            rd = dbc.readfn(sq);
            if (rd.HasRows == false)
            {
              string   sq1 = "insert into clinicalrecord values(" + lbl_emr.Text + ",'" + dd_parametr.Text + "','" + lbl_value.Text + "'," + txt_maxval.Text + ")";
                dbc.execQuery(sq1);

            }


            sq = "select * from clinicalrecord where emrno="+lbl_emr.Text ;
            DataSet ds = dbc.fillfn(sq);
            GridView1.DataSource = ds.Tables["t1"];
            GridView1.DataBind();

           // bt_submit(sender, e);
        }

        protected void bt_submit_Click(object sender, EventArgs e)
        {
            sq="insert into emrdata values("+lbl_emr.Text+",'"+lbl_usrname.Text+"','"+lbl_email.Text+"','"+dd_doctor.SelectedItem.ToString()+"',"+lbl_date.Text+",'"+dd_speciality.Text+"','"+txt_symptoms.Text+"','"+txt_descri.Text+"','n')";
            dbc.execQuery(sq);
            Response.Write("<html><script>alert('Submitted')</script></html>");
            //Response.Redirect("userhome.aspx");

        }

        protected void dd_parametr_SelectedIndexChanged(object sender, EventArgs e)
        {

            sq = "select * from parameterdb where parametername='" + dd_parametr.Text + "'";
            rd = dbc.readfn(sq);
            if (rd.HasRows == true)
            {
                rd.Read();
                lbl_value.Text = rd["minimumvalue"].ToString() + "-" + rd["maximumvalue"].ToString();

            }
            rd.Close();

        }

        protected void btn_logout_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
            Session.Clear();
        }

        protected void bt_back_Click(object sender, EventArgs e)
        {
            Response.Redirect("userhome.aspx");
        }
    }
}