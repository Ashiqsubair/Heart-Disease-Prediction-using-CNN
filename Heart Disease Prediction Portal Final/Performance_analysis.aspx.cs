using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.DataVisualization.Charting;

namespace Heart_Disease_Prediction_Portal_Final
{
    public partial class Performance_analysis : System.Web.UI.Page
    {
        dbconnect dbc = new dbconnect();
        string sq = "";
        SqlDataReader rd;

        protected void Page_Load(object sender, EventArgs e)
        {
           // sq = "select time from prediction_result";
           //rd= dbc.readfn(sq);

           //if (rd.HasRows == true)
           //{
           //    rd.Read();
           //    lbl_time.Text = rd["time"].ToString();
           //}
           //rd.Close();

           
           // sq = "select preci from prediction_result";
           // rd = dbc.readfn(sq);

           // if (rd.HasRows == true)
           // {
           //     rd.Read();
           //     lbl_precis.Text = rd["preci"].ToString();
           // }
           // rd.Close();
            
           // sq = "select recall from prediction_result";
           // rd = dbc.readfn(sq);

           // if (rd.HasRows == true)
           // {
           //     rd.Read();
           //     lbl_recall.Text = rd["recall"].ToString();
           // }
           // rd.Close();
           // sq = "select accu from prediction_result";
           // rd = dbc.readfn(sq);

           // if (rd.HasRows == true)
           // {
           //     rd.Read();
           //     lbl_accuracy.Text = rd["accu"].ToString();
           // }
           // rd.Close();



        }

        protected void lkbt_time_Click(object sender, EventArgs e)
        {
          DataTable DT = new DataTable();
            DT.Columns.Add("TRIALNO");
            DT.Columns.Add("knn_TIME");
                DT.Columns.Add("cnn_TIME");
            DataRow dr = DT.NewRow();
                sq = "select time,trialno from prediction_result where algo='knn'";//  and trialno="+rd["trialno"].ToString();
                rd = dbc.readfn(sq);
                if (rd.HasRows == true)
                {
                     while( rd.Read())
                     {
                    dr[0] = rd["trialno"].ToString();
                    dr[1] = rd["time"].ToString();

                  
                     }
                }
                rd.Close();
                Chart1.Series["KNN"].ChartType = SeriesChartType.Column;
                Chart1.Series["KNN"].XValueMember = "TRIALNO";
                Chart1.Series["KNN"].YValueMembers = "knn_TIME";
                sq = "select time,trialno from prediction_result where algo='cnn'";//  and trialno="+rd["trialno"].ToString();
            rd = dbc.readfn(sq);
                if (rd.HasRows == true)
                {
                     while( rd.Read())
                     {
                    dr[0] = rd["trialno"].ToString();
                    dr[2] = rd["time"].ToString();

                  
                     }
                }  DT.Rows.Add(dr);
                Chart1.Series["CNN"].ChartType = SeriesChartType.Column;
                Chart1.Series["CNN"].XValueMember = "TRIALNO";
                Chart1.Series["CNN"].YValueMembers = "cnn_TIME";
                Chart1.DataSource = DT;
            rd.Close();
           
            }

        protected void lkbt_preci_Click(object sender, EventArgs e)
        {
            DataTable DT = new DataTable();
            DT.Columns.Add("TRIALNO");
            DT.Columns.Add("knn_PRECISION");
            DT.Columns.Add("cnn_PRECISION");
            DataRow dr = DT.NewRow();
            sq = "select preci,trialno from prediction_result where algo='knn'";//  and trialno="+rd["trialno"].ToString();
            rd = dbc.readfn(sq);
            if (rd.HasRows == true)
            {
                while (rd.Read())
                {
                    dr[0] = rd["trialno"].ToString();
                    dr[1] = rd["preci"].ToString();


                }
            }
            rd.Close();
            Chart1.Series["KNN"].ChartType = SeriesChartType.Column;
            Chart1.Series["KNN"].XValueMember = "TRIALNO";
            Chart1.Series["KNN"].YValueMembers = "knn_PRECISION";
            sq = "select preci,trialno from prediction_result where algo='cnn'";//  and trialno="+rd["trialno"].ToString();
            rd = dbc.readfn(sq);
            if (rd.HasRows == true)
            {
                while (rd.Read())
                {
                    dr[0] = rd["trialno"].ToString();
                    dr[2] = rd["preci"].ToString();


                }
            } DT.Rows.Add(dr);
            Chart1.Series["CNN"].ChartType = SeriesChartType.Column;
            Chart1.Series["CNN"].XValueMember = "TRIALNO";
            Chart1.Series["CNN"].YValueMembers = "cnn_PRECISION";
            Chart1.DataSource = DT;
            rd.Close();
        }

        protected void lkbt_recall_Click(object sender, EventArgs e)
        {
            DataTable DT = new DataTable();
            DT.Columns.Add("TRIALNO");
            DT.Columns.Add("knn_RECALL");
            DT.Columns.Add("cnn_RECALL");
            DataRow dr = DT.NewRow();
            sq = "select recall,trialno from prediction_result where algo='knn'";//  and trialno="+rd["trialno"].ToString();
            rd = dbc.readfn(sq);
            if (rd.HasRows == true)
            {
                while (rd.Read())
                {
                    dr[0] = rd["trialno"].ToString();
                    dr[1] = rd["recall"].ToString();


                }
            }
            rd.Close();
            Chart1.Series["KNN"].ChartType = SeriesChartType.Column;
            Chart1.Series["KNN"].XValueMember = "TRIALNO";
            Chart1.Series["KNN"].YValueMembers = "knn_RECALL";
            sq = "select recall,trialno from prediction_result where algo='cnn'";//  and trialno="+rd["trialno"].ToString();
            rd = dbc.readfn(sq);
            if (rd.HasRows == true)
            {
                while (rd.Read())
                {
                    dr[0] = rd["trialno"].ToString();
                    dr[2] = rd["recall"].ToString();


                }
            } DT.Rows.Add(dr);
            Chart1.Series["CNN"].ChartType = SeriesChartType.Column;
            Chart1.Series["CNN"].XValueMember = "TRIALNO";
            Chart1.Series["CNN"].YValueMembers = "cnn_RECALL";
            Chart1.DataSource = DT;
            rd.Close();
        }

        protected void lkbt_accuracy_Click(object sender, EventArgs e)
        {
            DataTable DT = new DataTable();
            DT.Columns.Add("TRIALNO");
            DT.Columns.Add("knn_ACCURACY");
            DT.Columns.Add("cnn_ACCURACY");
            DataRow dr = DT.NewRow();
            sq = "select accu,trialno from prediction_result where algo='knn'";//  and trialno="+rd["trialno"].ToString();
            rd = dbc.readfn(sq);
            if (rd.HasRows == true)
            {
                while (rd.Read())
                {
                    dr[0] = rd["trialno"].ToString();
                    dr[1] = rd["accu"].ToString();


                }
            }
            rd.Close();
            Chart1.Series["KNN"].ChartType = SeriesChartType.Column;
            Chart1.Series["KNN"].XValueMember = "TRIALNO";
            Chart1.Series["KNN"].YValueMembers = "knn_ACCURACY";
            sq = "select accu,trialno from prediction_result where algo='cnn'";//  and trialno="+rd["trialno"].ToString();
            rd = dbc.readfn(sq);
            if (rd.HasRows == true)
            {
                while (rd.Read())
                {
                    dr[0] = rd["trialno"].ToString();
                    dr[2] = rd["accu"].ToString();


                }
            } DT.Rows.Add(dr);
            Chart1.Series["CNN"].ChartType = SeriesChartType.Column;
            Chart1.Series["CNN"].XValueMember = "TRIALNO";
            Chart1.Series["CNN"].YValueMembers = "cnn_ACCURACY";
            Chart1.DataSource = DT;
            rd.Close();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
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