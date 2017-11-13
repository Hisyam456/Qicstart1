<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="CustomerChat.aspx.cs" Inherits="Qicstart1.CustomerChat" %>
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
</style> 
    <head>
<!--Start of Zopim Live Chat Script-->
<script type="text/javascript">
    window.$zopim || (function (d, s) {
    var z = $zopim = function (c) { z._.push(c) }, $ = z.s = d.createElement(s), e = d.getElementsByTagName(s)[0]; z.set = function (o) {
    z.set._.push(o)}; z._ = []; z.set._ = []; $.async = !0; $.setAttribute("charset", "utf-8");
    $.src = "//v2.zopim.com/?39SxVQAmvoBKwKwEl1qEV6IOuae9lX78"; z.t = +new Date; $.
    type = "text/javascript"; e.parentNode.insertBefore($, e)
    })(document, "script");
</script>
<!--End of Zopim Live Chat Script-->
</head>
    <table class="style1">
        <tr>
            <td align="center" bgcolor="White" colspan="3" class="style3">
            <section id="contact" class="content section-parallax parallaxBg" style="background-image: url(Image/pizza.jpg);">
    	        <div class="container text-center">
        	        <div class="row parallax-content">
                    <asp:Label ID="lblMessage" runat="server" Text="We Answer Your Queries Faster Than You Order Pizza" Font-Size="xx-large" ></asp:Label>
                    </div><!-- end row -->
                </div><!-- end container -->
            </section>
        </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
