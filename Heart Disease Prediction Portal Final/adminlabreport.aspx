<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="adminlabreport.aspx.cs" Inherits="Heart_Disease_Prediction_Portal_Final.adminlabreport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style4
        {
            width: 69px;
        }
        .style5
        {
            width: 476px;
        }
        .style6
        {
            width: 69px;
            height: 33px;
        }
        .style7
        {
            height: 33px;
        }
        .style8
        {
            width: 476px;
            height: 33px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="style3">
        <tr>
            <td class="style6">
                <asp:Button ID="bt_back" runat="server" onclick="bt_back_Click" Text="Back" 
                    BackColor="#66CCFF" />
            </td>
            <td class="style7">
            </td>
            <td class="style7">
            </td>
            <td class="style7">
            </td>
            <td class="style7">
            </td>
            <td class="style7">
            </td>
            <td class="style7">
            </td>
            <td class="style7">
            </td>
            <td class="style8">
            </td>
            <td class="style7">
                <asp:LinkButton ID="btn_logout" runat="server" onclick="btn_logout_Click">logout</asp:LinkButton>
            </td>
        </tr>
        <tr>
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
            <td>
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td colspan="7" rowspan="7">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="#99CCFF" DataKeyNames="slno" DataSourceID="SqlDataSource1" 
                    ForeColor="Black" Width="787px" AllowPaging="True">
                    <Columns>
                        <asp:BoundField DataField="slno" HeaderText="slno" ReadOnly="True" 
                            SortExpression="slno" />
                        <asp:BoundField DataField="emrno" HeaderText="emrno" SortExpression="emrno" />
                        <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
                        <asp:BoundField DataField="sex" HeaderText="sex" SortExpression="sex" />
                        <asp:BoundField DataField="cp" HeaderText="cp" SortExpression="cp" />
                        <asp:BoundField DataField="trestbps" HeaderText="trestbps" 
                            SortExpression="trestbps" />
                        <asp:BoundField DataField="chol" HeaderText="chol" SortExpression="chol" />
                        <asp:BoundField DataField="fbs" HeaderText="fbs" SortExpression="fbs" />
                        <asp:BoundField DataField="restecg" HeaderText="restecg" 
                            SortExpression="restecg" />
                        <asp:BoundField DataField="thalach" HeaderText="thalach" 
                            SortExpression="thalach" />
                        <asp:BoundField DataField="exang" HeaderText="exang" SortExpression="exang" />
                        <asp:BoundField DataField="oldpeak" HeaderText="oldpeak" 
                            SortExpression="oldpeak" />
                        <asp:BoundField DataField="slope" HeaderText="slope" SortExpression="slope" />
                        <asp:BoundField DataField="ca" HeaderText="ca" SortExpression="ca" />
                        <asp:BoundField DataField="thal" HeaderText="thal" SortExpression="thal" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:heart diseaseConnectionString %>" 
                    SelectCommand="SELECT * FROM [clinicalrecord] ORDER BY [slno]">
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
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
            <td>
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
