using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using weka.classifiers.functions;
using weka.classifiers.evaluation;
using weka.core;

namespace Heart_Disease_Prediction_Portal_Final
{
    public partial class consulting : System.Web.UI.Page
    {
        SqlDataReader rd;
        string sq="";
        dbconnect dbc = new dbconnect();
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_docmail.Text = Session["did"].ToString();
            lbl_docname.Text = Session["dname"].ToString();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void lkbt_view_Click(object sender, EventArgs e)
        {

        

        }

        protected void bt_clicrec_Click(object sender, EventArgs e)
        {
            Response.Redirect("view_clinrec.aspx");
        }

     

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void btn_logout_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
            Session.Clear();
        }

        protected void bt_cnnpredict(object sender, EventArgs e)
        {}

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            


        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            LinkButton lb = (LinkButton)sender;
            TableCell tc = (TableCell)lb.Parent;
            GridViewRow gr = (GridViewRow)tc.Parent;

            string emr = gr.Cells[0].Text;
            string email = "";

            Session["emr"] = emr;
            sq = "select * from emrdata where emrno=" + emr;
            rd = dbc.readfn(sq);
            if (rd.HasRows == true)
            {

                rd.Read();
                lbl_pname.Text = rd["name"].ToString();
                email = rd["email"].ToString();
                lbl_description.Text = rd["description"].ToString();
                lbl_symptom.Text = rd["symptom"].ToString();
            }
            rd.Close();
            sq = "select * from publicdb where email='" + email + "'";
            rd = dbc.readfn(sq);
            if (rd.HasRows == true)
            {
                rd.Read();
                lbl_mobile.Text = rd["mobileno"].ToString();

            }
            rd.Close();


        }

        protected void bt_back_Click(object sender, EventArgs e)
        {
            Response.Redirect("Doctorhome.aspx");
        }
        //void cnn()
        //{

        //    int i = 0;
        //    sq = "select distinct class from granule";
        //    DataSet ds = new DataSet();

        //    ds = dbc.fillfn(sq);
        //    int ct = ds.Tables["t1"].Rows.Count;

        //    string[] dis = new string[ct];
        //    for (i = 0; i < ds.Tables["t1"].Rows.Count; i++)
        //    {
        //        dis[i] = ds.Tables["t1"].Rows[i].ItemArray[0].ToString();
        //    }
        //    weka.core.Instances data = new weka.core.Instances(new java.io.FileReader(@"E:\fmnc project 2021\training.arff"));
        //    data.setClassIndex(data.numAttributes() - 1);
        //    weka.core.Instances data_test = new weka.core.Instances(new java.io.FileReader(@"E:\fmnc project 2021\testset.arff"));
        //    data_test.setClassIndex(data_test.numAttributes() - 1);
        //    int ic = data.numInstances();
        //    MultilayerPerceptron cnn = new weka.classifiers.functions.MultilayerPerceptron();
        //    cnn.setOptions(Utils.splitOptions("-L 0.3 -M 0.2 -N 500 -V 0 -S 0 -E 20 -H 4"));


        //    cnn.buildClassifier(data);
        //    // meta-classifier
        //    // train and make predictions
        //    sq = "delete from knn_result";
        //    dbc.execQuery(sq);

        //    weka.classifiers.Evaluation eval = new weka.classifiers.Evaluation(data);
        //    weka.classifiers.Classifier clsCopy = weka.classifiers.Classifier.makeCopy(cnn);
        //    clsCopy.buildClassifier(data);
        //    java.util.Random r = new java.util.Random(1);
        //    eval.crossValidateModel(cnn, data_test, 2, r);
        //    eval.evaluateModel(clsCopy, data_test);
        //     i = 0;
        //    foreach (object o in eval.predictions().toArray())
        //    {
        //        if (i >= ic) break;
        //        NominalPrediction prediction = o as NominalPrediction;
        //        double predicted = prediction.predicted();
        //        //   int nominal = rnd.Next(0, 5);
        //        int p = (int)predicted;

        //        if (prediction != null)
        //        {
        //            int loopvt = i;
        //            string a = data.classAttribute().value((int)data.instance(i).classValue()).ToString();

        //            sq = "insert into knn_result values(" + loopvt + ",'" + a.ToString() + "','" + predicted.ToString() + "')";
        //            dbc.execQuery(sq);
        //            i++;
        //        }
        //    }
        //    Session["kn_p"] = eval.precision(0);
        //    Session["kn_f"] = eval.fMeasure(0);
        //    Session["kn_r"] = eval.recall(0);
        //    sq = "select * from knn_result";
        //     ds = new DataSet();
        //    ds = dbc.fillfn(sq);
        //    // GridView3.DataSource = ds.Tables["t1"];
        //    // GridView3.DataBind();
        //    try
        //    {
        //        sq = "insert into prediction_result values('knn'," + Session["kn_p"].ToString() + "," + Session["kn_f"].ToString() + "," + Session["kn_r"].ToString() + ",0)";
        //        dbc.execQuery(sq);

        //    }
        //    catch (Exception ex)
        //    {

        //        Response.Write("<html><script>alert('Graph can not be generated due to Insufficient Data');</script></html>");

        //    }
   

        }

        }

        