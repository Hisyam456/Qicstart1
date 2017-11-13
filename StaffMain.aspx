<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="StaffMain.aspx.cs" Inherits="Qicstart1.StaffMain1" %>
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
    }
    .style4
    {
        width: 128px;
        height: 130px;
    }
    .style5
    {
        width: 128px;
        height: 128px;
    }
</style>
    <table class="style1">
        <tr>
            <td colspan="3" style="text-align: center">
                <section id="contact" class="content section-parallax parallaxBg" style="background-image: url(Image/bike.jpg);">
    	        <div class="container text-center">
        	        <div class="row parallax-content">
                    <asp:Label ID="lblStaffName" runat="server" Text="" 
                     style="font-size: xx-large"></asp:Label>
                     <br /> 
                    </div><!-- end row -->
                </div><!-- end container -->
            </section>
            </td>
        </tr>
    </table>
    <table width="100%" id="Table1" runat="server">
        <tr>
            <td style="text-align: center" width="33%">
                <img alt="" class="style4" src="Image/Analytics.png" /><br />
                <br />
                <asp:Button ID="btnAnalytics" runat="server" onclick="btnAnalytics_Click" 
                    Text="Staff Analytics" Width="200px" />
            </td>
            <td style="text-align: center" width="33%">
                <img alt="" class="style5" src="Image/Developers.png" /><br />
                <br />
                <asp:Button ID="btnDeveloper" runat="server" Text="Add Developer Account" 
                    onclick="btnDeveloper_Click" />
            </td>
            <td style="text-align: center" width="33%">
                <img alt="" class="style4" src="Image/Staff.png" /><br />
                <br />
                <asp:Button ID="btnStaff" runat="server" Text="Add Staff Account" 
                    onclick="btnStaff_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="3" style="text-align: center">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
