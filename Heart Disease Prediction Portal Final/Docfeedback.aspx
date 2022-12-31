<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Docfeedback.aspx.cs" Inherits="Heart_Disease_Prediction_Portal_Final.Docfeedback" %>
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
            width: 97px;
        }
        .style5
        {
            height: 21px;
        }
        .style6
        {
            width: 97px;
            height: 21px;
        }
        .style7
        {
            width: 23px;
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
            <td class="style4">
                &nbsp;</td>
            <td>
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
                <asp:LinkButton ID="btn_logout" runat="server" onclick="btn_logout_Click">logout</asp:LinkButton>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style4">
                <asp:Label runat="server" Text="Emr no:"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lbl_emrno" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="lbldocname" runat="server" Text=".."></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="Label1" runat="server" Text="FID"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lbl_fid" runat="server"></asp:Label>
            </td>
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
            <td>
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="Label2" runat="server" Text="Date"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lbl_date" runat="server"></asp:Label>
            </td>
            <td colspan="4" rowspan="5">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource1" BackColor="#99CCFF" ForeColor="Black">
                    <Columns>
                        <asp:BoundField DataField="emrno" HeaderText="emrno" SortExpression="emrno" />
                        <asp:BoundField DataField="p_value" HeaderText="p_value" 
                            SortExpression="p_value" />
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
                        <asp:BoundField DataField="sex" HeaderText="sex" SortExpression="sex" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="_lnkselect" runat="server" onclick="_lnkselect_Click1">Select</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:heart diseaseConnectionString %>" 
                    SelectCommand="SELECT [emrno], [p_value], [name], [age], [sex] FROM [view_result_doctor] WHERE ([docname] = @docname)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lbldocname" Name="docname" PropertyName="Text" 
                            Type="String" />
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
            <td class="style5">
                </td>
            <td class="style6">
                <asp:Label ID="Label3" runat="server" Text="Doctor ID"></asp:Label>
            </td>
            <td class="style5">
                <asp:Label ID="lbl_docid" runat="server"></asp:Label>
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
            <td class="style4">
                <asp:Label ID="Label4" runat="server" Text="Feedback"></asp:Label>
            </td>
            <td rowspan="4">
                <asp:TextBox ID="txt_feedback" runat="server" Height="90px" Width="200px"></asp:TextBox>
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
            <td class="style6">
                &nbsp;</td>
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
            <td class="style6">
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
            <td class="style4">
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
            <td>
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                <asp:Button ID="bt_submit" runat="server" onclick="bt_submit_Click" 
                    Text="Submit" BackColor="#009900" />
            </td>
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
            <td>
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
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
</asp:Content>
