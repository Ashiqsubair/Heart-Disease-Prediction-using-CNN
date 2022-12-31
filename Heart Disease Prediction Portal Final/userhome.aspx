<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="userhome.aspx.cs" Inherits="Heart_Disease_Prediction_Portal_Final.userhome" %>
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
            height: 30px;
        }
        .style6
        {
            width: 218px;
        }
        .style7
        {
            height: 30px;
            width: 218px;
        }
        .style8
        {
            height: 21px;
            width: 218px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="style3">
        <tr>
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
            <td>
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="Black"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                </td>
            <td class="style5">
                <asp:Button ID="bt_labreport" runat="server" Text="Lab Report" Width="134px" 
                    onclick="bt_labreport_Click" BackColor="#CCCCCC" />
            </td>
            <td class="style5">
                </td>
            <td class="style5">
                </td>
            <td class="style5">
                </td>
            <td class="style5">
                </td>
            <td class="style5">
                </td>
            <td class="style7">
                </td>
            <td class="style5">
                <asp:LinkButton ID="btn_logout" runat="server" onclick="btn_logout_Click">logout</asp:LinkButton>
                </td>
            <td class="style5">
                </td>
        </tr>
        <tr>
            <td class="style5">
            </td>
            <td class="style5">
                <asp:Button ID="bt_consulting" runat="server" onclick="bt_consulting_Click" 
                    Text="Consulting" Width="134px" BackColor="#CCCCCC" />
            </td>
            <td class="style5">
            </td>
            <td class="style5">
            </td>
            <td class="style5">
            </td>
            <td class="style5">
            </td>
            <td class="style5">
            </td>
            <td class="style7">
            </td>
            <td class="style5">
            </td>
            <td class="style5">
            </td>
        </tr>
        <tr>
            <td class="style4">
            </td>
            <td class="style4">
                <asp:Button ID="bt_dtclearing" runat="server" onclick="bt_dtclearing_Click" 
                    Text="Doubt Clearing" Width="133px" BackColor="#CCCCCC" />
            </td>
            <td class="style4">
            </td>
            <td class="style4">
            </td>
            <td class="style4">
            </td>
            <td class="style4">
            </td>
            <td class="style4">
            </td>
            <td class="style8">
            </td>
            <td class="style4">
            </td>
            <td class="style4">
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="bt_prediview" runat="server" Text="Prediction View" 
                    Width="133px" onclick="bt_prediview_Click" BackColor="#CCCCCC" />
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
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="bt_feedback" runat="server" Text="Feedback" Width="132px" 
                    onclick="bt_feedback_Click" BackColor="#CCCCCC" />
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
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
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
            <td>
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
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
            <td>
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
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
            <td>
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
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
            <td>
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
