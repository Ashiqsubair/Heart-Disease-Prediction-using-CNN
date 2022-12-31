<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="userfeedback.aspx.cs" Inherits="Heart_Disease_Prediction_Portal_Final.userfeedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style4
        {
            width: 78px;
        }
        .style5
        {
            width: 152px;
        }
        .style6
        {
            width: 152px;
            height: 21px;
        }
        .style7
        {
            width: 78px;
            height: 21px;
        }
        .style8
        {
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="style3">
        <tr>
            <td class="style6">
                <asp:Button ID="bt_back" runat="server" onclick="bt_back_Click" Text="Back" 
                    BackColor="#CCCCCC" />
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
            <td class="style8">
                <asp:LinkButton ID="btn_logout" runat="server" onclick="btn_logout_Click">logout</asp:LinkButton>
                </td>
            <td class="style8">
                </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="Label12" runat="server" Text="EMR no:"></asp:Label>
            </td>
            <td>
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
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="Label5" runat="server" Text="FID"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lbl_fid" runat="server"></asp:Label>
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
            </td>
            <td class="style7">
                <asp:Label ID="Label7" runat="server" Text="Date"></asp:Label>
            </td>
            <td class="style8">
                <asp:Label ID="lbl_date" runat="server"></asp:Label>
            </td>
            <td class="style8" colspan="5" rowspan="5">
                <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" 
                    AutoGenerateColumns="False" DataKeyNames="emrno" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" 
                    BackColor="#99CCFF" ForeColor="Black">
                    <Columns>
                        <asp:BoundField DataField="emrno" HeaderText="emrno" ReadOnly="True" 
                            SortExpression="emrno" />
                        <asp:BoundField DataField="result" HeaderText="result" 
                            SortExpression="result" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="lkbt_select" runat="server" onclick="lkbt_select_Click">Select</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:heart diseaseConnectionString %>" 
                    
                    
                    SelectCommand="SELECT [emrno], [a_value], [p_value],result, [email] FROM [view_result] WHERE ([email] = @email)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lbl_userid" Name="email" PropertyName="Text" 
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="style8">
            </td>
            <td class="style8">
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="Label9" runat="server" Text="UserID"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lbl_userid" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="Label11" runat="server" Text="Feedback"></asp:Label>
            </td>
            <td rowspan="3">
                <asp:TextBox ID="txt_feedback" runat="server" Height="80px" Width="195px"></asp:TextBox>
            </td>
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
            <td>
                <asp:Button ID="bt_submit" runat="server" onclick="bt_submit_Click" 
                    Text="Submit" style="height: 26px" BackColor="#009900" />
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
            <td class="style5">
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
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
