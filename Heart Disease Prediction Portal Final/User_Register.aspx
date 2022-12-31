<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="User_Register.aspx.cs" Inherits="Heart_Disease_Prediction_Portal_Final.Register" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
    .style2
    {
        width: 100%;
    }
        .style4
        {
            width: 230px;
        }
        .style5
        {
            width: 102px;
        }
        .style6
        {
            width: 101px;
        }
        .style7
        {
            width: 95px;
        }
        .style8
    {
        width: 102px;
        color: #000000;
    }
    .style9
    {
        width: 230px;
        font-size: large;
    }
    .style10
    {
        width: 236px;
    }
    .style11
    {
        width: 236px;
        font-size: x-large;
    }
        .style12
        {
            width: 102px;
            color: #000000;
            height: 34px;
        }
        .style13
        {
            width: 230px;
            height: 34px;
        }
        .style14
        {
            height: 34px;
        }
        </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <p>
    &nbsp;</p>

    <table class="style1">
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td class="style11">
                <strong>USER REGISTRATION</strong></td>
            <td>
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
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td>
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
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td>
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
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                First Name</td>
            <td class="style4">
                <asp:TextBox ID="txt_fname" runat="server"></asp:TextBox>
            </td>
            <td class="style6" colspan="5" rowspan="6">
                <asp:Image ID="Image2" runat="server" Height="146px" Width="113px" />
                <br />
                <asp:FileUpload ID="FileUpload1" runat="server" Width="228px" />
                <asp:Button ID="bt_upload" runat="server" onclick="bt_upload_Click" 
                    Text="Upload" BackColor="#CCCCCC" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                Last Name</td>
            <td class="style4">
                <asp:TextBox ID="txt_lname" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                DOB</td>
            <td class="style4">
                <asp:TextBox ID="txt_dob" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                Mobile.No</td>
            <td class="style4">
                <asp:TextBox ID="txt_mob" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
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
        </tr>
        <tr>
            <td class="style12">
                Password</td>
            <td class="style13">
                <asp:TextBox ID="txt_pass" runat="server"></asp:TextBox>
            </td>
            <td class="style14">
                </td>
            <td class="style14">
                </td>
            <td class="style14">
                </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style4">
                <br />
            </td>
            <td class="style10">
                &nbsp;</td>
            <td>
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
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style4">
                <asp:Button ID="btn_reg" runat="server" Text="Register" 
                    onclick="btn_reg_Click" BackColor="#009900" />
            </td>
            <td class="style10">
                &nbsp;</td>
            <td>
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
                &nbsp;</td>
        </tr>
    </table>
    <div>
    
    </div>
  


  </asp:Content>
