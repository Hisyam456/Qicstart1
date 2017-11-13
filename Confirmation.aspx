<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Confirmation.aspx.cs" Inherits="Qicstart1.Confirmation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style3
        {
            width: 288px;
            height: 281px;
        }
        .style4
        {
            font-size: large;
            color: #99CC00;
        }
        .style5
        {
            color: #99CC00;
        }
        .style6
        {
            font-size: small;
        }
        .style7
        {
            font-size: small;
            color: #99CC00;
        }
        .style8
        {
            font-family: "Segoe UI";
        }
        .style9
        {
            width: 128px;
            height: 128px;
        }
        .style10
        {
            height: 40px;
        }
        .style11
        {
            height: 40px;
            font-family: "Segoe UI";
            color: #009900;
        }
        .style12
        {
            color: #009900;
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
        <tr>
            <td colspan="6" style="text-align: center">
                <img alt="" class="style3" src="http://localhost:60679/Image/logo1.jpg" /></td>
        </tr>
        <tr>
            <td style="font-family: 'Segoe UI'; text-align: center; font-size: xx-large">
                &nbsp;</td>
            <td colspan="4" 
                style="font-family: 'Segoe UI'; text-align: center; font-size: xx-large">
                <span class="style5">Dear </span>
                <asp:Label ID="myName" runat="server" CssClass="style5" Text="Label"></asp:Label>
                <br />
                <span class="style4">Thank You For Shopping With Us!</span></td>
            <td style="font-family: 'Segoe UI'; text-align: center; font-size: xx-large">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-family: 'Segoe UI'; text-align: center">
                &nbsp;</td>
            <td colspan="4" style="font-family: 'Segoe UI'; text-align: center">
                &nbsp;</td>
            <td style="font-family: 'Segoe UI'; text-align: center">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-family: 'Segoe UI'; text-align: center">
                &nbsp;</td>
            <td colspan="4" style="font-family: 'Segoe UI'; text-align: center">
                <span class="style5"><span class="style6">Your Order Number Is: </span></span>
                <asp:Label ID="myOrderNo" runat="server" CssClass="style7" Text="Label"></asp:Label>
            </td>
            <td style="font-family: 'Segoe UI'; text-align: center">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center">
                &nbsp;</td>
            <td colspan="4" style="text-align: center">
                <span class="style8">
                <br />
                </span>
            </td>
            <td style="text-align: center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10" style="text-align: center" width="60px">
            </td>
            <td class="style10" style="text-align: center">
            </td>
            <td class="style11" colspan="2" 
                
                style="border: medium double #00FF00; text-align: center; background-color: #CCFF99;">
                More Details About Your Order</td>
            <td class="style10" style="text-align: center">
            </td>
            <td class="style10" style="text-align: center" width="60px">
            </td>
        </tr>
        <tr>
            <td style="text-align: center" width="60px">
                &nbsp;</td>
            <td style="text-align: center">
                &nbsp;</td>
            <td style="border: medium double #00FF00; text-align: center" width="750px">
                <span class="style8">
                <img alt="" class="style9" src="http://localhost:60679/Image/track.png" /><br />
                <span class="style5">Track The Progress of Your Order In</span>
                <asp:HyperLink ID="HyperLink4" runat="server" CssClass="style8" 
                    NavigateUrl="~/MyAccount.aspx">Your Accounts Page</asp:HyperLink>
                </span>
            </td>
            <td style="border: medium double #00FF00; text-align: center" width="750px">
                <img alt="" class="style9" 
                    src="http://localhost:60679/Image/ecommerce-06@2x.png" /><br />
                <span class="style8"><span class="style5">All Your Orders Are Final and Cannot 
                Be Modified<br />
                </span></span></td>
            <td style="text-align: center">
                &nbsp;</td>
            <td style="text-align: center" width="60px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center" width="60px">
                &nbsp;</td>
            <td style="text-align: center">
                &nbsp;</td>
            <td style="border: medium double #00FF00; text-align: center">
                <img alt="" class="style9" 
                    src="http://localhost:60679/Image/ecommerce-22@2x.png" /><br />
                <span class="style8"><span class="style5">For Bank Transfer Purchases:
                <br />
                <span class="style5" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);">
                Your transaction has been completed and a invoice for your purchase has been 
                emailed.&nbsp;
                <br />
                Your can continue to transfer your purchase amout to us </span></span></span></td>
            <td style="border: medium double #00FF00; text-align: center">
                <img alt="" class="style9" 
                    src="http://localhost:60679/Image/ecommerce-23@2x.png" /><br />
                <span class="style8"><span class="style5">For Paypal Purchases:<br />
                <span class="style5" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);">
                Your transaction has been completed and a receipt for your purchase has been 
                emailed to you.
                <br />
                You may log in to your account at<span class="Apple-converted-space">&nbsp;</span></span><a 
                    href="https://www.sandbox.paypal.com/sg/" 
                    style="text-decoration: underline; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">www.sandbox.paypal.com/sg</a><span 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);"><span 
                    class="Apple-converted-space">&nbsp;</span>to view details of this transaction.</span></span></span></td>
            <td style="text-align: center">
                &nbsp;</td>
            <td style="text-align: center" width="60px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center" width="60px">
                &nbsp;</td>
            <td style="text-align: center">
                &nbsp;</td>
            <td style="border: medium double #00FF00; text-align: center" colspan="2">
                <img alt="" class="style9" 
                    src="http://localhost:60679/Image/ecommerce-25@2x.png" /><br />
                <span class="style8"><span class="style5">For Any Order Canllations or Other 
                Queries<br />
                Contact Us Here:<br />
                </span><span class="style12">purchases@qicstart.com</span></span></td>
            <td style="text-align: center">
                &nbsp;</td>
            <td style="text-align: center" width="60px">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="6">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
