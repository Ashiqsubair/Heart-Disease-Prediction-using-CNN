<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="userconsult.aspx.cs" Inherits="Heart_Disease_Prediction_Portal_Final.userconsult" %>
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
            width: 51px;
        }
        .style5
        {
            height: 21px;
        }
        .style6
        {
            width: 51px;
            height: 21px;
        }
        .style7
        {
            width: 244px;
        }
        .style8
        {
            height: 21px;
            width: 244px;
        }
        .style9
        {
            height: 26px;
        }
        .style10
        {
            width: 51px;
            height: 26px;
        }
        .style11
        {
            width: 244px;
            height: 26px;
        }
        .style12
        {
            height: 38px;
        }
        .style13
        {
            width: 51px;
            height: 38px;
        }
        .style14
        {
            width: 244px;
            height: 38px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="style3">
        <tr>
            <td>
                <asp:Button ID="bt_back" runat="server" onclick="bt_back_Click" Text="Back" 
                    BackColor="#66CCFF" />
            </td>
            <td>
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
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
            </td>
            <td class="style5">
            </td>
            <td class="style6">
                EMR no:</td>
            <td class="style8">
                <asp:Label ID="lbl_emr" runat="server" Text="label1"></asp:Label>
            </td>
            <td class="style5">
            </td>
            <td class="style5">
            </td>
            <td class="style5">
            </td>
            <td class="style5">
                <asp:Label ID="lbl_email" runat="server" Text="email" ForeColor="Black"></asp:Label>
                <asp:LinkButton ID="btn_logout" runat="server" onclick="btn_logout_Click">logout</asp:LinkButton>
            </td>
            <td class="style5">
            </td>
            <td class="style5">
            </td>
        </tr>
        <tr>
            <td class="style5">
            </td>
            <td class="style5">
            </td>
            <td class="style6">
                Name</td>
            <td class="style8">
                <asp:Label ID="lbl_usrname" runat="server" Text="Label2"></asp:Label>
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
            <td class="style5">
            </td>
        </tr>
        <tr>
            <td class="style5">
            </td>
            <td class="style5">
            </td>
            <td class="style6">
                Date</td>
            <td class="style8">
                <asp:Label ID="lbl_date" runat="server" Text="Label3"></asp:Label>
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
            <td class="style5">
            </td>
        </tr>
        <tr>
            <td class="style5">
            </td>
            <td class="style5">
            </td>
            <td class="style6">
                Speciality</td>
            <td class="style8">
                <asp:DropDownList ID="dd_speciality" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource2" DataTextField="speciality" 
                    DataValueField="speciality">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:heart diseaseConnectionString %>" 
                    SelectCommand="SELECT DISTINCT [speciality] FROM [doctordb]">
                </asp:SqlDataSource>
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
            <td class="style5">
            </td>
        </tr>
        <tr>
            <td class="style9">
                </td>
            <td class="style9">
                </td>
            <td class="style10">
                Doctor</td>
            <td class="style11">
                <asp:DropDownList ID="dd_doctor" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:heart diseaseConnectionString %>" 
                    SelectCommand="SELECT [name] FROM [doctordb] WHERE ([speciality] LIKE '%' + @speciality + '%')">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="dd_speciality" Name="speciality" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="style9">
                </td>
            <td class="style9">
                </td>
            <td class="style9">
                </td>
            <td class="style9">
                </td>
            <td class="style9">
                </td>
            <td class="style9">
                </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style4">
                Symptom</td>
            <td class="style7">
                <asp:TextBox ID="txt_symptoms" runat="server" Height="46px" Width="172px"></asp:TextBox>
            </td>
            <td colspan="3" rowspan="5">
                <asp:GridView ID="GridView1" runat="server" BackColor="#99CCFF" 
                    ForeColor="Black" Visible="False">
                </asp:GridView>
            </td>
            <td>
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
            <td class="style4">
                Description</td>
            <td class="style7">
                <asp:TextBox ID="txt_descri" runat="server" Height="75px" Width="201px"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="bt_submit" runat="server" Text="Submit" 
                    onclick="bt_submit_Click" BackColor="#009900" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
            </td>
            <td class="style5">
            </td>
            <td class="style6">
                &nbsp;</td>
            <td class="style8">
                <asp:DropDownList ID="dd_parametr" runat="server" DataSourceID="SqlDataSource3" 
                    DataTextField="parametername" DataValueField="parametername" 
                    AutoPostBack="True" 
                    onselectedindexchanged="dd_parametr_SelectedIndexChanged" Visible="False">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:heart diseaseConnectionString %>" 
                    SelectCommand="SELECT DISTINCT [parametername] FROM [parameterdb]">
                </asp:SqlDataSource>
            </td>
            <td class="style5">
            </td>
            <td class="style5">
            </td>
            <td class="style5">
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style7">
                <asp:Label ID="lbl_value" runat="server" Text="Label" Visible="False"></asp:Label>
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
                </td>
            <td class="style12">
                </td>
            <td class="style13">
                &nbsp;</td>
            <td class="style14">
                <asp:TextBox ID="txt_maxval" runat="server" Visible="False"></asp:TextBox>
            </td>
            <td class="style12">
                </td>
            <td class="style12">
                </td>
            <td class="style12">
                </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
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
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
            </td>
            <td class="style5">
            </td>
            <td class="style6">
            </td>
            <td class="style8">
                <asp:Button ID="bt_add" runat="server" Text="Add" onclick="bt_add_Click" 
                    BackColor="#6699FF" Visible="False" />
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
            <td class="style5">
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
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
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
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
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
