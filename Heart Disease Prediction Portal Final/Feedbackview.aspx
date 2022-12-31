<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Feedbackview.aspx.cs" Inherits="Heart_Disease_Prediction_Portal_Final.Feedbackview" %>
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
            font-size: large;
        }
        .style5
        {
            width: 164px;
        }
        .style6
        {
            height: 21px;
        }
        .style7
        {
            width: 164px;
            height: 21px;
        }
        .style8
        {
        }
        .style9
        {
            width: 82px;
            height: 21px;
        }
        .style10
        {
            width: 56px;
        }
        .style11
        {
            height: 21px;
            width: 56px;
        }
        .style12
        {
            height: 82px;
        }
        .style13
        {
            width: 56px;
            height: 82px;
        }
    .style14
    {
        height: 26px;
    }
    .style15
    {
        width: 164px;
        height: 26px;
    }
    .style16
    {
        width: 56px;
        height: 26px;
    }
    .style17
    {
        height: 25px;
    }
    .style18
    {
        width: 164px;
        height: 25px;
    }
    .style19
    {
        width: 56px;
        height: 25px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="style3">
        <tr>
            <td>
                <asp:Button ID="bt_back" runat="server" onclick="bt_back_Click" Text="Back" 
                    BackColor="#CCCCCC" />
            </td>
            <td class="style8">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style4">
                <strong>FEEDBACK VIEW</strong></td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style10">
                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">logout</asp:LinkButton>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
            </td>
            <td class="style9">
            </td>
            <td class="style7">
            </td>
            <td class="style6">
            </td>
            <td class="style6">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style6">
            </td>
            <td class="style6">
            </td>
            <td class="style11">
            </td>
            <td class="style6">
            </td>
        </tr>
        <tr>
            <td class="style14">
                </td>
            <td class="style14">
                <asp:RadioButton ID="rdbt_user" runat="server" GroupName="g" 
                    oncheckedchanged="rdbt_user_CheckedChanged" Text="USER" 
                    AutoPostBack="True" BackColor="White" ForeColor="Black" />
            </td>
            <td class="style15">
                <asp:RadioButton ID="rdbt_doctor" runat="server" GroupName="g" 
                    oncheckedchanged="rdbt_doctor_CheckedChanged" Text="DOCTOR" 
                    AutoPostBack="True" BackColor="White" ForeColor="Black" />
            </td>
            <td class="style14">
            </td>
            <td class="style14">
                </td>
            <td class="style14">
                </td>
            <td class="style14">
                </td>
            <td class="style14">
                </td>
            <td class="style16">
                </td>
            <td class="style14">
                </td>
        </tr>
        <tr>
            <td class="style17">
                </td>
            <td class="style17">
                </td>
            <td class="style18">
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
            <td class="style19">
                </td>
            <td class="style17">
                </td>
        </tr>
        <tr>
            <td class="style12">
                </td>
            <td class="style8" colspan="3" rowspan="3">
                <asp:GridView ID="GridView1" runat="server" BackColor="#99CCFF" 
                    ForeColor="Black">
                </asp:GridView>
                <br />
                <asp:GridView ID="GridView2" runat="server" BackColor="#99CCFF" 
                    ForeColor="Black">
                </asp:GridView>
            </td>
            <td class="style12">
                </td>
            <td class="style12">
                </td>
            <td class="style12">
                </td>
            <td class="style12">
                </td>
            <td class="style13">
                </td>
            <td class="style12">
                </td>
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
            <td class="style10">
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
            <td class="style10">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style8">
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
            <td class="style10">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style8">
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
            <td class="style10">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style8">
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
            <td class="style10">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
