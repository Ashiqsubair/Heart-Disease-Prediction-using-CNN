<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Adparameter.aspx.cs" Inherits="Heart_Disease_Prediction_Portal_Final.Adparameter" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style4
        {
            width: 195px;
        }
        .style5
        {
            width: 195px;
            font-size: large;
        }
        .style6
        {
        }
        .style7
        {
        }
        .style8
        {
            width: 171px;
        }
        .style9
        {
            height: 21px;
            width: 171px;
        }
        .style10
        {
            width: 127px;
        }
        .style11
        {
            height: 21px;
            width: 127px;
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
            <td class="style10">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style5">
                <strong>PARAMETER SETUP</strong></td>
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
        <tr>
            <td class="style6">
            </td>
            <td class="style11">
            </td>
            <td class="style9">
            </td>
            <td class="style7">
            </td>
            <td>
            </td>
            <td>
            </td>
            <td class="style6">
            </td>
            <td class="style6">
            </td>
            <td class="style6">
            </td>
            <td class="style6">
            </td>
        </tr>
        <tr>
            <td class="style6">
            </td>
            <td class="style11">
                <asp:Label ID="Label1" runat="server" Text="Parameter Name"></asp:Label>
            </td>
            <td class="style9">
                <asp:TextBox ID="txt_paraname" runat="server" 
                    ontextchanged="txt_paraname_TextChanged"></asp:TextBox>
            </td>
            <td class="style7" colspan="3" rowspan="7">
                &nbsp;</td>
            <td class="style6" colspan="3" rowspan="7">
                <asp:GridView ID="GridView1" runat="server" Height="167px" 
                    Width="309px" AllowPaging="True" style="margin-left: 0px" 
                    onpageindexchanging="GridView1_PageIndexChanging" BackColor="#99CCFF" 
                    ForeColor="Black">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="lkbt_delete" runat="server" onclick="lkbt_delete_Click" OnClientClick="return confirm('Are you sure you want to delete this event?');"
                                >Delete</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
            <td class="style6">
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style10">
                <asp:Label ID="Label2" runat="server" Text="Code"></asp:Label>
            </td>
            <td class="style8">
                <asp:TextBox ID="txt_code" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
            </td>
            <td class="style11">
            </td>
            <td class="style9">
            </td>
            <td class="style6">
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style10">
                <asp:Label ID="Label3" runat="server" Text="Normal values"></asp:Label>
            </td>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style10">
                <asp:Label ID="Label5" runat="server" Text="Minimum value"></asp:Label>
            </td>
            <td class="style8">
                <asp:TextBox ID="txt_min" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style10">
                <asp:Label ID="Label4" runat="server" Text="Maximum value"></asp:Label>
            </td>
            <td class="style8">
                <asp:TextBox ID="txt_max" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style8">
                <asp:Button ID="bt_save" runat="server" onclick="bt_save_Click" Text="Save" 
                    BackColor="#66FF99" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style4">
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
