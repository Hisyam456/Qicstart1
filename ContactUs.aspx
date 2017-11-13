<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Qicstart1.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <head>
    <style>
      #map-canvas {
        width: 100%;
        height: 400px;
      }
        .style4
        {
            height: 41px;
            text-align: center;
        }
        .style5
        {
            width: 316px;
            height: 357px;
        }
        .style6
        {
            width: 23px;
            height: 22px;
        }
        .style7
        {
            width: 18px;
            height: 24px;
        }
        .style8
        {
            width: 23px;
            height: 18px;
        }
    </style>
    <script src="https://maps.googleapis.com/maps/api/js"></script>
    <script>
        function initialize() {
            var myLatlng = new google.maps.LatLng(1.330980, 103.930621);
            var mapOptions = {
                zoom: 15,
                center: myLatlng
            }
            var map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);

            var marker = new google.maps.Marker({
                position: myLatlng,
                map: map,
                title: 'Hello World!'
            });
        }

        google.maps.event.addDomListener(window, 'load', initialize);
        
    </script>
  </head>
    <table class="style1">
        <tr>
            <td colspan="2" style="text-align: center">
                <div id="map-canvas">
            </td>
        </tr>
        <tr>
            <td class="style4" width="40%">
                <img alt="" class="style5" src="Image/qicstartRobot.png" /></td>
            <td class="style4" width="60%">
                <p style="box-sizing: border-box; margin: 0px 0px 10px; font-family: Lato, 'Open Sans', sans-serif; font-size: 16px; line-height: 25px; font-weight: 300; color: rgb(128, 128, 128); font-style: normal; font-variant: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
                    We are a company
                    that Hack Prototypes and Quick Build Apps To help individuals&nbsp; map out their clarity using lean startup principles.</p>
                <hr class="divider-dashed" 
                    style="box-sizing: content-box; height: 0px; margin-top: 20px; margin-bottom: 20px; border-width: 1px 0px 0px; border-top-style: dashed; border-top-color: rgb(165, 179, 180); color: rgb(128, 128, 128); font-family: Lato, 'Open Sans', sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 300; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" />
                <address style="box-sizing: border-box; margin-bottom: 20px; font-style: normal; line-height: 1.42857143; color: rgb(128, 128, 128); font-family: Lato, 'Open Sans', sans-serif; font-size: 16px; font-variant: normal; font-weight: 300; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
                </address>
                <p style="box-sizing: border-box; margin: 0px 0px 10px; font-family: Lato, 'Open Sans', sans-serif; font-size: 16px; line-height: 25px; font-weight: 300; color: rgb(128, 128, 128);">
                    <img alt="" class="style7" src="Image/computer-internet-21.png" /> 341 Bedok 
                    North Road<br style="box-sizing: border-box;" />
                    Singapore 679237<br style="box-sizing: border-box;" />
                    <img alt="" class="style6" src="Image/computer-internet-31.png" />&nbsp;012.345.6789<span 
                        class="Apple-converted-space">&nbsp;</span><br style="box-sizing: border-box;" />
                    <img alt="" class="style8" src="Image/computer-internet-06.png" />&nbsp;<a 
                        href="mailto:mantii_ju@hotmail.com" 
                        style="box-sizing: border-box; color: rgb(1, 193, 193); text-decoration: none; transition: all 0.2s ease-out; -webkit-transition: all 0.2s ease-out; background: 0px 0px;">info@qicstart.com</a></p>
                <address>
                </address>
                <hr class="divider-dashed" 
                    style="box-sizing: content-box; height: 0px; margin-top: 20px; margin-bottom: 20px; border-width: 1px 0px 0px; border-top-style: dashed; border-top-color: rgb(165, 179, 180); color: rgb(128, 128, 128); font-family: Lato, 'Open Sans', sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 300; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" />
                <span style="color: rgb(128, 128, 128); font-family: Lato, 'Open Sans', sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 300; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);">
                Monday - Friday:<span class="Apple-converted-space">&nbsp;</span></span><strong 
                    style="box-sizing: border-box; font-weight: 700; color: rgb(128, 128, 128); font-family: Lato, 'Open Sans', sans-serif; font-size: 16px; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);"><span 
                    class="Apple-converted-space">24 Hours &nbsp;</span></strong><br 
                    style="box-sizing: border-box; color: rgb(128, 128, 128); font-family: Lato, 'Open Sans', sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 300; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" />
                <span style="color: rgb(128, 128, 128); font-family: Lato, 'Open Sans', sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 300; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);">
                Saturday - Sunday:<span class="Apple-converted-space">&nbsp;<strong>24 Hours</strong></span></span></td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
