<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Qicstart1.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/bootstrap.min.css">
<style>
.section-parallax{
height: 300px; 
}
.parallax-content h3
{
    margin-top: 100px;
    color: Black; 
}
</style>
    <table class="style1">
        <tr>
        <td align="center" bgcolor="White" colspan="3">
            <section id="contact" class="content section-parallax parallaxBg" style="background-image: url(Image/spring.jpg);">
    	        <div class="container text-center">
        	        <div class="row parallax-content">
            	    <h3>Sign Up An Account With Us</h3>
                    </div><!-- end row -->
                </div><!-- end container -->
            </section>
        </td>
    </tr>
        <tr>
            <td bgcolor="#33CC33" height="40px" 
                style="width: 20%; text-align: right; color: #000000;">
                User ID:
                <br />
                * Please Key in a User ID not more then 10 characters</td>
            <td bgcolor="#33CC33" height="40px" style="width: 30%; text-align: center;">
                <asp:TextBox ID="txtUserID" runat="server" Height="30px" Width="600px"></asp:TextBox>
            </td>
            <td bgcolor="#33CC33" height="40px" style="width: 50%">
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#33CC33" height="40px" 
                style="width: 20%; text-align: right; color: #000000;">
                Name: </td>
            <td bgcolor="#33CC33" height="40px" style="width: 30%; text-align: center;">
                <asp:TextBox ID="txtName" runat="server" Height="30px" Width="600px"></asp:TextBox>
            </td>
            <td bgcolor="#33CC33" height="40px" style="width: 50%">
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#33CC33" height="40px" 
                style="width: 20%; text-align: right; color: #000000;">
                Password: </td>
            <td bgcolor="#33CC33" height="40px" style="width: 30%; text-align: center;">
                <asp:TextBox ID="txtPassword" runat="server" Height="30px" Width="600px"></asp:TextBox>
            </td>
            <td bgcolor="#33CC33" height="40px" style="width: 50%">
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#33CC33" height="40px" 
                style="width: 20%; text-align: right; color: #000000;">
                Confirm Password:</td>
            <td bgcolor="#33CC33" height="40px" style="width: 30%; text-align: center;">
                <asp:TextBox ID="txtConfirm" runat="server" Height="30px" Width="600px"></asp:TextBox>
            </td>
            <td bgcolor="#33CC33" height="40px" style="width: 50%">
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#33CC33" height="40px" 
                style="width: 20%; text-align: right; color: #000000;">
                Address: </td>
            <td bgcolor="#33CC33" height="40px" style="width: 30%; text-align: center;">
                <asp:TextBox ID="txtAddress" runat="server" Height="30px" Width="600px"></asp:TextBox>
            </td>
            <td bgcolor="#33CC33" height="40px" style="width: 50%">
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#33CC33" height="40px" 
                style="width: 20%; text-align: right; color: #000000;">
                Postal Code:</td>
            <td bgcolor="#33CC33" height="40px" style="width: 30%; text-align: center;">
                <asp:TextBox ID="txtPostal" runat="server" Height="30px" Width="600px"></asp:TextBox>
            </td>
            <td bgcolor="#33CC33" height="40px" style="width: 50%">
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#33CC33" height="40px" 
                style="width: 20%; text-align: right; color: #000000;">
                Email Address: </td>
            <td bgcolor="#33CC33" height="40px" style="width: 30%; text-align: center;">
                <asp:TextBox ID="txtEmail" runat="server" Height="30px" Width="600px"></asp:TextBox>
            </td>
            <td bgcolor="#33CC33" height="40px" style="width: 50%">
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#33CC33" height="40px" 
                style="width: 20%; text-align: right; color: #000000;">
                Phone Number:</td>
            <td bgcolor="#33CC33" height="40px" style="width: 30%; text-align: center;">
                <asp:TextBox ID="txtPhone" runat="server" Height="30px" Width="600px"></asp:TextBox>
            </td>
            <td bgcolor="#33CC33" height="40px" style="width: 50%">
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#33CC33" height="40px" 
                style="width: 20%; text-align: right; color: #000000;">
                Country of Origin:</td>
            <td bgcolor="#33CC33" height="40px" style="width: 30%; text-align: center;">
                <asp:TextBox ID="txtCountry" runat="server" Height="30px" Width="600px"></asp:TextBox>
            </td>
            <td bgcolor="#33CC33" height="40px" style="width: 50%">
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#33CC33" height="40px" 
                style="width: 20%; text-align: right; color: #000000;">
                Company:</td>
            <td bgcolor="#33CC33" height="40px" style="width: 30%; text-align: center;">
                <asp:TextBox ID="txtCompany" runat="server" Height="30px" Width="600px"></asp:TextBox>
            </td>
            <td bgcolor="#33CC33" height="40px" style="width: 50%">
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#33CC33" height="40px" 
                style="width: 20%; text-align: right; color: #000000;">
                Gender:</td>
            <td bgcolor="#33CC33" height="40px" style="width: 30%; text-align: center;">
                <asp:DropDownList ID="ddlGender" runat="server" Height="30px" Width="600px">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td bgcolor="#33CC33" height="40px" style="width: 50%">
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="White" height="40px" 
                style="width: 20%; text-align: right; color: #000000;">
                &nbsp;</td>
            <td bgcolor="White" height="40px" style="width: 30%">
                <asp:TextBox ID="txtGender" runat="server" Visible="False"></asp:TextBox>
            </td>
            <td bgcolor="White" height="40px" style="width: 50%; text-align: center;">
                <asp:Button ID="btnClear" runat="server" BackColor="White" BorderColor="Red" 
                    BorderStyle="Solid" Height="30px" onclick="btnClear_Click" Text="Clear" 
                    Width="100px" />
&nbsp;&nbsp;&nbsp;
                <asp:Button class="btn btn-info btn-lg" ID="btnSignUp" runat="server" Height="30px" 
                    onclick="btnSignUp_Click" Text="Submit" Width="300px" />
            </td>
        </tr>
    </table>
</asp:Content>
