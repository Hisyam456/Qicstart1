<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="StaffLogin.aspx.cs" Inherits="Qicstart1.StaffLogin" %>
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
        top: 0px;
        left: 0px;
    }
</style>
    <table class="style1">
        <tr>
        <td align="center" bgcolor="White" colspan="3">
            <section id="contact" class="content section-parallax parallaxBg" style="background-image: url(Image/bike.jpg);">
    	        <div class="container text-center">
        	        <div class="row parallax-content">
                    <asp:Label ID="lblText" runat="server" Text="Staff Login" 
                     style="font-size: xx-large"></asp:Label>
                     <br /> 
                    </div><!-- end row -->
                </div><!-- end container -->
            </section>
        </td>
    </tr>
        <tr>
            <td style="width: 0%; text-align: right" width="20%">
                Staff Login ID:</td>
            <td style="width: 25%" width="30%">
                <asp:TextBox ID="txtLogin" runat="server" Height="40px" Width="100%"></asp:TextBox>
            </td>
            <td width="50%">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 0%" width="50%">
                Staff Password:</td>
            <td style="width: 25%" width="50%">
                <asp:TextBox ID="txtPass" runat="server" Height="40px" Width="100%" 
                    TextMode="Password"></asp:TextBox>
            </td>
            <td width="50%">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 0%" width="50%">
                &nbsp;</td>
            <td style="width: 25%" width="50%">
                &nbsp;</td>
            <td width="50%">
                <asp:Button ID="btnSubmit" runat="server" Height="40px" 
                    onclick="btnSubmit_Click" Text="Submit" Width="100px" />
            </td>
        </tr>
    </table>
</asp:Content>
