<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Heart_Disease_Prediction_Portal_Final.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/javascript">
    function preventBack() { window.history.forward(); }
    setTimeout("preventBack()", 0);
    window.onunload = function () { null };
    </script>
    <style type="text/css">
    .style2
    {
        width: 100%;
    }
    .style3
    {
        width: 199px;
    }
        .style4
        {
            width: 526px;
        }
    .style5
    {
        width: 199px;
        height: 38px;
    }
    .style6
    {
        height: 38px;
    }
    .style7
    {
        width: 526px;
        height: 38px;
    }
        .style8
        {
            width: 14px;
        }
        .style9
        {
            height: 38px;
            width: 14px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="style2">
    <tr>
        <td class="style3">
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
        <td class="style8">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3">
            <asp:Button ID="bt_approvedoc" runat="server" Text="Approve Doctors" 
                Width="168px" onclick="bt_approvedoc_Click" BackColor="#CCCCCC" />
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
        <td class="style8">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
        <td>
                <asp:LinkButton ID="btn_logout" runat="server" onclick="btn_logout_Click">logout</asp:LinkButton>
            </td>
    </tr>
    <tr>
        <td class="style3">
            <asp:Button ID="bt_parasetup" runat="server" Text="Parameter Setup" 
                Width="168px" onclick="bt_parasetup_Click" BackColor="#CCCCCC" />
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
        <td class="style8">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3">
            <asp:Button ID="bt_patientreport" runat="server" Text="Patient Report" 
                Width="168px" BackColor="#CCCCCC" onclick="bt_patientreport_Click" />
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
        <td class="style8">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3">
            <asp:Button ID="bt_datasetmgmt" runat="server" Text="Dataset Management" 
                Width="168px" onclick="bt_datasetmgmt_Click" BackColor="#CCCCCC" />
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
        <td class="style8">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3">
            <asp:Button ID="bt_diseasepred" runat="server" Text="Disease Prediction" 
                Width="168px" onclick="bt_diseasepred_Click" BackColor="#CCCCCC" />
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
        <td class="style8">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style5">
            <asp:Button ID="bt_resultanaly" runat="server" Text="Result Analysis" 
                Width="168px" onclick="bt_resultanaly_Click" BackColor="#CCCCCC" />
        </td>
        <td class="style6">
            </td>
        <td class="style6">
            </td>
        <td class="style6">
            </td>
        <td class="style6">
            </td>
        <td class="style6">
            </td>
        <td class="style9">
            </td>
        <td class="style6">
            </td>
        <td class="style7">
            </td>
        <td class="style6">
            </td>
    </tr>
    <tr>
        <td class="style3">
            <asp:Button ID="bt_feedbk" runat="server" Text="Feedback View" Width="168px" 
                onclick="bt_feedbk_Click" BackColor="#CCCCCC" />
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
        <td class="style8">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3">
            <asp:Button ID="bt_perfanaly" runat="server" Text="Performance Analysis" 
                Width="168px" onclick="bt_perfanaly_Click" BackColor="#CCCCCC" />
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
        <td class="style8">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3">
            <asp:Button ID="bt_usermgmt" runat="server" Text="User Management" 
                Width="168px" onclick="bt_usermgmt_Click" BackColor="#CCCCCC" />
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
        <td class="style8">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>
