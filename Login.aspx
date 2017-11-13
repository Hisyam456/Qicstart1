<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Qicstart1.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="css/style.css" />
<style>
.section-parallax{
height: 300px; 
}
.parallax-content h1
{
    margin-top: 100px;
     
}
</style>
    <table class="style1">
        <tr>
         <td align="center" bgcolor="White" colspan="3">
            <section id="contact" class="content section-parallax parallaxBg" style="background-image: url(Image/idea.jpg);">
    	        <div class="container text-center">
        	        <div class="row parallax-content">
            	    <h1>Customer Login</h1>
                    <p>To Your Next Great Software Idea</p>
                    </div><!-- end row -->
                </div><!-- end container -->
            </section>
        </td>
        </tr>
        <tr>
            <td bgcolor="#009900" 
                style="height: 50px; width: 20%; color: #000000; text-align: right;">
                Username: </td>
            <td bgcolor="#009900" style="height: 50px; width: 30%;">
                <asp:TextBox ID="txtUser" runat="server" Height="40px" Width="600px"></asp:TextBox>
            </td>
            <td bgcolor="#009900" style="height: 50px; width: 50%; text-align: left;">
                <asp:Label ID="lblUser" runat="server" style="color: #000000" 
                    Text="[lbluserMessage]"></asp:Label>
            </td>
        </tr>
        <tr>
            <td bgcolor="#009900" 
                style="height: 50px; width: 20%; text-align: right; color: #000000;">
                Password:</td>
            <td bgcolor="#009900" style="height: 50px; width: 30%;">
                <asp:TextBox ID="txtPass" runat="server" Height="40px" Width="600px" 
                    TextMode="Password"></asp:TextBox>
            </td>
            <td bgcolor="#009900" style="height: 50px; width: 50%; text-align: left;">
                <asp:Label ID="lblPass" runat="server" style="color: #000000" 
                    Text="[lblPassMessage]"></asp:Label>
            </td>
        </tr>
        <tr>
            <td bgcolor="#009900" style="height: 50px; width: 20%">
                &nbsp;</td>
            <td bgcolor="#009900" style="height: 50px; width: 30%; text-align: center;">
                <asp:Button ID="btnLogin" runat="server" BorderStyle="Double" Height="40px" 
                    onclick="btnLogin_Click" Text="Login" Width="150px" />
            </td>
            <td bgcolor="#009900" style="height: 50px; width: 50%;">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
