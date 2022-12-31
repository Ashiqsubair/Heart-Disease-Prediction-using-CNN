<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Datasetmgmnt.aspx.cs" Inherits="Heart_Disease_Prediction_Portal_Final.Datasetmgmnt" %>
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
            width: 135px;
        }
        .style5
        {
            width: 118px;
        }
        .style6
        {
            width: 135px;
            height: 21px;
        }
        .style7
        {
            width: 118px;
            height: 21px;
        }
        .style8
        {
            height: 21px;
        }
        .style9
        {
            width: 135px;
            height: 30px;
        }
        .style10
        {
            width: 118px;
            height: 30px;
        }
        .style11
        {
            height: 30px;
        }
        .style12
        {
            width: 76px;
        }
        .style13
        {
            height: 30px;
            width: 76px;
        }
        .style14
        {
            height: 21px;
            width: 76px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="style3">
        <tr>
            <td class="style4">
                <asp:Button ID="bt_back" runat="server" onclick="bt_back_Click" Text="Back" 
                    BackColor="#CCCCCC" />
            </td>
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
            <td class="style12">
                <asp:LinkButton ID="btn_logout" runat="server" onclick="btn_logout_Click">logout</asp:LinkButton>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
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
            <td class="style12">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                File name</td>
            <td class="style5">
                <asp:TextBox ID="txt_filename" runat="server"></asp:TextBox>
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
            <td>
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                Dataset description</td>
            <td class="style5">
                <asp:TextBox ID="txt_datasetds" runat="server"></asp:TextBox>
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
            <td>
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                Upload data</td>
            <td class="style5">
                <asp:FileUpload ID="FileUpload1" runat="server" />
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
            <td>
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
            </td>
            <td class="style10">
                <asp:Button ID="btn_upload" runat="server" onclick="btn_upload_Click" 
                    Text="upload" style="width: 56px" BackColor="#CCCCCC" />
            </td>
            <td class="style11">
            </td>
            <td class="style11">
            </td>
            <td class="style11">
            </td>
            <td class="style11">
            </td>
            <td class="style11">
            </td>
            <td class="style11">
            </td>
            <td class="style13">
            </td>
            <td class="style11">
            </td>
        </tr>
        <tr>
            <td class="style6">
                </td>
            <td class="style7">
                </td>
            <td class="style8">
                </td>
            <td class="style8">
                </td>
            <td class="style8">
                </td>
            <td class="style8">
                </td>
            <td class="style8">
                </td>
            <td class="style8">
                </td>
            <td class="style14">
                </td>
            <td class="style8">
                </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
            <div style="overflow: scroll" >
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    onpageindexchanging="GridView1_PageIndexChanging" BackColor="#99CCFF" 
                    ForeColor="Black">
                </asp:GridView>
                </div>
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
            <td>
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
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
            <td class="style12">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                No.of record</td>
            <td class="style7">
                <asp:TextBox ID="txt_recordno" runat="server"></asp:TextBox>
            </td>
            <td class="style8">
            </td>
            <td class="style8">
            </td>
            <td class="style8">
            </td>
            <td class="style8">
            </td>
            <td class="style8">
            </td>
            <td class="style8">
            </td>
            <td class="style14">
            </td>
            <td class="style8">
            </td>
        </tr>
        <tr>
            <td class="style4">
                No.of attribute</td>
            <td class="style5">
                <asp:TextBox ID="txt_attributeno" runat="server"></asp:TextBox>
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
            <td>
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                <asp:Button ID="bt_save" runat="server" onclick="bt_save_Click" Text="Save" 
                    BackColor="#009933" />
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
            <td>
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
