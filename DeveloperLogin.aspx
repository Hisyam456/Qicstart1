<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="DeveloperLogin.aspx.cs" Inherits="Qicstart1.DeveloperLogin" %>
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
    
    }
</style>
    <table class="style1">
        <tr>
            <td colspan="3" style="text-align: right">
            <section id="contact" class="content section-parallax parallaxBg" style="background-image: url(Image/developer.jpg);">
    	        <div class="container text-center">
        	        <div class="row parallax-content">
                    Developer Login
                    </div><!-- end row -->
                </div><!-- end container -->
            </section>
            </td>
        </tr>
        <tr>
            <td style="width: 0%; text-align: right" width="10%">
                Developer ID:
            </td>
            <td style="width: 20%" width="30%">
                <asp:TextBox ID="txtDevID" runat="server" Height="30px" Width="400px"></asp:TextBox>
            </td>
            <td width="60%">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 0%; text-align: right" width="10%">
                Developer Password:
            </td>
            <td style="width: 20%" width="30%">
                <asp:TextBox ID="txtDevPass" runat="server" Height="30px" Width="400px" 
                    TextMode="Password"></asp:TextBox>
            </td>
            <td width="60%">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 0%; text-align: right" width="10%">
                &nbsp;</td>
            <td style="width: 20%" width="30%">
                &nbsp;</td>
            <td width="60%">
                <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" 
                    Text="Submit" />
            </td>
        </tr>
    </table>
</asp:Content>
