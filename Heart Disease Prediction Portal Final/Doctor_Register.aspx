
<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Doctor_Register.aspx.cs" Inherits="Heart_Disease_Prediction_Portal_Final.Doctor_Register" %>



   <asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
       <style type="text/css">
    .style2
    {
        width: 100%;
    }
    .style3
    {
            width: 94px;
        }
        .style4
        {
               width: 28%;
               font-family: "Times New Roman", Times, serif;
               font-size: x-large;
               background-color: #FFFFFF;
           }
        .style5
    {
        width: 245px;
    }
           .style6
           {
               width: 94px;
               color: #000000;
               font-weight: bold;
           }
           .style7
           {
               width: 245px;
               font-size: large;
           }
           .style8
           {
               width: 94px;
               color: #000000;
               font-weight: bold;
               height: 79px;
           }
           .style9
           {
               width: 28%;
               font-family: "Times New Roman", Times, serif;
               font-size: x-large;
               background-color: #FFFFFF;
               height: 79px;
           }
           .style10
           {
               height: 79px;
           }
        </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <p>
    &nbsp;</p>
    <table class="style1">
        <tr>
            <td class="style3">
                <asp:Button ID="Button1" runat="server" BackColor="#CCCCCC" 
                    onclick="Button1_Click" PostBackUrl="~/Default.aspx" Text="Back" />
            </td>
            <td class="style4">
                &nbsp;</td>
            <td class="style7">
                <strong>DOCTOR REGISTRATION</strong></td>
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
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
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
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                Name</td>
            <td class="style4">
                <asp:TextBox ID="txt_dname" runat="server"></asp:TextBox>
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
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                Reg.No</td>
            <td class="style4">
                <asp:TextBox ID="txt_dreg" runat="server"></asp:TextBox>
            </td>
            <td class="style5" rowspan="6">
                <asp:Image ID="Image1" runat="server" Height="86px" Width="89px" 
                    style="margin-right: 40px" />
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
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                Hospital</td>
            <td class="style4">
                <asp:TextBox ID="txt_hospital" runat="server"></asp:TextBox>
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
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                Speciality</td>
            <td class="style4">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    Height="18px" Width="166px">
                    <asp:ListItem>Cardiologist</asp:ListItem>
                    <asp:ListItem>Cardiac Surgeon</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
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
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                Email</td>
            <td class="style4">
                <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
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
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                Mobile.No</td>
            <td class="style4">
                <asp:TextBox ID="txt_mobn" runat="server"></asp:TextBox>
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
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                Upload Dp</td>
            <td class="style9">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="192px" />
                <br />
                <asp:Button ID="bt_upload" runat="server" onclick="bt_upload_Click" 
                    Text="Upload" BackColor="#CCCCCC" />
            </td>
            <td class="style10">
                </td>
            <td class="style10">
                </td>
            <td class="style10">
                </td>
            <td class="style10">
                </td>
            <td class="style10">
                </td>
            <td class="style10">
                </td>
            <td class="style10">
                </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                <asp:Button ID="btn_reg" runat="server" onclick="btn_reg_Click" 
                    Text="Register" BackColor="#009900" />
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
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <div>
    
    </div>
    </asp:Content>
    

