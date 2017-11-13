<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Qicstart1.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/main.css" type="text/css">
    <style type="text/css">
        .style4
        {
            width: 359px;
            height: 330px;
            margin-right: 15px;
        }
        .style5
        {
            width: 358px;
            height: 333px;
        }
        .style6
        {
            width: 358px;
            height: 334px;
        }
        .style8
        {
        }
        .style9
        {
            width: 330px;
            height: 699px;
        }
        .style10
        {
            width: 696px;
            height: 574px;
        }
        .social-icons a.facebook {
      background-image: url(../Image/Social/facebook.png);
    }
    .social-icons a.twitter {
      background-image: url(../Image/Social/twitter.png);
    }
    .social-icons a.linkedin {
      background-image: url(../Image/Social/linkedin.png);
    }
    .social-icons a.youtube {
      background-image: url(../Image/Social/youtube.png);
    }
    .social-icons a.dribbble {
      background-image: url(../Image/Social/dribbble.png);
    }
    .social-icons a.flickr {
      background-image: url(../Image/Social/flickr.png);
    }
    .social-icons a.pinterest {
      background-image: url(../Image/Social/pinterest.png);
    }
    .social-icons a.vimeo {
      background-image: url(../Image/Social/vimeo.png);
    }
    .social-icons a.tumblr {
      background-image: url(../Image/Social/tumblr.png);
    }
    .social-icons a.skype {
      background-image: url(../Image/Social/skype.png);
    }
    .social-icons a {
      width: 80px;
      height: 80px;
    }
    .parallax-content
    {
        padding-top:70px; 
    }
    #contact a.btn
    {
        padding: 10px; 
    }
    .parallax-content h5
    {
     padding: 15px;    
    }
   </style>
   <head>
   <script src="//load.sumome.com/" data-sumo-site-id="2e34dfb33f52f3d1adf20ee9fb67b71b601c527c3932fc2659edfa1d81927421" async="async"></script>
   </head>
    </asp:Content>
    <asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1" class="smoothScroll">
        <section id="contact" class="content section-parallax parallaxBg" style="background-image: url(Upload/BannerImage/App.png); height: 500px;">
    </section>
            <table class="style1" >
                <tr>
                    <td align="center" style="width: 33%" bgcolor="#66CCFF">
                        <img alt="" class="style5" src="Image/Snip1.PNG" /></td>
                    <td align="center" style="width: 33%" bgcolor="Silver" colspan="2">
                        <img alt="" class="style4" src="Image/Snip2.PNG" /></td>
                    <td align="center" style="width: 33%" bgcolor="#CCFFCC">
                        <img alt="" class="style6" src="Image/Snip3.PNG" /></td>
                </tr>
                <tr>
                    <td colspan="4" style="text-align: center; width: 100%;" class="smoothScroll">
                    <section id="contact" class="content section-parallax parallaxBg" style="background-image: url(Image/3.jpg); height: 300px;">
    	                <div class="layer"></div>
    	                <div class="container text-center">
        	                <div class="row parallax-content">
            	                <h2><strong>We Are A Team</strong></h2>
                                <p>that Hack Prototypes and Quick Build Apps<br />To help companies map out their clarity using lean startup principles. </p>
				                <a href="Products.aspx" class="btn rounded btn-lg pi-btn-default">Start Building Now</a><br />
                                <h5 class="weight-100">or give us call <span class="piksell-color weight-700">+65-6764-1128</span></h5>
                            </div><!-- end row -->
                    </div><!-- end container -->
                    </section></td>
            </table>
                <footer>  
                    <!-- social icons -->
                    <div class="social-icons">
                            <a class="facebook" href="#"></a>
                            <a class="twitter" href="#"></a>
                            <a class="linkedin" href="#"></a>
                            <a class="dribbble" href="#"></a>
                            <a class="flickr" href="#"></a>
                            <a class="skype" href="#"></a>
                            <a class="pinterest" href="#"></a>
                            <a class="vimeo" href="#"></a>
                            <a class="tumblr" href="#"></a>
                            <a class="youtube" href="#"></a>
                    </div>
                    <!-- end social icons -->
</footer>
<!-- end footer -->
</asp:Content>

