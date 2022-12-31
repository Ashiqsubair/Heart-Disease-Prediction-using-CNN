using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace Heart_Disease_Prediction_Portal_Final
{
    public class dbconnect
    {
        SqlConnection cn;
        SqlDataReader rd;
        SqlCommand cmd;
        SqlDataAdapter ad;
        DataSet ds;

        public dbconnect()
        {
            cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\fmnc project 2021 - Copy\fmnc project\Heart Disease Prediction Portal Final\Heart Disease Prediction Portal Final\App_Data\heart disease.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True;MultipleActiveResultsets=True");
            cn.Open();
        }
        public void execQuery(string sq)
        {
            cmd= new SqlCommand(sq,cn);
            cmd.ExecuteNonQuery();
        }
        public SqlDataReader readfn(string sq)
        {
            cmd= new SqlCommand(sq,cn);
            rd= cmd.ExecuteReader();
            return (rd);
        }
        public DataSet fillfn(string sq)
        {
            DataSet ds = new DataSet();
            ad = new SqlDataAdapter(sq,cn);
            ad.Fill(ds, "t1");
            return (ds);
        }


        public int scalrFn(string sq)
        {

            cmd = new SqlCommand(sq, cn);
            int p = 0;

            try
            {
                p = Convert.ToInt16(cmd.ExecuteScalar());

            }
            catch (Exception ex)
            {

                p = 0;
            }

            return (p);
        }

    }
}