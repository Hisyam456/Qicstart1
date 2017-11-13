<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="StaffProducts.aspx.cs" Inherits="Qicstart1.StaffProducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
        <tr>
            <td height="200px" 
                
                style="text-align: center; font-family: 'Segoe UI'; font-size: xx-large; color: #FFFFFF;" 
                bgcolor="#3399FF">
                Total Products</td>
        </tr>
        <tr>
            <td style="text-align: center" width="100%">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="4" DataKeyNames="ProductID" DataSourceID="SqlDataSource1" 
                    Width="100%" style="font-family: 'Segoe UI'; font-size: medium">
                    <Columns>
                        <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" 
                            SortExpression="ProductID" />
                        <asp:BoundField DataField="pName" HeaderText="Product Name" 
                            SortExpression="pName" />
                        <asp:BoundField DataField="pDesc" HeaderText="Product Desc" 
                            SortExpression="pDesc" />
                        <asp:BoundField DataField="pPrice" HeaderText="Product Price" 
                            SortExpression="pPrice" />
                        <asp:ImageField DataImageUrlField="pImage" HeaderText="Product Image">
                        </asp:ImageField>
                        <asp:BoundField DataField="pFunctions" HeaderText="Product Functions" 
                            SortExpression="pFunctions" />
                        <asp:BoundField DataField="pReq" HeaderText="Product OS" 
                            SortExpression="pReq" />
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
                    DeleteCommand="DELETE FROM [Products] WHERE [ProductID] = @original_ProductID AND [pName] = @original_pName AND [pDesc] = @original_pDesc AND [pPrice] = @original_pPrice AND [pImage] = @original_pImage AND [pFunctions] = @original_pFunctions AND [pReq] = @original_pReq" 
                    InsertCommand="INSERT INTO [Products] ([ProductID], [pName], [pDesc], [pPrice], [pImage], [pFunctions], [pReq]) VALUES (@ProductID, @pName, @pDesc, @pPrice, @pImage, @pFunctions, @pReq)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [Products] ORDER BY [ProductID], [pPrice]" 
                    UpdateCommand="UPDATE [Products] SET [pName] = @pName, [pDesc] = @pDesc, [pPrice] = @pPrice, [pImage] = @pImage, [pFunctions] = @pFunctions, [pReq] = @pReq WHERE [ProductID] = @original_ProductID AND [pName] = @original_pName AND [pDesc] = @original_pDesc AND [pPrice] = @original_pPrice AND [pImage] = @original_pImage AND [pFunctions] = @original_pFunctions AND [pReq] = @original_pReq">
                    <DeleteParameters>
                        <asp:Parameter Name="original_ProductID" Type="Int32" />
                        <asp:Parameter Name="original_pName" Type="String" />
                        <asp:Parameter Name="original_pDesc" Type="String" />
                        <asp:Parameter Name="original_pPrice" Type="String" />
                        <asp:Parameter Name="original_pImage" Type="String" />
                        <asp:Parameter Name="original_pFunctions" Type="String" />
                        <asp:Parameter Name="original_pReq" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="ProductID" Type="Int32" />
                        <asp:Parameter Name="pName" Type="String" />
                        <asp:Parameter Name="pDesc" Type="String" />
                        <asp:Parameter Name="pPrice" Type="String" />
                        <asp:Parameter Name="pImage" Type="String" />
                        <asp:Parameter Name="pFunctions" Type="String" />
                        <asp:Parameter Name="pReq" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="pName" Type="String" />
                        <asp:Parameter Name="pDesc" Type="String" />
                        <asp:Parameter Name="pPrice" Type="String" />
                        <asp:Parameter Name="pImage" Type="String" />
                        <asp:Parameter Name="pFunctions" Type="String" />
                        <asp:Parameter Name="pReq" Type="String" />
                        <asp:Parameter Name="original_ProductID" Type="Int32" />
                        <asp:Parameter Name="original_pName" Type="String" />
                        <asp:Parameter Name="original_pDesc" Type="String" />
                        <asp:Parameter Name="original_pPrice" Type="String" />
                        <asp:Parameter Name="original_pImage" Type="String" />
                        <asp:Parameter Name="original_pFunctions" Type="String" />
                        <asp:Parameter Name="original_pReq" Type="String" />
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
