<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MyAccount.aspx.cs" Inherits="Qicstart1.MyAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css" />
<style type="text/css">
    .style4
    {
        width: 128px;
        height: 128px;
    }
    .style5
    {
        font-size: small;
    }
    .style7
    {
        height: 25px;
    }
    .style8
    {
        font-size: xx-large;
        font-family: "Freestyle Script";
    }
    .section-parallax
    {
        height: 400px; 
    }
   .parallax-content
    {
        padding-top: 200px; 
        padding-right: 800px; 
    }
    .style9
    {
        width: 128px;
        height: 130px;
    }
</style>
    <table class="style1" id="logHistory">
        <tr>
        <td align="center" bgcolor="White" colspan="3">
            <section id="contact" class="content section-parallax parallaxBg" style="background-image: url(Image/trees1.jpg);">
    	        <div class="container text-center">
        	        <div class="row parallax-content">
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
    </table>
    <table class="style1" id="myAccTable" runat='server'>
    <tr>
        <td class="style7">
            </td>
        <td class="style7">
            &nbsp;</td>
    </tr>
    <tr>
       <td style="width: 33%; text-align: center;">
            <img alt="" class="style4" src="Image/ecommerce-12@2x.png" /><br />
            <br />
            <span class="style8">Shop App Templates</span><span class="style5"><br />
            </span>
            <br />
            <a href="Products.aspx" class="btn pi-btn-default" type="button">Go To Shop</a>
            <br />
        </td>
        <td style="width: 33%; text-align: center;">
            <img alt="" class="style4" src="Image/orders.png" /><br />
            <br />
            <span class="style8">My Orders</span><span class="style5"><br />
            </span>
            <br />
            <a href="CustomerOrder.aspx" class="btn pi-btn-default" type="button">My Orders</a>
            <br />
        </td>
        <td style="width: 33%; text-align: center;">
            <img alt="" class="style4" src="Image/support.png" /><br />
            <br />
            <span class="style8">Contact Customer Support </span><span class="style5"><br />
            </span>
            <br />
            <a href="CustomerChat.aspx" class="btn pi-btn-default" type="button">Contact Support</a>
            <br />
        </td>
    </tr>
    <tr>
       <td style="width: 33%; text-align: center;">
            &nbsp;</td>
        <td style="width: 33%; text-align: center;">
            &nbsp;</td>
        <td style="width: 33%; text-align: center;">
            &nbsp;</td>
    </tr>
    <tr>
       <td style="width: 33%; text-align: center;">
            <img alt="" class="style4" 
                src="http://localhost:60679/Image/social-11@2x.png" /><br />
            <br />
            <span class="style8">Update Details</span><br class="style8" />
            <br />
            <asp:Button ID="btnUpdate" runat="server" Text="Update Details" />
        </td>
        <td style="width: 33%; text-align: center;">
            <img alt="" class="style9" 
                src="http://localhost:60679/Image/social-21@2x.png" /><br />
            <br />
            <span class="style8">Log Out</span><br />
            <br />
            <asp:Button ID="btnLogout" runat="server" Text="Log Out" 
                onclick="btnLogout_Click" />
        </td>
        <td style="width: 33%; text-align: center;">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>
