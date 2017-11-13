<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="Qicstart1.ProductDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style4
    {
        width: 50%;
    }
    .style6
    {
        font-size: small;
    }
    .style7
    {
        font-family: "Berlin Sans FB";
    }
    .style8
    {
        font-size: small;
        font-family: "Berlin Sans FB";
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css" />
    <table class="style1">
       <tr>
        <td align="center" bgcolor="White" colspan="2" >
            <section id="contact" class="content section-parallax parallaxBg" style="background-image: url(Image/contact-section-bg.jpg);">
    	        <div class="container text-center">
        	        <div class="row parallax-content">
            	    <h3>Product Details</h3>
                    </div><!-- end row -->
                </div><!-- end container -->
            </section>
        </td>
    </tr>
        <tr>
            <td align="center" class="style4">
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                    DataKeyNames="ProductID" DataSourceID="SqlDataSource1" Height="200px" 
                    Width="450px" style="text-align: center">
                    <Fields>
                        <asp:ImageField DataImageUrlField="pImage" ShowHeader="False">
                        </asp:ImageField>
                    </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:qicstartConnectionString %>" 
                    SelectCommand="SELECT * FROM [Products] WHERE ([ProductID] = @ProductID)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="ProductID" QueryStringField="ProductID" 
                            Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td style="width: 50%; text-align: left;" bgcolor="White">
                <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" 
                    BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="4" DataKeyNames="ProductID" DataSourceID="SqlDataSource1" 
                    ForeColor="Black" GridLines="Horizontal" Height="50px" Width="125px">
                    <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <Fields>
                        <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" 
                            SortExpression="ProductID" />
                    </Fields>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                </asp:DetailsView>
                <asp:DetailsView ID="DetailsView3" runat="server" AutoGenerateRows="False" 
                    BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="4" DataKeyNames="ProductID" DataSourceID="SqlDataSource1" 
                    Height="100px" Width="535px" class="table table-striped">
                    <EditRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <Fields>
                        <asp:BoundField DataField="pName" HeaderText="pName" ShowHeader="False" 
                            SortExpression="pName" />
                        <asp:BoundField DataField="pDesc" HeaderText="pDesc" ShowHeader="False" 
                            SortExpression="pDesc" />
                        <asp:BoundField DataField="pPrice" DataFormatString="SGD ${0}" 
                            HeaderText="pPrice" ShowHeader="False" SortExpression="pPrice" />
                        <asp:BoundField DataField="pFunctions" HeaderText="Functions Included: " 
                            SortExpression="pFunctions" />
                        <asp:BoundField DataField="pReq" HeaderText="Mobile Platform:" 
                            SortExpression="pReq" />
                    </Fields>
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" ForeColor="#003399" />
                </asp:DetailsView>
                <br />
                <span class="style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                Name Your Project:</span>
                <asp:TextBox ID="txtProjName" runat="server" BackColor="White" 
                    BorderColor="#009900" BorderWidth="1px" Height="40px"></asp:TextBox>
                <br />
                <br />
                <span class="style8">Extra Functions To Include:</span>
                <asp:DropDownList ID="ddlFunc" runat="server" Height="50px">
                    <asp:ListItem Selected="True">Calender Function</asp:ListItem>
                    <asp:ListItem>Paypal Checkout Function</asp:ListItem>
                    <asp:ListItem>Share To Social Networks Function</asp:ListItem>
                    <asp:ListItem>Beautiful Scroll Animations</asp:ListItem>
                    <asp:ListItem>Text Effects</asp:ListItem>
                    <asp:ListItem>Uniquely Designed Splash Scree</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                <span class="style6"><span class="style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Timeline(Days):</span> 
                <asp:DropDownList ID="ddlTime" runat="server" Height="50px" 
                    onselectedindexchanged="ddlTime_SelectedIndexChanged" AutoPostBack="True" >
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>15</asp:ListItem>
                    <asp:ListItem Value="30">30</asp:ListItem>
                </asp:DropDownList>
                </span>
                <asp:TextBox ID="txtCompletedDate" runat="server" BorderColor="Black" 
                    BorderWidth="2px" ReadOnly="True"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="btnAddToCart" runat="server" BackColor="White" 
                    BorderColor="#99FF33" BorderStyle="Solid" BorderWidth="2px" ForeColor="Lime" 
                    Height="50px" Text="Add To Cart" Width="100px" 
                    onclick="btnAddToCart_Click" />
                <br />
            </td>
        </tr>
        <tr>
            <td align="center" class="style4">
                &nbsp;</td>
            <td style="width: 50%; text-align: left;">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
