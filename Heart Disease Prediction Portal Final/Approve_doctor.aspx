<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Approve_doctor.aspx.cs" Inherits="Heart_Disease_Prediction_Portal_Final.Approve_doctor" %>
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
            width: 123px;
        }
        .style5
        {
            height: 21px;
        }
        .style6
        {
            width: 123px;
            height: 21px;
        }
    .style7
    {
        height: 33px;
    }
    .style8
    {
        width: 123px;
        height: 33px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="style3">
        <tr>
            <td class="style5">
                &nbsp;</td>
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
            <td class="style5">
            </td>
            <td class="style5">
            </td>
            <td class="style5">
                <asp:LinkButton ID="btn_logout" runat="server" onclick="btn_logout_Click">logout</asp:LinkButton>
            </td>
            <td class="style5">
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="bt_back" runat="server" onclick="bt_back_Click" Text="Back" 
                    BackColor="#CCCCCC" />
            </td>
            <td>
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
            <td colspan="6">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="regno" DataSourceID="SqlDataSource1" Height="149px" 
                    Width="665px" BackColor="#99CCFF" ForeColor="Black">
                    <Columns>
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="regno" HeaderText="regno" ReadOnly="True" 
                            SortExpression="regno" />
                        <asp:BoundField DataField="hospital" HeaderText="hospital" 
                            SortExpression="hospital" />
                        <asp:BoundField DataField="speciality" HeaderText="speciality" 
                            SortExpression="speciality" />
                        <asp:BoundField DataField="status" HeaderText="status" 
                            SortExpression="status" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Image ID="Image2" runat="server" Height="72px" 
                                    ImageUrl='<%# Eval("pic") %>' Width="67px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">View</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:heart diseaseConnectionString %>" 
                    SelectCommand="SELECT [name], [regno], [hospital], [speciality], [status], [pic] FROM [doctordb] WHERE ([status] LIKE '%' + @status + '%') ORDER BY [name]">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="NO" Name="status" Type="String" />
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
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Email Id"></asp:Label>
            </td>
            <td class="style4">
                <asp:Label ID="Label3" runat="server"></asp:Label>
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
            <td>
                &nbsp;</td>
            <td>
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
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                </td>
            <td class="style7">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Approve" BackColor="#66FF99" />
            </td>
            <td class="style8">
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
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
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
