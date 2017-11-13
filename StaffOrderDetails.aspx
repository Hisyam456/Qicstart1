<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="StaffOrderDetails.aspx.cs" Inherits="Qicstart1.StaffOrderDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style4
        {
            height: 39px;
            text-align: center;
            font-family: "Segoe UI";
            font-size: xx-large;
            color: #FFFFFF;
        }
        .style5
        {
            height: 39px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
        <tr>
            <td class="style4" height="200px" bgcolor="#6699FF">
                All Orders</td>
        </tr>

        <tr>
            <td class="style5" width="100%">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="iOrderID" DataSourceID="SqlDataSource1" Width="100%" 
                    BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="4" style="font-family: 'Segoe UI'; font-size: medium">
                    <Columns>
                        <asp:BoundField DataField="iOrderID" HeaderText="Order ID" 
                            InsertVisible="False" ReadOnly="True" SortExpression="iOrderID" />
                        <asp:BoundField DataField="UserID" HeaderText="User ID" 
                            SortExpression="UserID" />
                        <asp:BoundField DataField="DOP" HeaderText="Date Of Purchase" 
                            SortExpression="DOP" />
                        <asp:BoundField DataField="DateOfDelivery" HeaderText="Date Of Delivery" 
                            SortExpression="DateOfDelivery" />
                        <asp:BoundField DataField="TotalPrice" HeaderText="Total Price" 
                            SortExpression="TotalPrice" />
                        <asp:BoundField DataField="oOrderStatus" HeaderText="Order Status" 
                            SortExpression="oOrderStatus" />
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
                    DeleteCommand="DELETE FROM [OrderSummary] WHERE [iOrderID] = @original_iOrderID AND [UserID] = @original_UserID AND (([DateOfPurchase] = @original_DateOfPurchase) OR ([DateOfPurchase] IS NULL AND @original_DateOfPurchase IS NULL)) AND (([DateOfDelivery] = @original_DateOfDelivery) OR ([DateOfDelivery] IS NULL AND @original_DateOfDelivery IS NULL)) AND (([TotalPrice] = @original_TotalPrice) OR ([TotalPrice] IS NULL AND @original_TotalPrice IS NULL)) AND [oOrderStatus] = @original_oOrderStatus AND (([DOP] = @original_DOP) OR ([DOP] IS NULL AND @original_DOP IS NULL))" 
                    InsertCommand="INSERT INTO [OrderSummary] ([UserID], [DateOfPurchase], [DateOfDelivery], [TotalPrice], [oOrderStatus], [DOP]) VALUES (@UserID, @DateOfPurchase, @DateOfDelivery, @TotalPrice, @oOrderStatus, @DOP)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [OrderSummary] ORDER BY [iOrderID]" 
                    UpdateCommand="UPDATE [OrderSummary] SET [UserID] = @UserID, [DateOfPurchase] = @DateOfPurchase, [DateOfDelivery] = @DateOfDelivery, [TotalPrice] = @TotalPrice, [oOrderStatus] = @oOrderStatus, [DOP] = @DOP WHERE [iOrderID] = @original_iOrderID AND [UserID] = @original_UserID AND (([DateOfPurchase] = @original_DateOfPurchase) OR ([DateOfPurchase] IS NULL AND @original_DateOfPurchase IS NULL)) AND (([DateOfDelivery] = @original_DateOfDelivery) OR ([DateOfDelivery] IS NULL AND @original_DateOfDelivery IS NULL)) AND (([TotalPrice] = @original_TotalPrice) OR ([TotalPrice] IS NULL AND @original_TotalPrice IS NULL)) AND [oOrderStatus] = @original_oOrderStatus AND (([DOP] = @original_DOP) OR ([DOP] IS NULL AND @original_DOP IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_iOrderID" Type="Int32" />
                        <asp:Parameter Name="original_UserID" Type="String" />
                        <asp:Parameter Name="original_DateOfPurchase" Type="String" />
                        <asp:Parameter Name="original_DateOfDelivery" Type="String" />
                        <asp:Parameter Name="original_TotalPrice" Type="String" />
                        <asp:Parameter Name="original_oOrderStatus" Type="String" />
                        <asp:Parameter DbType="Date" Name="original_DOP" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="UserID" Type="String" />
                        <asp:Parameter Name="DateOfPurchase" Type="String" />
                        <asp:Parameter Name="DateOfDelivery" Type="String" />
                        <asp:Parameter Name="TotalPrice" Type="String" />
                        <asp:Parameter Name="oOrderStatus" Type="String" />
                        <asp:Parameter DbType="Date" Name="DOP" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="UserID" Type="String" />
                        <asp:Parameter Name="DateOfPurchase" Type="String" />
                        <asp:Parameter Name="DateOfDelivery" Type="String" />
                        <asp:Parameter Name="TotalPrice" Type="String" />
                        <asp:Parameter Name="oOrderStatus" Type="String" />
                        <asp:Parameter DbType="Date" Name="DOP" />
                        <asp:Parameter Name="original_iOrderID" Type="Int32" />
                        <asp:Parameter Name="original_UserID" Type="String" />
                        <asp:Parameter Name="original_DateOfPurchase" Type="String" />
                        <asp:Parameter Name="original_DateOfDelivery" Type="String" />
                        <asp:Parameter Name="original_TotalPrice" Type="String" />
                        <asp:Parameter Name="original_oOrderStatus" Type="String" />
                        <asp:Parameter DbType="Date" Name="original_DOP" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>

        <tr>
            <td class="style5">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
