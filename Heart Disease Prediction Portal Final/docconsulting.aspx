<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="docconsulting.aspx.cs" Inherits="Heart_Disease_Prediction_Portal_Final.consulting" %>
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
            width: 136px;
        }
        .style5
        {
            height: 25px;
        }
        .style6
        {
            height: 24px;
        }
        .style7
        {
            height: 26px;
        }
        .style8
        {
            height: 21px;
        }
        .style9
        {
            width: 136px;
            height: 21px;
        }
        .style10
        {
            height: 27px;
        }
        .style11
        {
            height: 21px;
            width: 37px;
        }
        .style12
        {
            width: 37px;
        }
        .style13
        {
            height: 24px;
            width: 37px;
        }
        .style14
        {
            height: 25px;
            width: 37px;
        }
        .style15
        {
            height: 26px;
            width: 37px;
        }
        .style16
        {
            height: 27px;
            width: 37px;
        }
        .style17
        {
            height: 23px;
        }
        .style18
        {
            width: 37px;
            height: 23px;
        }
        .style19
        {
            height: 21px;
            width: 10px;
        }
        .style20
        {
            width: 10px;
        }
        .style21
        {
            height: 24px;
            width: 10px;
        }
        .style22
        {
            height: 25px;
            width: 10px;
        }
        .style23
        {
            height: 26px;
            width: 10px;
        }
        .style24
        {
            height: 27px;
            width: 10px;
        }
        .style25
        {
            height: 23px;
            width: 10px;
        }
        .style26
        {
            width: 149px;
            height: 21px;
        }
        .style27
        {
            width: 149px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="style3">
        <tr>
            <td class="style8">
                <asp:Button ID="bt_back" runat="server" onclick="bt_back_Click" Text="Back" 
                    BackColor="#CCCCCC" />
                </td>
            <td class="style9">
                </td>
            <td class="style26">
                </td>
            <td class="style8">
                </td>
            <td class="style11">
                </td>
            <td class="style19">
                </td>
            <td class="style8">
                </td>
            <td class="style8">
                </td>
            <td class="style8">
                </td>
            <td class="style8">
                <asp:Label ID="lbl_docname" runat="server" Text="docname"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style4">
                PATIENT QUEUE</td>
            <td class="style27">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style20">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="lbl_docmail" runat="server" Text="mail"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="3" rowspan="5">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource1" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" 
                    BackColor="#99CCFF" ForeColor="Black">
                    <Columns>
                        <asp:BoundField DataField="emrno" HeaderText="emrno" SortExpression="emrno" />
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                        <asp:BoundField DataField="symptom" HeaderText="symptom" 
                            SortExpression="symptom" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click">View</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EmptyDataTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">View</asp:LinkButton>
                    </EmptyDataTemplate>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:heart diseaseConnectionString %>" 
                    
                    
                    SelectCommand="SELECT [emrno], [name], [date], [symptom] FROM [emrdata] WHERE ([docname] = @docname) ORDER BY [emrno]">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lbl_docname" Name="docname" 
                            PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="style6">
            </td>
            <td class="style13">
                <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
            </td>
            <td class="style21">
                <asp:Label ID="lbl_pname" runat="server"></asp:Label>
            </td>
            <td class="style6">
            </td>
            <td class="style6">
            </td>
            <td class="style6">
            </td>
            <td class="style6">
                <asp:LinkButton ID="btn_logout" runat="server" onclick="btn_logout_Click">logout</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td class="style5">
            </td>
            <td class="style14">
                <asp:Label ID="Label2" runat="server" Text="Mobile no:"></asp:Label>
            </td>
            <td class="style22">
                <asp:Label ID="lbl_mobile" runat="server"></asp:Label>
            </td>
            <td class="style5">
            </td>
            <td class="style5">
                <asp:Button ID="bt_clicrec" runat="server" onclick="bt_clicrec_Click" 
                    Text="View Clinical Record" Width="133px" BackColor="#CCCCCC" />
            </td>
            <td class="style5">
            </td>
            <td class="style5">
            </td>
        </tr>
        <tr>
            <td class="style7">
                </td>
            <td class="style15">
                <asp:Label ID="Label3" runat="server" Text="Symptom"></asp:Label>
            </td>
            <td class="style23">
                <asp:Label ID="lbl_symptom" runat="server" ForeColor="Black"></asp:Label>
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
            <td class="style10">
                </td>
            <td class="style16">
                <asp:Label ID="Label4" runat="server" Text="Description"></asp:Label>
            </td>
            <td class="style24">
                <asp:Label ID="lbl_description" runat="server" ForeColor="Black"></asp:Label>
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
            <td class="style17">
                </td>
            <td class="style18">
                </td>
            <td class="style25">
                </td>
            <td class="style17">
                </td>
            <td class="style17">
                </td>
            <td class="style17">
                </td>
            <td class="style17">
                </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style27">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style20">
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
            <td class="style27">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style20">
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
            <td class="style27">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style20">
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
