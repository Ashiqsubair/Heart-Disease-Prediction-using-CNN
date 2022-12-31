<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Doctorhome.aspx.cs" Inherits="Heart_Disease_Prediction_Portal_Final.Doctorhome" %>
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
            height: 21px;
        }
        .style5
        {
            height: 21px;
            width: 1006px;
        }
        .style6
        {
            width: 1006px;
        }
        .style7
        {
            height: 21px;
            width: 298px;
        }
        .style8
        {
            width: 298px;
        }
        .style11
        {
            height: 21px;
            width: 801px;
        }
        .style12
        {
            width: 801px;
        }
        .style13
        {
            height: 21px;
            width: 565px;
        }
        .style14
        {
            width: 565px;
        }
        .style15
        {
            height: 21px;
            width: 557px;
        }
        .style16
        {
            width: 557px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="style3">
        <tr>
            <td class="style13">
            </td>
            <td class="style4">
            </td>
            <td class="style4">
            </td>
            <td class="style11">
                &nbsp;</td>
            <td class="style4">
            </td>
            <td class="style15">
            </td>
            <td class="style4">
            </td>
            <td class="style5">
            </td>
            <td class="style7">
                <asp:Label ID="lbl_docname" runat="server" ForeColor="Black"></asp:Label>
            </td>
            <td class="style4">
                <asp:LinkButton ID="btn_logout" runat="server" onclick="btn_logout_Click">logout</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td class="style13">
            </td>
            <td class="style4">
            </td>
            <td class="style4">
            </td>
            <td class="style11">
            </td>
            <td class="style4">
            </td>
            <td class="style15">
            </td>
            <td class="style4">
            </td>
            <td class="style5">
                &nbsp;</td>
            <td class="style7">
                <asp:Label ID="lbl_docmail" runat="server" ForeColor="Black"></asp:Label>
            </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14">
                <asp:Button ID="btn_labr" runat="server" Text="Lab Report" 
                    onclick="btn_labr_Click" Width="134px" BackColor="#CCCCCC" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style16">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14">
                <asp:Button ID="btn_doubt" runat="server" Text="Doubt view" 
                    onclick="btn_doubt_Click" Width="135px" BackColor="#CCCCCC" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style16">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14">
                <asp:Button ID="btn_pred" runat="server" Text="Prediction view" Width="135px" 
                    onclick="btn_pred_Click" BackColor="#CCCCCC" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style16">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14">
                <asp:Button ID="bt_consulting" runat="server" onclick="bt_consulting_Click" 
                    Text="Consulting" Width="133px" BackColor="#CCCCCC" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style16">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14">
                <asp:Button ID="btn_resulta" runat="server" Text="Result Analysis" 
                    Width="133px" onclick="btn_resulta_Click" BackColor="#CCCCCC" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style16">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14">
                <asp:Button ID="bt_feedback" runat="server" Text="Feedback" Width="131px" 
                    onclick="bt_feedback_Click" BackColor="#CCCCCC" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style16">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style16">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style16">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
