<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="userlabreport.aspx.cs" Inherits="Heart_Disease_Prediction_Portal_Final.userclinic" %>
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
            width: 90px;
        }
        .style5
        {
            width: 97px;
        }
        .style6
        {
            width: 97px;
            height: 26px;
        }
        .style7
        {
            width: 90px;
            height: 26px;
        }
        .style8
        {
            height: 26px;
        }
        .style13
        {
            width: 26px;
        }
        .style14
        {
            height: 26px;
            width: 26px;
        }
        .style15
        {
            width: 97px;
            height: 23px;
        }
        .style16
        {
            width: 90px;
            height: 23px;
        }
        .style17
        {
            height: 23px;
        }
        .style18
        {
            width: 66px;
        }
        .style19
        {
            width: 66px;
            height: 26px;
        }
        .style20
        {
            width: 66px;
            height: 23px;
        }
    .style21
    {
        width: 10px;
    }
    .style22
    {
        height: 26px;
        width: 10px;
    }
    .style23
    {
        height: 23px;
        width: 10px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="style3">
        <tr>
            <td class="style5">
                <asp:Button ID="bt_back0" runat="server" onclick="bt_back_Click" Text="Back" 
                    BackColor="#CCCCCC" />
            </td>
            <td class="style4">
                &nbsp;</td>
            <td class="style21">
                &nbsp;</td>
            <td>
                EMR no:<asp:Label ID="lbl_emr" runat="server"></asp:Label>
            </td>
            <td class="style18">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td>
                <asp:Label ID="lbl_name" runat="server" ForeColor="Black"></asp:Label>
            </td>
            <td>
                <asp:LinkButton ID="btn_logout" runat="server" onclick="btn_logout_Click">logout</asp:LinkButton>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style22">
            </td>
            <td class="style8">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
            <td class="style8">
            </td>
            <td class="style14">
            </td>
            <td class="style8">
                <asp:Label ID="lbl_mail" runat="server" ForeColor="Black"></asp:Label>
                <asp:Label ID="lbl_date" runat="server" ForeColor="Black"></asp:Label>
            </td>
            <td class="style8">
            </td>
            <td class="style8">
            </td>
        </tr>
        <tr>
            <td class="style15">
            </td>
            <td class="style16">
            </td>
            <td class="style23">
            </td>
            <td class="style17">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource1" Width="354px" BackColor="#99CCFF" 
                    ForeColor="Black">
                    <Columns>
                        <asp:BoundField DataField="parametername" HeaderText="parametername" 
                            SortExpression="parametername" />
                        <asp:BoundField DataField="minimumvalue" HeaderText="minimumvalue" 
                            SortExpression="minimumvalue" />
                        <asp:BoundField DataField="maximumvalue" HeaderText="maximumvalue" 
                            SortExpression="maximumvalue" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:TextBox ID="txt_para_value" runat="server"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EmptyDataTemplate>
                        <asp:TextBox ID="txt_para_value" runat="server"></asp:TextBox>
                    </EmptyDataTemplate>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:heart diseaseConnectionString %>" 
                    SelectCommand="SELECT [parametername], [minimumvalue], [maximumvalue] FROM [parameterdb] ORDER BY [index_no]">
                </asp:SqlDataSource>
            </td>
            <td class="style20">
                &nbsp;</td>
            <td colspan="3" rowspan="5">
                &nbsp;</td>
            <td class="style17">
            </td>
            <td class="style17">
            </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style22">
            </td>
            <td class="style8">
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Submit" 
                    BackColor="#009900" />
            </td>
            <td class="style19">
                &nbsp;</td>
            <td class="style8">
            </td>
            <td class="style8">
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style21">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style18">
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
            <td class="style21">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style18">
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
            <td class="style21">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style18">
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
            <td class="style21">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style18">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style13">
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
            <td class="style4">
                </td>
            <td class="style21">
                </td>
            <td>
                </td>
            <td class="style18">
                </td>
            <td>
                </td>
            <td class="style13">
                </td>
            <td>
                </td>
            <td>
                </td>
            <td>
                </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style21">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style18">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style13">
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
