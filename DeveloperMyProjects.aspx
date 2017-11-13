<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="DeveloperMyProjects.aspx.cs" Inherits="Qicstart1.DeveloperMyProjects" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="css/style.css" />
    <style type="text/css">
        .section-parallax
        {
            height: 400px; 
        }
        .style3
        {
            font-family: "Segoe UI";
            font-size: xx-large;
            text-align: center;
        }
        .style4
        {
            font-family: "Segoe UI";
            text-align: center;
            width: 100%;
        }
        
        .parallax-content 
    {
    margin-top: 100px;
    }
        .style5
        {
            font-family: "Segoe UI";
            text-align: center;
            width: 100%;
            height: 42px;
        }
        .style6
        {
            font-family: "Segoe UI";
            font-size: xx-large;
            text-align: center;
            color: #FFFFFF;
            height: 203px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1" >
        <tr>
            <td class="style3" colspan="4">
                <section id="contact" class="content section-parallax parallaxBg" style="background-image: url(Image/developer.jpg);">
    	        <div class="container text-center">
        	        <div class="row parallax-content">
                    <asp:Label ID="lblMessage" runat="server" Text="My Projects"></asp:Label>
                    </div><!-- end row -->
                </div><!-- end container -->
            </section>
            </td>
        </tr>
        </table>
        <table class="style1" id="tableMain" runat="server">
        <tr>
            <td class="style6" colspan="4">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                    GridLines="None" Width="100%" 
                    style="font-family: 'Segoe UI'; font-size: large;">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="ProjectID" HeaderText="Project ID" 
                            InsertVisible="False" ReadOnly="True" SortExpression="ProjectID" />
                        <asp:HyperLinkField DataNavigateUrlFields="OrderID" 
                            DataNavigateUrlFormatString="DeveloperMyProjects.aspx?DevOrdID={0}" 
                            DataTextField="OrderID" HeaderText="Order ID" />
                        <asp:BoundField DataField="mDevID" HeaderText="Developer ID" 
                            SortExpression="mDevID" />
                        <asp:BoundField DataField="mProgress" HeaderText="Project Progress" 
                            SortExpression="mProgress" />
                           
                        <asp:BoundField DataField="mFileName" HeaderText="File Name" 
                            SortExpression="mFileName" />
                            <asp:TemplateField>
                            <ItemTemplate>
                         <asp:LinkButton ID="lnkDownload" Text = "Download" CommandArgument = '<%# Eval("mFileName") %>' runat="server" OnClick = "DownloadFile"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td style="text-align: center; width: -100%" width="30%">
                &nbsp;</td>
            <td style="width: 0%" width="40%" align="center" colspan="2">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:qicstartConnectionString %>" 
                    
                    
                    SelectCommand="SELECT [ProjectID], [OrderID], [mDevID], [mProgress], [mFileName] FROM [Projects] WHERE ([mDevID] = @mDevID)">
                    <SelectParameters>
                        <asp:SessionParameter Name="mDevID" SessionField="DevID" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td style="text-align: center; width: 33%" width="30%">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5" colspan="4" style="text-align: center">
                Select Project ID:
                <asp:DropDownList ID="ddlProjID" runat="server" DataSourceID="SqlDataSource1" 
                    DataTextField="ProjectID" DataValueField="ProjectID">
                </asp:DropDownList>
                Update Project Progress:
                <asp:DropDownList ID="ddlProgress" runat="server">
                    <asp:ListItem>30%</asp:ListItem>
                    <asp:ListItem>50%</asp:ListItem>
                    <asp:ListItem>70%</asp:ListItem>
                    <asp:ListItem>100%</asp:ListItem>
                </asp:DropDownList>
                <asp:Button ID="btnUpdate" runat="server" onclick="btnUpdate_Click" 
                    Text="Update Progress" />
            &nbsp;
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <asp:Button ID="btnUpload" runat="server" onclick="btnUpload_Click" 
                    Text="Upload File" />
            </td>
        </tr>
        <tr>
            <td class="style5" colspan="4" style="text-align: center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5" colspan="4" style="text-align: center">
                <asp:GridView ID="gvList" runat="server">
                    <Columns>
                     
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="style4" colspan="4" style="text-align: center">
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:qicstartConnectionString %>" 
                    SelectCommand="SELECT [OrderID], [ProductID], [pName], [pDesc], [pFunctions], [pReq] FROM [DevPdtView] WHERE ([OrderID] = @OrderID)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="OrderID" QueryStringField="DevOrdID" 
                            Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:DetailsView ID="DetailsView3" runat="server" AutoGenerateRows="False" 
                    CellPadding="4" DataSourceID="SqlDataSource4" ForeColor="#333333" 
                    GridLines="None" Height="100%" style="font-size: large" Width="100%">
                    <AlternatingRowStyle BackColor="White" />
                    <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                    <EditRowStyle BackColor="#2461BF" />
                    <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="OrderID" HeaderText="OrderID" 
                            SortExpression="OrderID" />
                        <asp:BoundField DataField="ProductID" HeaderText="ProductID" 
                            SortExpression="ProductID" />
                        <asp:BoundField DataField="pName" HeaderText="Name" SortExpression="pName" />
                        <asp:BoundField DataField="pDesc" HeaderText="Description" 
                            SortExpression="pDesc" />
                        <asp:BoundField DataField="pFunctions" HeaderText="Application Functions" 
                            SortExpression="pFunctions" />
                        <asp:BoundField DataField="pReq" HeaderText="Application Requirements" 
                            SortExpression="pReq" />
                    </Fields>
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                </asp:DetailsView>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center" width="50%">
                &nbsp;<asp:DetailsView ID="DetailsView4" runat="server" Height="50px" 
                    Width="100%" AutoGenerateRows="False" DataSourceID="SqlDataSource2" 
                    CellPadding="4" ForeColor="#333333" GridLines="None" 
                    style="font-family: 'Segoe UI'; font-size: large">
                    <AlternatingRowStyle BackColor="White" />
                    <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
                    <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="DateOfPurchase" HeaderText="DateOfPurchase" 
                            SortExpression="DateOfPurchase" />
                        <asp:BoundField DataField="DateOfDelivery" HeaderText="DateOfDelivery" 
                            SortExpression="DateOfDelivery" />
                    </Fields>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:qicstartConnectionString %>" 
                    SelectCommand="SELECT [DateOfPurchase], [DateOfDelivery] FROM [OrderSummary] WHERE ([iOrderID] = @iOrderID)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="iOrderID" QueryStringField="DevOrdID" 
                            Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td colspan="2" style="text-align: center" width="50%">
                <asp:DetailsView ID="DetailsView5" runat="server" Height="50px" Width="100%" 
                    AutoGenerateRows="False" CellPadding="4" DataSourceID="SqlDataSource3" 
                    ForeColor="#333333" GridLines="None" 
                    style="font-family: 'Segoe UI'; font-size: large">
                    <AlternatingRowStyle BackColor="White" />
                    <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                    <EditRowStyle BackColor="#7C6F57" />
                    <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="pName" HeaderText="Project Name" 
                            SortExpression="pName" />
                        <asp:BoundField DataField="pFunctions" HeaderText="Application Functions" 
                            SortExpression="pFunctions" />
                        <asp:BoundField DataField="pReq" HeaderText="OS Requirements" 
                            SortExpression="pReq" />
                    </Fields>
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:qicstartConnectionString %>" 
                    SelectCommand="SELECT [pName], [pFunctions], [pReq] FROM [DevPdtView] WHERE ([OrderID] = @OrderID)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="OrderID" QueryStringField="DevOrdID" 
                            Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td colspan="4" style="text-align: center; width: 100%;" width="50%">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="4" style="text-align: center; width: 100%;" width="50%">
                <asp:Button ID="Button1" runat="server" Height="100px" 
                    Text="Print" Width="300px" OnClientClick="javascript:window.print();" />
            </td>
        </tr>
        <tr>
            <td colspan="4" style="text-align: center; width: 100%;" width="50%">
                &nbsp;</td>
        </tr>
        </table>
</asp:Content>
