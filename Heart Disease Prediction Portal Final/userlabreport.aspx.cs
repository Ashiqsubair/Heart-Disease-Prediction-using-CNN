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
    public partial class userclinic : System.Web.UI.Page
    {
        string sq = "";
        dbconnect dbc = new dbconnect();
        SqlDataReader rd;
        DataTable dt= new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_mail.Text = Session["uid"].ToString();
            lbl_date.Text = DateTime.Now.ToShortDateString();
            lbl_name.Text =Session["uid"].ToString();
            sq= "select firstname from publicdb where email='"+lbl_mail.Text+"'";
            rd=  dbc.readfn(sq);
            if (rd.HasRows==true)
                {
                    rd.Read();
                   lbl_name.Text = rd["firstname"].ToString();
                }
            rd.Close();
            sq = "Select max(emrno) from clinicalrecord ";
            int p = dbc.scalrFn(sq);
            p++;
          
            lbl_emr.Text = p.ToString();
        }

        //protected void bt_add_Click(object sender, EventArgs e)
        //{



        //    string[] parts = lbl_norvalue.Text.Split('-');

        //    int a = Convert.ToInt16(txt_value.Text);

        //    if (lbl_norvalue.Text == "")
        //    {


        //        sq = "select * from clinicalrecord where  emrno =" + lbl_emr.Text + " and parameter='" + DropDownList1.Text + "'";
        //        rd = dbc.readfn(sq);
        //        if (rd.HasRows == false)
        //        {
        //            string sq1 = "insert into clinicalrecord values(" + lbl_emr.Text + ",'" + DropDownList1.Text + "','" + lbl_norvalue.Text + "'," + txt_value.Text + ")";
        //            dbc.execQuery(sq1);

        //        }


        //    }

        //    else if ((a >= Convert.ToInt16(parts[0]) && a <= Convert.ToInt16(parts[0])) )
        //    {



        //        sq = "select * from clinicalrecord where  emrno =" + lbl_emr.Text + " and parameter='" + DropDownList1.Text + "'";
        //        rd = dbc.readfn(sq);
        //        if (rd.HasRows == false)
        //        {
        //            string sq1 = "insert into clinicalrecord values(" + lbl_emr.Text + ",'" + DropDownList1.Text + "','" + lbl_norvalue.Text + "'," + txt_value.Text + ")";
        //            dbc.execQuery(sq1);

        //        }
        //    }

        //    sq = "select * from clinicalrecord where emrno="+lbl_emr.Text ;
        //    DataSet ds = dbc.fillfn(sq);
        //    GridView1.DataSource = ds.Tables["t1"];
        //    GridView1.DataBind();

         
         
         
        // }

     

        protected void Button2_Click(object sender, EventArgs e)
        {
            sq = "Select max(slno) from clinicalrecord ";
            int a = dbc.scalrFn(sq);
            a++;


            sq = "select * from clinicalrecord where emrno=" + lbl_emr.Text;
            rd= dbc.readfn(sq);
            if( rd.HasRows==true)
            {



                return;
            }
            sq = "insert into clinicalrecord values("+a.ToString()+",'" + lbl_emr.Text + "',";
            string part = "";
            int I = 1;
            foreach (GridViewRow row in GridView1.Rows)
            {

                //   string pname=  row.Rows[i].Cells[1].Text;
                TextBox t = (TextBox)row.Cells[1].FindControl("txt_para_value");
                string pvalue = t.Text;
                if (part == "")
                {

                    part = pvalue;
                }
                else
                {

                    part = part + "," + pvalue;
                }
            }

            sq = sq + part + ",'"+lbl_mail.Text +"')";
            dbc.execQuery(sq);
            Response.Write("<html><script>alert('Submitted for Prediction!!')</script></html>");
        }

      
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
        {
 //sq = "select * from parameterdb where parametername='" + DropDownList1.Text + "'";
 //           rd = dbc.readfn(sq);
 //           if (rd.HasRows == true)
 //           {
 //               rd.Read();
 //               lbl_norvalue.Text = rd["minimumvalue"].ToString() + "-" + rd["maximumvalue"].ToString();

 //           }
 //           rd.Close();
        }

        protected void bt_back_Click(object sender, EventArgs e)
        {
            Response.Redirect("userhome.aspx");
        }

        protected void bt_add_Click(object sender, EventArgs e)
        {

        }

        protected void btn_logout_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
            Session.Clear();
        }
    }
}