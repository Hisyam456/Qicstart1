<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="DeveloperMain.aspx.cs" Inherits="Qicstart1.DeveloperMain" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="css/style.css" />
<style type="text/css">
    .section-parallax{
    height: 400px; 
    }
    .style3
    {
        height: 47px;
        font-family: "Segoe UI";
        font-size: large;
    }
    .style4
    {
        font-family: "Segoe UI";
        color: #000000;
        font-size: xx-large;
    }
    .style5
    {
        width: 100%;
        height: 223px;
    }
    .parallax-content 
    {
    margin-top: 100px;
    }
</style>
    <table class="style1" id="DevMainTable" runat=server>
        <tr>
            <td align="center" bgcolor="White" colspan="3" class="style3">
            <section id="contact" class="content section-parallax parallaxBg" style="background-image: url(Image/developer.jpg);">
    	        <div class="container text-center">
        	        <div class="row parallax-content">
                    <asp:Label ID="lblMessage" runat="server" Text="Label" Font-Size="xx-large" ></asp:Label>
                    </div><!-- end row -->
                </div><!-- end container -->
            </section>
        </td>
        </tr>
        </table>
        <table class="style1" id="Table1" runat=server>
        <tr>
            <td colspan="3" align=center class="style5" valign="middle" width="40%">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource1" Width="100%" BackColor="White" 
                    BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                    GridLines="Vertical" style="font-family: 'Segoe UI'; font-size: medium">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:BoundField DataField="ProjectID" HeaderText="ProjectID" 
                            InsertVisible="False" ReadOnly="True" SortExpression="ProjectID" />
                        <asp:BoundField DataField="mDevID" HeaderText="Developer ID" 
                            SortExpression="mDevID" />
                        <asp:BoundField DataField="mProgress" HeaderText="Project Progress" 
                            SortExpression="mProgress" />
                        <asp:BoundField DataField="mStaffID" HeaderText="Staff ID" 
                            SortExpression="mStaffID" />
                        <asp:BoundField DataField="mPayMode" HeaderText="Payment Mode" 
                            SortExpression="mPayMode" />
                        <asp:BoundField DataField="mPayStatus" HeaderText="Payment Status" 
                            SortExpression="mPayStatus" />
                        <asp:BoundField DataField="mTotalAmt" HeaderText="Total Amount" 
                            SortExpression="mTotalAmt" DataFormatString="SGD ${0}" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:qicstartConnectionString %>" 
                    SelectCommand="SELECT [ProjectID], [OrderID], [mDevID], [mProgress], [mStaffID], [mPayMode], [mPayStatus], [mTotalAmt] FROM [Projects] ORDER BY [OrderID]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td colspan="3" width="50%" style="width: 100%; text-align: center">
                Select Project ID To Work On: 
                <asp:DropDownList ID="ddlProjID" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="ProjectID" 
                    DataValueField="ProjectID">
                </asp:DropDownList>
&nbsp;Dev ID:
                <asp:TextBox ID="txtDevID" runat="server" BorderColor="Black" 
                    BorderStyle="Solid" BorderWidth="3px" ReadOnly="True"></asp:TextBox>
&nbsp;<asp:Button ID="btnSubmit" runat="server" Text="Submit" onclick="btnSubmit_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="3" width="50%" style="width: 100%; text-align: center;">
                <asp:Button ID="btnDevOrders" runat="server" onclick="btnDevOrders_Click" 
                    Text="My Pending Orders" />
            </td>
        </tr>
    </table>
</asp:Content>
