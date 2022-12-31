using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using weka.classifiers.functions;
using weka.classifiers.evaluation;
using weka.core;


namespace Heart_Disease_Prediction_Portal_Final
{
    public partial class prediction : System.Web.UI.Page
    {
        dbconnect dbc=new dbconnect();
        string sq="";
        SqlDataReader rd;
        SqlDataAdapter ad;


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bt_loaddata_Click(object sender, EventArgs e)
        {
            sq="select * from datatb";
            DataSet ds = dbc.fillfn(sq);
            grid_testdata.DataSource = ds.Tables["t1"];
            grid_testdata.DataBind();


        }

        protected void bt__Click(object sender, EventArgs e)
        {

        }

        protected void bt_testdata_Click(object sender, EventArgs e)
        {
            
            
            DataTable dt = new DataTable();




            sq = "select * from clinicalrecord ";
            DataSet ds = dbc.fillfn(sq);

                   
            grid_loaddata.DataSource = ds.Tables[0];
            grid_loaddata.DataBind();

            StreamWriter sw = new StreamWriter(@"D:\fmnc project 2021 - Copy\fmnc project\Heart Disease Prediction Portal Final\Heart Disease Prediction Portal Final\Dataset\testset.csv", false);

            string line = "";
            sw.WriteLine("age,sex,cp,trestbps,chol,fbs,restecg,thalach,exang,oldpeak,slope,ca,thal,target");
       
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {

                 line="";
                for ( int j=0;j< ds.Tables[0].Columns.Count -1;j++)
                {
                    if (j < 2) continue;
                    if (line == "")
                    {
                        line = ds.Tables[0].Rows[i].ItemArray[j].ToString();
                    

                    }
                    else
                    {
                        line = line + "," + ds.Tables[0].Rows[i].ItemArray[j].ToString();
                    }
               }
                sw.WriteLine(line+",N");

            }
            sw.WriteLine(line + ",Y");
            sw.Close();

        }

        protected void bt_convtoarff_Click(object sender, EventArgs e)
        {

            try
            {

                string fname = @"D:\fmnc project 2021 - Copy\fmnc project\Heart Disease Prediction Portal Final\Heart Disease Prediction Portal Final\Dataset\heart.csv";
                File.Delete(@"D:\fmnc project 2021 - Copy\training.arff");
                weka.core.converters.CSVLoader loader = new weka.core.converters.CSVLoader();
                loader.setSource(new java.io.File(fname));
                weka.core.Instances inst2 = loader.getDataSet();
                weka.core.converters.ArffSaver saver = new weka.core.converters.ArffSaver();
                saver.setInstances(inst2);
                saver.setFile(new java.io.File(@"D:\fmnc project 2021 - Copy\training.arff"));
                saver.writeBatch();
                Response.Write("<html><script>alert('File Converted..');</script></html>");
            }
            catch (Exception ex)
            {
                Response.Write("<html><script>alert('" + ex.Message.ToString() + "');</script></html>");
            }




            try
            {

                string fname = @"D:\fmnc project 2021 - Copy\fmnc project\Heart Disease Prediction Portal Final\Heart Disease Prediction Portal Final\Dataset\testset.csv";
                File.Delete(@"D:\fmnc project 2021 - Copy\testset.arff");
                weka.core.converters.CSVLoader loader = new weka.core.converters.CSVLoader();
                loader.setSource(new java.io.File(fname));
                weka.core.Instances inst2 = loader.getDataSet();
                weka.core.converters.ArffSaver saver = new weka.core.converters.ArffSaver();
                saver.setInstances(inst2);
                saver.setFile(new java.io.File(@"D:\fmnc project 2021 - Copy\testset.arff"));
                saver.writeBatch();
                Response.Write("<html><script>alert('File Converted..');</script></html>");
            }
            catch (Exception ex)
            {
                Response.Write("<html><script>alert('" + ex.Message.ToString() + "');</script></html>");
            }
        }

        protected void bt_prediction_Click(object sender, EventArgs e)
        {
            DateTime dt1 = DateTime.Now;

        sq = "delete from prediction_result";
        dbc.execQuery(sq);
        weka.core.Instances data = new weka.core.Instances(new java.io.FileReader(@"D:\fmnc project 2021 - Copy\training.arff"));
        data.setClassIndex(data.numAttributes() - 1);
        weka.core.Instances data_test = new weka.core.Instances(new java.io.FileReader(@"D:\fmnc project 2021 - Copy\testset.arff"));
        data_test.setClassIndex(data_test.numAttributes() - 1);
        int ic = data_test.numInstances();
        weka.classifiers.lazy.IBk ibk = new weka.classifiers.lazy.IBk();
        ibk.buildClassifier(data);
        sq = "delete from knn_result";
        dbc.execQuery(sq);
        
        weka.classifiers.Evaluation eval = new weka.classifiers.Evaluation(data);
        weka.classifiers.Classifier clsCopy = weka.classifiers.Classifier.makeCopy(ibk);
        clsCopy.buildClassifier(data);
        java.util.Random r = new java.util.Random(1);
        eval.crossValidateModel(ibk, data_test, 2, r);
        eval.evaluateModel(clsCopy, data_test);
        int i = 0;
        foreach (object o in eval.predictions().toArray())
        {
            if (i >= ic) break;
            NominalPrediction prediction = o as NominalPrediction;
            double predicted = prediction.predicted();
            //   int nominal = rnd.Next(0, 5);
            int p = (int)predicted;

            if (prediction != null)
            {
                int loopvt = i;
                string a = data.classAttribute().value((int)data.instance(i).classValue()).ToString();

                sq = "insert into knn_result values(" + loopvt + ",'" + a.ToString() + "','" + predicted.ToString() + "')";
                dbc.execQuery(sq);
                i++;
            }
        }
        Session["cn_p"] = eval.precision(0);
        Session["cn_f"] = eval.fMeasure(0);
        Session["cn_r"] = eval.recall(0);

        DateTime dt2 = DateTime.Now;
        TimeSpan t = dt2 - dt1;
        int sec1 = t.Milliseconds;
        sq = "select * from knn_result";
      DataSet   ds = new DataSet();
        ds = dbc.fillfn(sq);
        grid_predict.DataSource = ds.Tables["t1"];
        grid_predict.DataBind();
        try
        {
            sq = "insert into prediction_result values('knn'," + Session["cn_p"].ToString() + "," + Session["cn_f"].ToString() + "," + Session["cn_r"].ToString() + ","+sec1.ToString()+")";
            dbc.execQuery(sq);
          
        }
        catch (Exception ex)
        {

            Response.Write("<html><script>alert('Graph can not be generated due to Insufficient Data');</script></html>");

        }
   


        }

        protected void bt_predictionCNN_Click(object sender, EventArgs e)
        {
            cnn();
        }


        void cnn()
        {
            DateTime dt1 = DateTime.Now;

            int i = 0;
            sq = "select distinct target from datatb";
            DataSet ds = new DataSet();

            ds = dbc.fillfn(sq);
            int ct = ds.Tables["t1"].Rows.Count;

            string[] dis = new string[ct];
            for (i = 0; i < ds.Tables["t1"].Rows.Count; i++)
            {
                dis[i] = ds.Tables["t1"].Rows[i].ItemArray[0].ToString();
            }
            weka.core.Instances data = new weka.core.Instances(new java.io.FileReader(@"D:\fmnc project 2021 - Copy\training.arff"));
            data.setClassIndex(data.numAttributes() - 1);
            weka.core.Instances data_test = new weka.core.Instances(new java.io.FileReader(@"D:\fmnc project 2021 - Copy\testset.arff"));
            data_test.setClassIndex(data_test.numAttributes() - 1);
            int ic = data_test.numInstances();
            MultilayerPerceptron cnn = new weka.classifiers.functions.MultilayerPerceptron();
            cnn.setOptions(Utils.splitOptions("-L 0.3 -M 0.2 -N 500 -V 0 -S 0 -E 20 -H 4"));


            cnn.buildClassifier(data);
            // meta-classifier
            // train and make predictions
            sq = "delete from knn_result";
            dbc.execQuery(sq);

            weka.classifiers.Evaluation eval = new weka.classifiers.Evaluation(data);
            weka.classifiers.Classifier clsCopy = weka.classifiers.Classifier.makeCopy(cnn);
            clsCopy.buildClassifier(data);
            java.util.Random r = new java.util.Random(1);
            eval.crossValidateModel(cnn, data_test,2, r);
            eval.evaluateModel(clsCopy, data_test);
             i = 0;
            foreach (object o in eval.predictions().toArray())
            {
                if (i >= ic) break;
                NominalPrediction prediction = o as NominalPrediction;
                double predicted = prediction.predicted();
                //   int nominal = rnd.Next(0, 5);
                int p = (int)predicted;

                if (prediction != null)
                {
                    int loopvt = i;
                    string a = data.classAttribute().value((int)data.instance(i).classValue()).ToString();

                    sq = "insert into knn_result values(" + loopvt + ",'" + a.ToString() + "','" + predicted.ToString() + "')";
                    dbc.execQuery(sq);
                    i++;
                }
            }
            Session["kn_p"] = eval.precision(0);
            Session["kn_f"] = eval.fMeasure(0); //*1.4
            Session["kn_r"] = eval.recall(0);

            DateTime dt2 = DateTime.Now;

            TimeSpan t = dt2 - dt1;
            int sec1 = t.Milliseconds;
            sq = "select * from knn_result";
             ds = new DataSet();
            ds = dbc.fillfn(sq);
            grid_predict.DataSource = ds.Tables["t1"];
            grid_predict.DataBind();
            try
            {
                sq = "insert into prediction_result values('cnn'," + Session["kn_p"].ToString() + "," + Session["kn_f"].ToString() + "," + Session["kn_r"].ToString() + ","+sec1.ToString() +")";
                dbc.execQuery(sq);

            }
            catch (Exception ex)
            {

                Response.Write("<html><script>alert('Graph can not be generated due to Insufficient Data');</script></html>");

            }
   

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

        protected void grid_predict_SelectedIndexChanged(object sender, EventArgs e)
        {
         
        }
    }
}