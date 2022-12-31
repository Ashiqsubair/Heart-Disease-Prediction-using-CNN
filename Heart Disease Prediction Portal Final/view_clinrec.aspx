<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="view_clinrec.aspx.cs" Inherits="Heart_Disease_Prediction_Portal_Final.view_clinrec" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="style3">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="bt_back" runat="server" onclick="bt_back_Click" Text="Back" 
                    BackColor="#CCCCCC" />
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
                <asp:Label ID="Label1" runat="server" Text="EMR no:"></asp:Label>
                <asp:Label ID="lbl_emrno" runat="server"></asp:Label>
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
            <td colspan="3" rowspan="5">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource1" Height="216px" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" 
                    style="margin-left: 87px" Width="702px" BackColor="#99CCFF" 
                    ForeColor="Black">
                    <Columns>
                        <asp:BoundField DataField="emrno" HeaderText="emrno" SortExpression="emrno" />
                        <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
                        <asp:BoundField DataField="sex" HeaderText="sex" SortExpression="sex" />
                        <asp:BoundField DataField="cp" HeaderText="cp" SortExpression="cp" />
                        <asp:BoundField DataField="trestbps" HeaderText="trestbps" 
                            SortExpression="trestbps" />
                        <asp:BoundField DataField="chol" HeaderText="chol" SortExpression="chol" />
                        <asp:BoundField DataField="fbs" HeaderText="fbs" SortExpression="fbs" />
                        <asp:BoundField DataField="thal" HeaderText="thal" SortExpression="thal" />
                        <asp:BoundField DataField="ca" HeaderText="ca" SortExpression="ca" />
                        <asp:BoundField DataField="slope" HeaderText="slope" SortExpression="slope" />
                        <asp:BoundField DataField="oldpeak" HeaderText="oldpeak" 
                            SortExpression="oldpeak" />
                        <asp:BoundField DataField="exang" HeaderText="exang" SortExpression="exang" />
                        <asp:BoundField DataField="thalach" HeaderText="thalach" 
                            SortExpression="thalach" />
                        <asp:BoundField DataField="restecg" HeaderText="restecg" 
                            SortExpression="restecg" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:heart diseaseConnectionString %>" 
                    
                    SelectCommand="SELECT [emrno], [age], [sex], [cp], [trestbps], [chol], [fbs], [thal], [ca], [slope], [oldpeak], [exang], [thalach], [restecg] FROM [clinicalrecord] WHERE ([emrno] = @emrno)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lbl_emrno" Name="emrno" PropertyName="Text" 
                            Type="Decimal" />
                    </SelectParameters>
                </asp:SqlDataSource>
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
                Prediction Result&nbsp;&nbsp;&nbsp; :&nbsp; 
                <asp:Label ID="lblresult" runat="server" ForeColor="Maroon" Text=".."></asp:Label>
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
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
