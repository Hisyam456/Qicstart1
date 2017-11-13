<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="StaffProjects.aspx.cs" Inherits="Qicstart1.StaffMain" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="css/style.css" />
<style type="text/css">
    .section-parallax{
    height: 400px; 
    }
    .parallax-content 
    {
        margin-top: 100px;
    }
    .style4
    {
        height: 29px;
    }
</style>
    <table class="style1">
       <tr>
        <td align="center" bgcolor="White">
            <section id="contact" class="content section-parallax parallaxBg" style="background-image: url(Image/trees1.jpg);">
    	        <div class="container text-center">
        	        <div class="row parallax-content">
            	    <asp:Label ID="lblMessage" runat="server" Text="Label" 
                     style="font-size: xx-large"></asp:Label>
                     <br /> 
                    </div><!-- end row -->
                </div><!-- end container -->
            </section>
        </td>
    </tr>
        <tr>
            <td width="100%">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataSourceID="SqlDataSource1" Height="200px" Width="100%" 
                    BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
                    
                    style="text-align: center; margin-top: 0px; font-family: 'Segoe UI'; font-size: small;">
                    <Columns>
                        <asp:BoundField DataField="ProjectID" HeaderText="ProjectID" 
                            InsertVisible="False" ReadOnly="True" SortExpression="ProjectID" />
                        <asp:BoundField DataField="OrderID" HeaderText="OrderID" 
                            SortExpression="OrderID" />
                        <asp:BoundField DataField="mDevID" HeaderText="Devloper ID" 
                            SortExpression="mDevID" />
                        <asp:BoundField DataField="mStaffID" HeaderText="Staff ID" 
                            SortExpression="mStaffID" />
                        <asp:BoundField DataField="mProgress" HeaderText="Project Progress" 
                            SortExpression="mProgress" />
                        <asp:BoundField DataField="mPayMode" HeaderText="Payment Mode" 
                            SortExpression="mPayMode" />
                        <asp:BoundField DataField="mPayStatus" HeaderText="Payment Status" 
                            SortExpression="mPayStatus" />
                        <asp:BoundField DataField="mTotalAmt" HeaderText="Total Order Amount" 
                            SortExpression="mTotalAmt" DataFormatString="SGD ${0}" />
                    </Columns>
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" ForeColor="#003399" />
                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SortedAscendingCellStyle BackColor="#EDF6F6" />
                    <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                    <SortedDescendingCellStyle BackColor="#D6DFDF" />
                    <SortedDescendingHeaderStyle BackColor="#002876" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:qicstartConnectionString %>" 
                    SelectCommand="SELECT [ProjectID], [OrderID], [mDevID], [mStaffID], [mProgress], [mPayMode], [mPayStatus], [mTotalAmt] FROM [Projects]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style4" style="text-align: center">
                Choose a Project ID:
                <asp:DropDownList ID="ddlProjID" runat="server" DataSourceID="SqlDataSource1" 
                    DataTextField="ProjectID" DataValueField="ProjectID">
                </asp:DropDownList>
&nbsp;<asp:TextBox ID="txtStaffID" runat="server"></asp:TextBox>
                <asp:Button ID="btnProject" runat="server" onclick="btnProject_Click" 
                    Text="Choose Project" />
            </td>
        </tr>
    </table>
</asp:Content>
