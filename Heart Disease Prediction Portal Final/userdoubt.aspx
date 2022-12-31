<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="userdoubt.aspx.cs" Inherits="Heart_Disease_Prediction_Portal_Final.userdoubt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style4
        {
        }
        .style5
        {
            height: 30px;
        }
        .style6
        {
            height: 25px;
        }
        .style7
        {
            height: 21px;
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
            <td class="style6">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                </td>
            <td class="style6">
                </td>
            <td class="style6">
                Email</td>
            <td class="style6">
                <asp:Label ID="lbl_email" runat="server" ForeColor="Black"></asp:Label>
            </td>
            <td class="style6">
                <asp:Label ID="lbl_date" runat="server" ForeColor="Black"></asp:Label>
            </td>
            <td class="style6">
                </td>
            <td class="style6">
                </td>
            <td class="style6">
                </td>
            <td class="style6">
                </td>
            <td class="style6">
                </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                Speciality</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource3" DataTextField="speciality" 
                    DataValueField="speciality" Height="16px" Width="132px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:heart diseaseConnectionString %>" 
                    
                    SelectCommand="SELECT DISTINCT [speciality] FROM [doctordb] ORDER BY [speciality]"></asp:SqlDataSource>
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
        </tr>
        <tr>
            <td>
            </td>
            <td>
            </td>
            <td>
                Doctor</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name" 
                    Height="16px" Width="130px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:heart diseaseConnectionString %>" 
                    
                    SelectCommand="SELECT [name] FROM [doctordb] WHERE ([speciality] = @speciality)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList2" Name="speciality" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
            </td>
            <td>
            </td>
            <td>
            </td>
            <td>
            </td>
            <td>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td class="style4">
            </td>
            <td class="style4">
            </td>
            <td class="style4">
                Question</td>
            <td rowspan="2">
                <asp:TextBox ID="TextBox1" runat="server" Height="60px" Width="281px"></asp:TextBox>
            </td>
            <td class="style4">
            </td>
            <td class="style4">
            </td>
            <td class="style4">
            </td>
            <td class="style4">
            </td>
            <td class="style4">
            </td>
            <td>
            </td>
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
        </tr>
        <tr>
            <td class="style5">
            </td>
            <td class="style5">
            </td>
            <td class="style5">
            </td>
            <td class="style5">
                <asp:Button ID="bt_submit" runat="server" Text="Submit" 
                    onclick="bt_submit_Click" BackColor="#009900" />
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
                <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataKeyField="slno" 
                    DataSourceID="SqlDataSource2" ForeColor="#333333" Width="655px" 
                    onselectedindexchanged="DataList1_SelectedIndexChanged">
                    <AlternatingItemStyle BackColor="White" />
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <ItemTemplate>
                        <br />
                        <table class="style3">
                            <tr>
                                <td>
                                    <asp:Label ID="slnoLabel" runat="server" Text='<%# Eval("slno") %>' />
                                </td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="docnameLabel" runat="server" Text='<%# Eval("docname") %>' />
                                </td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="questionLabel" runat="server" Text='<%# Eval("question") %>' />
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
                            </tr>
                        </table>
<br />
                        <asp:Label ID="answerLabel" runat="server" Text='<%# Eval("answer") %>' />
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:heart diseaseConnectionString %>" 
                    SelectCommand="SELECT * FROM [doubt_question] WHERE ([email] = @email)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lbl_email" Name="email" PropertyName="Text" 
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
