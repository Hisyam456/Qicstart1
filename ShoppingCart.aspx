<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="Qicstart1.ShoppingCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <link rel="stylesheet" href="css/bootstrap.min.css">
 <link rel="stylesheet" href="css/style.css" />
 <style type="text/css">
 .section-parallax
    {
        height: 400px; 
    }
    .parallax-content
    {
        padding-top: 150px; 
    }
 </style>
    <table class="style1">
    <tr>
        <td style="text-align: center; width: 90%;" colspan="2">
        <section id="contact" class="content section-parallax parallaxBg" style="background-image: url(Image/tokyo.jpg);">
    	        <div class="container text-center">
        	        <div class="row parallax-content">
                    <asp:Label ID="lblShopping" runat="server" 
                     style="font-family: 'Adobe Devanagari'; font-size: xx-large" 
                     Text="Your Shopping Cart"></asp:Label>
                      </div><!-- end row -->
                </div><!-- end container -->
            </section>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:qicstartConnectionString %>" 
                SelectCommand="SELECT [iOrderID], [DateOfPurchase] FROM [OrderSummary] WHERE ([iOrderID] = @iOrderID)">
                <SelectParameters>
                    <asp:SessionParameter Name="iOrderID" SessionField="sOrderNo" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    </table>
    <table class="nav-justified">
        <tr>
            <td width="90%">
                &nbsp;</td>
            <td>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                DataKeyNames="iOrderID" DataSourceID="SqlDataSource1" Height="50px" 
                Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                <EditRowStyle BackColor="#999999" />
                <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="iOrderID" HeaderText="iOrderID" 
                        InsertVisible="False" ReadOnly="True" SortExpression="iOrderID" />
                    <asp:BoundField DataField="DateOfPurchase" HeaderText="DateOfPurchase" 
                        SortExpression="DateOfPurchase" />
                </Fields>
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            </asp:DetailsView>
            </td>
        </tr>
    </table>
    <table class="style1">
    <tr>
        <td colspan="2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="3">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataSourceID="SqlDataSource2" Width="100%" CellPadding="4" 
                ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="OrderID" HeaderText="OrderID" 
                        SortExpression="OrderID" />
                    <asp:BoundField DataField="ProductID" HeaderText="ProductID" 
                        SortExpression="ProductID" />
                    <asp:BoundField DataField="pName" HeaderText="Product Name" 
                        SortExpression="pName" />
                    <asp:BoundField DataField="iAmt" HeaderText="Unit Price" 
                        SortExpression="iAmt" DataFormatString="SGD ${0}" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:qicstartConnectionString %>" 
                SelectCommand="SELECT * FROM [itemsView] WHERE ([OrderID] = @OrderID)" 
                DeleteCommand="DELETE FROM [itemsView] WHERE ([OrderID] = @OrderID)">
                <DeleteParameters>
                    <asp:Parameter Name="OrderID" />
                </DeleteParameters>
                <SelectParameters>
                    <asp:SessionParameter Name="OrderID" SessionField="sOrderNo" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:qicstartConnectionString %>" 
                SelectCommand="SELECT * FROM [oTotalsView] WHERE ([iOrderID] = @iOrderID)">
                <SelectParameters>
                    <asp:SessionParameter Name="iOrderID" SessionField="sOrderNo" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td width="90%">
            &nbsp;</td>
        <td>
            <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" 
                DataKeyNames="iOrderID" DataSourceID="SqlDataSource3" Height="50px" 
                Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                <EditRowStyle BackColor="#999999" />
                <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="Amount" HeaderText="Amount" 
                        SortExpression="Amount" DataFormatString="SGD ${0}" />
                    <asp:BoundField DataField="GST" HeaderText="GST" ReadOnly="True" 
                        SortExpression="GST" DataFormatString="SGD ${0}" />
                    <asp:BoundField DataField="Total" HeaderText="Total" ReadOnly="True" 
                        SortExpression="Total" DataFormatString="SGD ${0}" />
                </Fields>
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            </asp:DetailsView>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: center" ID="paymentMode" runat="server" colspan="3">
            Payment Method:
            <asp:DropDownList ID="ddlPayMode" runat="server" Width="200px">
                <asp:ListItem>Paypal</asp:ListItem>
                <asp:ListItem>Bank Transfer</asp:ListItem>
            </asp:DropDownList>
            <asp:TextBox ID="txtTotal" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="text-align: center" colspan="3">
            <asp:Button ID="btnCheckout" runat="server" onclick="btnCheckout_Click" 
                Text="Checkout" />
        </td>
    </tr>
    <tr>
        <td colspan="3">
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="3">
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="3">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>
