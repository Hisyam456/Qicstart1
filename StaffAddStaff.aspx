<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="StaffAddStaff.aspx.cs" Inherits="Qicstart1.StaffAddStaff" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style4
        {
            text-align: right;
        }
        .style5
        {
            font-family: "Segoe UI";
        }
        .style6
        {
            text-align: right;
            font-family: "Segoe UI";
            font-size: medium;
        }
        .style7
        {
            font-family: "Segoe UI";
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<table class="style1">
        <tr>
            <td style="text-align: center; font-family: 'Segoe UI'; font-size: xx-large;" 
                bgcolor="#CCFF33" height="200px">
                Staff Account Creation</td>
        </tr>
        <tr>
            <td style="text-align: center">
                <table class="style1">
                    <tr>
                        <td class="style6" width="33%">
                            Staff ID:</td>
                        <td class="style5" width="33%">
                            <asp:TextBox ID="txtStaffID" runat="server" Height="30px" Width="500px" 
                                CssClass="style7"></asp:TextBox>
                        </td>
                        <td class="style7" width="33%">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style6" width="33%">
                            Staff Type:</td>
                        <td class="style5" width="33%">
                            <asp:TextBox ID="txtStaffType" runat="server" Height="30px" Width="500px"></asp:TextBox>
                        </td>
                        <td class="style7" width="33%">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style6" width="33%">
                            Staff Name:</td>
                        <td class="style5" width="33%">
                            <asp:TextBox ID="txtStaffName" runat="server" Height="30px" Width="500px" 
                                CssClass="style7"></asp:TextBox>
                        </td>
                        <td class="style7" width="33%">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style6" width="33%">
                            Staff Password:</td>
                        <td class="style5" width="33%">
                            <asp:TextBox ID="txtStaffPass" runat="server" Height="30px" Width="500px" 
                                CssClass="style7"></asp:TextBox>
                        </td>
                        <td class="style7" width="33%">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style6" width="33%">
                            Staff Address:</td>
                        <td class="style5" width="33%">
                            <asp:TextBox ID="txtStaffAddress" runat="server" Height="30px" Width="500px" 
                                CssClass="style7"></asp:TextBox>
                        </td>
                        <td class="style7" width="33%">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style6" width="33%">
                            Postal Code:</td>
                        <td class="style5" width="33%">
                            <asp:TextBox ID="txtPostal" runat="server" Height="30px" Width="500px" 
                                CssClass="style7"></asp:TextBox>
                        </td>
                        <td class="style7" width="33%">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style6" width="33%">
                            Staff Phone:</td>
                        <td class="style5" width="33%">
                            <asp:TextBox ID="txtStaffPhone" runat="server" Height="30px" Width="500px" 
                                CssClass="style7"></asp:TextBox>
                        </td>
                        <td class="style7" width="33%">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style6" width="33%">
                            Staff Email:</td>
                        <td class="style5" width="33%">
                            <asp:TextBox ID="txtStaffEmail" runat="server" Height="30px" Width="500px" 
                                CssClass="style7"></asp:TextBox>
                        </td>
                        <td class="style7" width="33%">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style4" width="33%">
                            &nbsp;</td>
                        <td class="style5" width="33%">
                            <asp:Button ID="btnSubmit" runat="server" Text="Submit Details" />
                        </td>
                        <td class="style5" width="33%">
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
