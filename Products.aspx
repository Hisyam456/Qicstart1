<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="Qicstart1.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<link rel="stylesheet" href="css/style.css" />
<style>
.section-parallax{
height: 300px; 
}
.parallax-content h3
{
    margin-top: 100px;
}
</style>
<head>
   <script src="//load.sumome.com/" data-sumo-site-id="2e34dfb33f52f3d1adf20ee9fb67b71b601c527c3932fc2659edfa1d81927421" async="async"></script>
   </head>
    <table class="style1">
    <tr>
        <td align="center" bgcolor="White" colspan="4">
            <section id="contact" class="content section-parallax parallaxBg" style="background-image: url(Image/contact-section-bg.jpg);">
    	        <div class="container text-center">
        	        <div class="row parallax-content">
            	    <h3>Our Products</h3>
                    </div><!-- end row -->
                </div><!-- end container -->
            </section>
        </td>
    </tr>
    <tr>
        <td style="width: 25%; " align="center">
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" 
                CellPadding="4" DataKeyNames="ProductID" DataSourceID="SqlDataSource1" 
                GridLines="Horizontal" Height="100px" Width="300px" 
                style="text-align: center; font-weight: 700;">
                <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:ImageField DataImageUrlField="pImage" HeaderText="Product Image" 
                        ShowHeader="False">
                    </asp:ImageField>
                    <asp:HyperLinkField DataNavigateUrlFields="ProductID" 
                        DataNavigateUrlFormatString="ProductDetails.aspx?ProductID={0}" 
                        DataTextField="pName" ShowHeader="False" />
                    <asp:BoundField DataField="pPrice" DataFormatString="SGD ${0}" 
                        HeaderText="pPrice" ShowHeader="False" SortExpression="pPrice" />
                </Fields>
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:qicstartConnectionString %>" 
                SelectCommand="SELECT [pName], [pPrice], [pImage], [ProductID] FROM [Products] WHERE ([ProductID] = @ProductID)">
                <SelectParameters>
                    <asp:QueryStringParameter DefaultValue="1" Name="ProductID" 
                        QueryStringField="ID" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        <td style="width: 25%" align="center">
            <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" 
                BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" 
                CellPadding="4" DataKeyNames="ProductID" DataSourceID="SqlDataSource2" 
                GridLines="Horizontal" Height="100px" style="text-align: center; font-weight: 700;" 
                Width="300px">
                <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:ImageField DataImageUrlField="pImage" HeaderText="Product Image" 
                        ShowHeader="False">
                    </asp:ImageField>
                    <asp:HyperLinkField DataNavigateUrlFields="ProductID" 
                        DataNavigateUrlFormatString="ProductDetails.aspx?ProductID={0}" 
                        DataTextField="pName" HeaderText="Name" ShowHeader="False" />
                    <asp:BoundField DataField="pPrice" DataFormatString="SGD ${0}" 
                        HeaderText="Price" ShowHeader="False" SortExpression="pPrice" />
                </Fields>
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:qicstartConnectionString %>" 
                SelectCommand="SELECT [ProductID], [pName], [pPrice], [pImage] FROM [Products] WHERE ([ProductID] = @ProductID)">
                <SelectParameters>
                    <asp:QueryStringParameter DefaultValue="2" Name="ProductID" 
                        QueryStringField="ID" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
        <td style="width: 25%" align="center">
            <asp:DetailsView ID="DetailsView3" runat="server" AutoGenerateRows="False" 
                CellPadding="4" DataKeyNames="ProductID" DataSourceID="SqlDataSource3" 
                Height="100px" Width="300px" style="text-align: center; font-weight: 700;" BackColor="White" 
                BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" 
                GridLines="Horizontal">
                <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:ImageField DataImageUrlField="pImage" ShowHeader="False">
                    </asp:ImageField>
                    <asp:HyperLinkField DataNavigateUrlFields="ProductID" 
                        DataNavigateUrlFormatString="ProductDetails.aspx?ProductID={0}" 
                        DataTextField="pName" ShowHeader="False" />
                    <asp:BoundField DataField="pPrice" DataFormatString="SGD ${0}" 
                        HeaderText="pPrice" ShowHeader="False" SortExpression="pPrice" />
                </Fields>
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:qicstartConnectionString %>" 
                SelectCommand="SELECT [ProductID], [pName], [pPrice], [pImage] FROM [Products] WHERE ([ProductID] = @ProductID)">
                <SelectParameters>
                    <asp:QueryStringParameter DefaultValue="3" Name="ProductID" 
                        QueryStringField="ID" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
        <td style="width: 25%" align="center">
            <asp:DetailsView ID="DetailsView4" runat="server" AutoGenerateRows="False" 
                DataKeyNames="ProductID" DataSourceID="SqlDataSource4" Height="100px" 
                Width="300px" style="text-align: center; font-weight: 700;" BackColor="White" 
                BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" 
                CellPadding="4" GridLines="Horizontal">
                <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:ImageField DataImageUrlField="pImage" ShowHeader="False">
                    </asp:ImageField>
                    <asp:HyperLinkField DataNavigateUrlFields="ProductID" 
                        DataNavigateUrlFormatString="ProductDetails.aspx?ProductID={0}" 
                        DataTextField="pName" ShowHeader="False" />
                    <asp:BoundField DataField="pPrice" DataFormatString="SGD ${0}" 
                        HeaderText="pPrice" ShowHeader="False" SortExpression="pPrice" />
                </Fields>
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                ConnectionString="<%$ ConnectionStrings:qicstartConnectionString %>" 
                SelectCommand="SELECT [ProductID], [pName], [pPrice], [pImage] FROM [Products] WHERE ([ProductID] = @ProductID)">
                <SelectParameters>
                    <asp:QueryStringParameter DefaultValue="4" Name="ProductID" 
                        QueryStringField="ID" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td style="width: 25%" align="center">
            <asp:DetailsView ID="DetailsView5" runat="server" AutoGenerateRows="False" 
                BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" 
                CellPadding="4" DataKeyNames="ProductID" DataSourceID="SqlDataSource5" 
                GridLines="Horizontal" Height="100px" Width="300px" 
                style="text-align: center; font-weight: 700;">
                <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:ImageField DataImageUrlField="pImage" ShowHeader="False">
                    </asp:ImageField>
                    <asp:HyperLinkField DataNavigateUrlFields="ProductID" 
                        DataNavigateUrlFormatString="ProductDetails.aspx?ProductID={0}" 
                        DataTextField="pName" ShowHeader="False" />
                    <asp:BoundField DataField="pPrice" DataFormatString="SGD ${0}" 
                        HeaderText="pPrice" ShowHeader="False" SortExpression="pPrice" />
                </Fields>
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                ConnectionString="<%$ ConnectionStrings:qicstartConnectionString %>" 
                SelectCommand="SELECT [ProductID], [pName], [pPrice], [pImage] FROM [Products] WHERE ([ProductID] = @ProductID)">
                <SelectParameters>
                    <asp:QueryStringParameter DefaultValue="5" Name="ProductID" 
                        QueryStringField="ID" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
        <td style="width: 25%" align="center">
            <asp:DetailsView ID="DetailsView6" runat="server" AutoGenerateRows="False" 
                BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" 
                CellPadding="4" DataKeyNames="ProductID" DataSourceID="SqlDataSource6" 
                GridLines="Horizontal" Height="100px" Width="300px" 
                style="text-align: center; font-weight: 700;">
                <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:ImageField DataImageUrlField="pImage" ShowHeader="False">
                    </asp:ImageField>
                    <asp:HyperLinkField DataNavigateUrlFields="ProductID" 
                        DataNavigateUrlFormatString="ProductDetails.aspx?ProductID={0}" 
                        DataTextField="pName" ShowHeader="False" />
                    <asp:BoundField DataField="pPrice" HeaderText="pPrice" ShowHeader="False" 
                        SortExpression="pPrice" DataFormatString="SGD ${0}" />
                </Fields>
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Right" />
                <RowStyle BackColor="White" ForeColor="#333333" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                ConnectionString="<%$ ConnectionStrings:qicstartConnectionString %>" 
                SelectCommand="SELECT [ProductID], [pName], [pPrice], [pImage] FROM [Products] WHERE ([ProductID] = @ProductID)">
                <SelectParameters>
                    <asp:QueryStringParameter DefaultValue="6" Name="ProductID" 
                        QueryStringField="ID" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
        <td style="width: 25%" align="center">
            <asp:DetailsView ID="DetailsView7" runat="server" AutoGenerateRows="False" 
                BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" 
                CellPadding="4" DataKeyNames="ProductID" DataSourceID="SqlDataSource7" 
                GridLines="Horizontal" Height="100px" style="font-weight: 700; text-align: center" Width="300px">
                <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:ImageField DataImageUrlField="pImage" ShowHeader="False">
                    </asp:ImageField>
                    <asp:HyperLinkField DataNavigateUrlFields="ProductID" 
                        DataNavigateUrlFormatString="ProductDetails.aspx?ProductID={0}" 
                        DataTextField="pName" ShowHeader="False" />
                    <asp:BoundField DataField="pPrice" DataFormatString="SGD ${0}" 
                        HeaderText="pPrice" ShowHeader="False" SortExpression="pPrice" />
                </Fields>
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
                ConnectionString="<%$ ConnectionStrings:qicstartConnectionString %>" 
                SelectCommand="SELECT [ProductID], [pName], [pImage], [pPrice] FROM [Products] WHERE ([ProductID] = @ProductID)">
                <SelectParameters>
                    <asp:QueryStringParameter DefaultValue="7" Name="ProductID" 
                        QueryStringField="ID" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
        <td style="width: 25%" align="center">
            <asp:DetailsView ID="DetailsView8" runat="server" AutoGenerateRows="False" 
                BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" 
                CellPadding="4" DataKeyNames="ProductID" DataSourceID="SqlDataSource8" 
                GridLines="Horizontal" Height="100px" style="font-weight: 700; text-align: center" Width="300px">
                <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:ImageField DataImageUrlField="pImage" ShowHeader="False">
                    </asp:ImageField>
                    <asp:HyperLinkField DataNavigateUrlFields="ProductID" 
                        DataNavigateUrlFormatString="ProductDetails.aspx?ProductID={0}" 
                        DataTextField="pName" ShowHeader="False" />
                    <asp:BoundField DataField="pPrice" HeaderText="pPrice" ShowHeader="False" 
                        SortExpression="pPrice" DataFormatString="SGD ${0}" />
                </Fields>
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource8" runat="server" 
                ConnectionString="<%$ ConnectionStrings:qicstartConnectionString %>" 
                SelectCommand="SELECT [ProductID], [pName], [pPrice], [pImage] FROM [Products] WHERE ([ProductID] = @ProductID)">
                <SelectParameters>
                    <asp:QueryStringParameter DefaultValue="8" Name="ProductID" 
                        QueryStringField="ID" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td style="width: 25%">
            &nbsp;</td>
        <td style="width: 25%">
            &nbsp;</td>
        <td style="width: 25%">
            &nbsp;</td>
        <td style="width: 25%">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>
