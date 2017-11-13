<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="StaffUsers.aspx.cs" Inherits="Qicstart1.StaffUsers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
        <tr>
            <td height="200px" 
                
                style="text-align: center; font-family: 'Segoe UI'; font-size: xx-large; color: #FFFFFF;" 
                bgcolor="#3399FF">
                Customer Details</td>
        </tr>
        <tr>
            <td style="text-align: center; font-family: 'Segoe UI'; font-size: medium;" 
                width="100%">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="4" DataKeyNames="cUserID" DataSourceID="SqlDataSource1" 
                    style="margin-right: 1px" Width="100%">
                    <Columns>
                        <asp:BoundField DataField="cUserID" HeaderText="Customer User ID" 
                            ReadOnly="True" SortExpression="cUserID" />
                        <asp:BoundField DataField="cName" HeaderText="Customer Name" 
                            SortExpression="cName" />
                        <asp:BoundField DataField="cPassword" HeaderText="Password" 
                            SortExpression="cPassword" />
                        <asp:BoundField DataField="cAddress" HeaderText="Address" 
                            SortExpression="cAddress" />
                        <asp:BoundField DataField="cPostal" HeaderText="Postal Code" 
                            SortExpression="cPostal" />
                        <asp:BoundField DataField="cEmail" HeaderText="Email" SortExpression="cEmail" />
                        <asp:BoundField DataField="cPhone" HeaderText="Phone" SortExpression="cPhone" />
                        <asp:BoundField DataField="cCountry" HeaderText="Country" 
                            SortExpression="cCountry" />
                        <asp:BoundField DataField="cCompany" HeaderText="Company" 
                            SortExpression="cCompany" />
                        <asp:BoundField DataField="cGender" HeaderText="Gender" 
                            SortExpression="cGender" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" ForeColor="#003399" />
                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SortedAscendingCellStyle BackColor="#EDF6F6" />
                    <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                    <SortedDescendingCellStyle BackColor="#D6DFDF" />
                    <SortedDescendingHeaderStyle BackColor="#002876" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:qicstartConnectionString %>" 
                    DeleteCommand="DELETE FROM [myCustomers] WHERE [cUserID] = @original_cUserID AND [cName] = @original_cName AND [cPassword] = @original_cPassword AND [cAddress] = @original_cAddress AND [cPostal] = @original_cPostal AND [cEmail] = @original_cEmail AND [cPhone] = @original_cPhone AND [cCountry] = @original_cCountry AND [cCompany] = @original_cCompany AND [cGender] = @original_cGender" 
                    InsertCommand="INSERT INTO [myCustomers] ([cUserID], [cName], [cPassword], [cAddress], [cPostal], [cEmail], [cPhone], [cCountry], [cCompany], [cGender]) VALUES (@cUserID, @cName, @cPassword, @cAddress, @cPostal, @cEmail, @cPhone, @cCountry, @cCompany, @cGender)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [myCustomers]" 
                    UpdateCommand="UPDATE [myCustomers] SET [cName] = @cName, [cPassword] = @cPassword, [cAddress] = @cAddress, [cPostal] = @cPostal, [cEmail] = @cEmail, [cPhone] = @cPhone, [cCountry] = @cCountry, [cCompany] = @cCompany, [cGender] = @cGender WHERE [cUserID] = @original_cUserID AND [cName] = @original_cName AND [cPassword] = @original_cPassword AND [cAddress] = @original_cAddress AND [cPostal] = @original_cPostal AND [cEmail] = @original_cEmail AND [cPhone] = @original_cPhone AND [cCountry] = @original_cCountry AND [cCompany] = @original_cCompany AND [cGender] = @original_cGender">
                    <DeleteParameters>
                        <asp:Parameter Name="original_cUserID" Type="String" />
                        <asp:Parameter Name="original_cName" Type="String" />
                        <asp:Parameter Name="original_cPassword" Type="String" />
                        <asp:Parameter Name="original_cAddress" Type="String" />
                        <asp:Parameter Name="original_cPostal" Type="String" />
                        <asp:Parameter Name="original_cEmail" Type="String" />
                        <asp:Parameter Name="original_cPhone" Type="String" />
                        <asp:Parameter Name="original_cCountry" Type="String" />
                        <asp:Parameter Name="original_cCompany" Type="String" />
                        <asp:Parameter Name="original_cGender" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="cUserID" Type="String" />
                        <asp:Parameter Name="cName" Type="String" />
                        <asp:Parameter Name="cPassword" Type="String" />
                        <asp:Parameter Name="cAddress" Type="String" />
                        <asp:Parameter Name="cPostal" Type="String" />
                        <asp:Parameter Name="cEmail" Type="String" />
                        <asp:Parameter Name="cPhone" Type="String" />
                        <asp:Parameter Name="cCountry" Type="String" />
                        <asp:Parameter Name="cCompany" Type="String" />
                        <asp:Parameter Name="cGender" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="cName" Type="String" />
                        <asp:Parameter Name="cPassword" Type="String" />
                        <asp:Parameter Name="cAddress" Type="String" />
                        <asp:Parameter Name="cPostal" Type="String" />
                        <asp:Parameter Name="cEmail" Type="String" />
                        <asp:Parameter Name="cPhone" Type="String" />
                        <asp:Parameter Name="cCountry" Type="String" />
                        <asp:Parameter Name="cCompany" Type="String" />
                        <asp:Parameter Name="cGender" Type="String" />
                        <asp:Parameter Name="original_cUserID" Type="String" />
                        <asp:Parameter Name="original_cName" Type="String" />
                        <asp:Parameter Name="original_cPassword" Type="String" />
                        <asp:Parameter Name="original_cAddress" Type="String" />
                        <asp:Parameter Name="original_cPostal" Type="String" />
                        <asp:Parameter Name="original_cEmail" Type="String" />
                        <asp:Parameter Name="original_cPhone" Type="String" />
                        <asp:Parameter Name="original_cCountry" Type="String" />
                        <asp:Parameter Name="original_cCompany" Type="String" />
                        <asp:Parameter Name="original_cGender" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
