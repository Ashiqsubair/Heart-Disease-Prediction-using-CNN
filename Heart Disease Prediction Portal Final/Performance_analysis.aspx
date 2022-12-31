<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Performance_analysis.aspx.cs" Inherits="Heart_Disease_Prediction_Portal_Final.Performance_analysis" %>
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
            width: 176px;
        }
        .style5
        {
            width: 68px;
        }
        .style6
        {
            width: 237px;
        }
        .style7
        {
            width: 154px;
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
            <td>
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td>
                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">logout</asp:LinkButton>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:LinkButton ID="lkbt_time" runat="server" onclick="lkbt_time_Click">Time Complexity</asp:LinkButton>
            </td>
            <td colspan="4" rowspan="6">
                <asp:Chart ID="Chart1" runat="server">
                    <Series>
                        <asp:Series Legend="Legend1" Name="KNN">
                        </asp:Series>
                        <asp:Series ChartArea="ChartArea1" Legend="Legend1" Name="CNN">
                        </asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </ChartAreas>
                    <Legends>
                        <asp:Legend Name="Legend1">
                        </asp:Legend>
                    </Legends>
                </asp:Chart>
            </td>
            <td>
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:LinkButton ID="lkbt_preci" runat="server" onclick="lkbt_preci_Click">Precision</asp:LinkButton>
            </td>
            <td>
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:LinkButton ID="lkbt_recall" runat="server" onclick="lkbt_recall_Click">Recall</asp:LinkButton>
            </td>
            <td>
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:LinkButton ID="lkbt_accuracy" runat="server" onclick="lkbt_accuracy_Click">Accuracy</asp:LinkButton>
            </td>
            <td>
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
