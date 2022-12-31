<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="prediction.aspx.cs" Inherits="Heart_Disease_Prediction_Portal_Final.prediction" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/javascript">
    function preventBack() { window.history.forward(); }
    setTimeout("preventBack()", 0);
    window.onunload = function () { null };
    </script>
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style4
        {
        }
        .style5
        {
        width: 28px;
    }
        .style6
        {
            width: 43px;
        }
        .style7
        {
            width: 119px;
        }
        .style8
        {
            width: 43px;
            height: 30px;
        }
        .style9
        {
            width: 28px;
            height: 30px;
        }
        .style10
        {
            width: 169px;
            height: 30px;
        }
        .style11
        {
            width: 119px;
            height: 30px;
        }
        .style12
        {
            height: 30px;
        }
    .style13
    {
        width: 43px;
        height: 33px;
    }
    .style14
    {
        width: 28px;
        height: 33px;
    }
    .style15
    {
        width: 169px;
        height: 33px;
    }
    .style16
    {
        width: 119px;
        height: 33px;
    }
    .style17
    {
        height: 33px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="style3">
        <tr>
            <td class="style6">
                <asp:Button ID="bt_back" runat="server" onclick="bt_back_Click" Text="Back" 
                    BackColor="#CCCCCC" />
            </td>
            <td class="style5">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">logout</asp:LinkButton>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
            </td>
            <td class="style9">
            </td>
            <td class="style10">
                <asp:Button ID="bt_loaddata" runat="server" onclick="bt_loaddata_Click" 
                    Text="1.Load Training Data" BackColor="#CCCCCC" Width="217px" />
            </td>
            <td class="style11">
                <asp:Button ID="bt_convtoarff" runat="server" onclick="bt_convtoarff_Click" 
                    Text="3.Convert to arff" BackColor="#66CCFF" />
            </td>
            <td class="style12">
                <asp:Button ID="bt_prediction" runat="server" style="margin-left: 0px" 
                    Text="4.Prediction-KNN" onclick="bt_prediction_Click" 
                    BackColor="#CCCCCC" />
                <asp:Button ID="bt_predictionCNN" runat="server" style="margin-left: 0px" 
                    Text="5.Prediction-CNN" onclick="bt_predictionCNN_Click" 
                    BackColor="#CCCCCC" />
            </td>
            <td class="style12">
            </td>
            <td class="style12">
            </td>
            <td class="style12">
            </td>
            <td class="style12">
            </td>
            <td class="style12">
            </td>
        </tr>
        <tr>
            <td class="style13">
                </td>
            <td class="style14">
                </td>
            <td class="style15">
                <asp:Button ID="bt_testdata" runat="server" onclick="bt_testdata_Click" 
                    Text="2.Load Test Data" Width="215px" BackColor="#CCCCCC" />
            </td>
            <td class="style16">
                </td>
            <td class="style17">
                </td>
            <td class="style17">
                </td>
            <td class="style17">
                </td>
            <td class="style17">
                </td>
            <td class="style17">
                </td>
            <td class="style17">
                </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style4" rowspan="7" colspan="2">
                <asp:GridView ID="grid_loaddata" runat="server" Caption="Test data" 
                    AllowPaging="True" BackColor="#99CCFF" ForeColor="Black">
                </asp:GridView>
                <asp:GridView ID="grid_testdata" runat="server" Caption="Training data" 
                    AllowPaging="True" BackColor="#99CCFF" ForeColor="Black">
                </asp:GridView>
            </td>
            <td rowspan="6">
                <asp:GridView ID="grid_predict" runat="server" Caption="Predicted Result" 
                    BackColor="Silver" ForeColor="Black" Height="256px" Width="255px" 
                    onselectedindexchanged="grid_predict_SelectedIndexChanged" 
                    AutoGenerateColumns="False" DataKeyNames="loopvt" DataSourceID="">
                    <Columns>
                        <asp:BoundField DataField="loopvt" HeaderText="loopvt" ReadOnly="True" 
                            SortExpression="loopvt" />
                        <asp:BoundField DataField="a_value" HeaderText="a_value" 
                            SortExpression="a_value" />
                        <asp:BoundField DataField="p_value" HeaderText="p_value" 
                            SortExpression="p_value" />
                    </Columns>
                </asp:GridView>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
