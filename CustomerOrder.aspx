<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="CustomerOrder.aspx.cs" Inherits="Qicstart1.CustomerOrder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="css/style.css" />
<style type="text/css"> 
 .section-parallax
    {
        height: 400px; 
    }
   .parallax-content
    {
        padding-top: 200px; 
        padding-right: 800px; 
    }
</style>
    <table class="style1">
        <tr>
        <td align="center" bgcolor="White" colspan="3">
            <section id="contact" class="content section-parallax parallaxBg" style="background-image: url(Image/trees1.jpg);">
    	        <div class="container text-center">
        	        <div class="row parallax-content">
                    <asp:Label ID="lblText" runat="server" Text="Your Orders" 
                     style="font-size: xx-large"></asp:Label>
                     <br /> 
            	    <asp:Label ID="lblMessage" runat="server" Text="Label" 
                     style="font-size: xx-large"></asp:Label>
                     <br /> 
                     <asp:Label ID="lblOrderNo" runat="server" Text="Label" 
                     style="font-size: medium"></asp:Label>
                    </div><!-- end row -->
                </div><!-- end container -->
            </section>
        </td>
    </tr>
        <tr>
            <td colspan="3" width="100%">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="4" DataKeyNames="iOrderID" DataSourceID="SqlDataSource1" 
                    style="text-align: center; font-family: 'Segoe UI'; font-size: large;" 
                    Width="100%">
                    <Columns>
                        <asp:HyperLinkField DataNavigateUrlFields="iOrderID" 
                            DataNavigateUrlFormatString="CustomerOrder.aspx?OrderID={0}" 
                            DataTextField="iOrderID" HeaderText="Order ID" />
                        <asp:BoundField DataField="DateOfPurchase" HeaderText="Date Of Purchase" 
                            SortExpression="DateOfPurchase" />
                        <asp:BoundField DataField="DateOfDelivery" HeaderText="Estimated Date of Delivery" 
                            SortExpression="DateOfDelivery" />
                        <asp:BoundField DataField="TotalPrice" 
                            HeaderText="Total Price " SortExpression="TotalPrice" />
                        <asp:BoundField DataField="oOrderStatus" HeaderText="Order Status" 
                            SortExpression="oOrderStatus" />
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
                    SelectCommand="SELECT [iOrderID], [DateOfPurchase], [DateOfDelivery], [TotalPrice], [oOrderStatus] FROM [OrderSummary] WHERE ([UserID] = @UserID)">
                    <SelectParameters>
                        <asp:SessionParameter Name="UserID" SessionField="sUserId" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 33%" width="100%">
                &nbsp;</td>
            <td style="width: 33%; text-align: center;" width="100%">
                <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="1005px" 
                    AutoGenerateRows="False" CellPadding="4" DataSourceID="SqlDataSource2" 
                    ForeColor="#333333" GridLines="None" 
                    style="font-family: 'Segoe UI'; font-size: large">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                    <EditRowStyle BackColor="#999999" />
                    <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="ProjectID" HeaderText="ProjectID" 
                            InsertVisible="False" ReadOnly="True" SortExpression="ProjectID" />
                        <asp:BoundField DataField="OrderID" HeaderText="OrderID" 
                            SortExpression="OrderID" />
                        <asp:BoundField DataField="mDevID" HeaderText="mDevID" 
                            SortExpression="mDevID" />
                        <asp:BoundField DataField="mStaffID" HeaderText="mStaffID" 
                            SortExpression="mStaffID" />
                        <asp:BoundField DataField="mProgress" HeaderText="mProgress" 
                            SortExpression="mProgress" />
                        <asp:BoundField DataField="mPayStatus" HeaderText="mPayStatus" 
                            SortExpression="mPayStatus" />
                        <asp:BoundField DataField="mPayMode" HeaderText="mPayMode" 
                            SortExpression="mPayMode" />
                        <asp:BoundField DataField="mTotalAmt" HeaderText="mTotalAmt" 
                            SortExpression="mTotalAmt" />
                        <asp:BoundField DataField="mFileName" HeaderText="mFileName" 
                            SortExpression="mFileName" />
                            <asp:TemplateField>
                            <ItemTemplate>
                         <asp:LinkButton ID="lnkDownload" Text = "Download" CommandArgument = '<%# Eval("mFileName") %>' runat="server" OnClick = "DownloadFile"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Fields>
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:qicstartConnectionString %>" 
                    
                    SelectCommand="SELECT [ProjectID], [OrderID], [mDevID], [mStaffID], [mProgress], [mPayStatus], [mPayMode], [mTotalAmt], [mFileName] FROM [Projects] WHERE ([OrderID] = @OrderID)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="OrderID" QueryStringField="OrderID" 
                            Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td style="width: 33%" width="100%">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
