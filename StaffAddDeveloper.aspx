<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="StaffAddDeveloper.aspx.cs" Inherits="Qicstart1.StaffAddDeveloper" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style4
        {
            text-align: right;
            font-family: "Segoe UI";
        }
        .style5
        {
            font-family: "Segoe UI";
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
        <tr>
            <td bgcolor="#CCFF33" height="200px" 
                style="text-align: center; font-family: 'Segoe UI'; font-size: xx-large">
                Developer Account Creation</td>
        </tr>
        <tr>
            <td style="text-align: center">
                <table class="style1">
                    <tr>
                        <td class="style4" width="33%">
                            Developer ID:</td>
                        <td class="style5" width="33%">
                            <asp:TextBox ID="txtDevID" runat="server" Height="30px" Width="500px"></asp:TextBox>
                        </td>
                        <td class="style5" width="33%">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style4" width="33%">
                            Devloper Name:</td>
                        <td class="style5" width="33%">
                            <asp:TextBox ID="txtDevName" runat="server" Height="30px" Width="500px"></asp:TextBox>
                        </td>
                        <td class="style5" width="33%">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style4" width="33%">
                            Developer Password:</td>
                        <td class="style5" width="33%">
                            <asp:TextBox ID="txtDevPass" runat="server" Height="30px" Width="500px"></asp:TextBox>
                        </td>
                        <td class="style5" width="33%">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style4" width="33%">
                            Developer Country:</td>
                        <td class="style5" width="33%">
                            <asp:TextBox ID="txtDevCountry" runat="server" Height="30px" Width="500px"></asp:TextBox>
                        </td>
                        <td class="style5" width="33%">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style4" width="33%">
                            Developer Address:</td>
                        <td class="style5" width="33%">
                            <asp:TextBox ID="txtDevAddress" runat="server" Height="30px" Width="500px"></asp:TextBox>
                        </td>
                        <td class="style5" width="33%">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style4" width="33%">
                            Developer City:</td>
                        <td class="style5" width="33%">
                            <asp:TextBox ID="txtDevCity" runat="server" Height="30px" Width="500px"></asp:TextBox>
                        </td>
                        <td class="style5" width="33%">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style4" width="33%">
                            Developer State:</td>
                        <td class="style5" width="33%">
                            <asp:TextBox ID="txtDevState" runat="server" Height="30px" Width="500px"></asp:TextBox>
                        </td>
                        <td class="style5" width="33%">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style4" width="33%">
                            Postal Code:</td>
                        <td class="style5" width="33%">
                            <asp:TextBox ID="txtPostal" runat="server" Height="30px" Width="500px"></asp:TextBox>
                        </td>
                        <td class="style5" width="33%">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style4" width="33%">
                            Developer Phone:</td>
                        <td class="style5" width="33%">
                            <asp:TextBox ID="txtDevPhone" runat="server" Height="30px" Width="500px"></asp:TextBox>
                        </td>
                        <td class="style5" width="33%">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style4" width="33%">
                            Developer Email:</td>
                        <td class="style5" width="33%">
                            <asp:TextBox ID="txtDevEmail" runat="server" Height="30px" Width="500px"></asp:TextBox>
                        </td>
                        <td class="style5" width="33%">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style4" width="33%">
                            Developer Skill:</td>
                        <td class="style5" width="33%">
                            <asp:TextBox ID="txtDevSkill" runat="server" Height="30px" Width="500px"></asp:TextBox>
                        </td>
                        <td class="style5" width="33%">
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
