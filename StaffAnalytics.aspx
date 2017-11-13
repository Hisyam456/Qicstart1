<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="StaffAnalytics.aspx.cs" Inherits="Qicstart1.StaffAnalytics" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <meta charset="UTF-8">
        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
        <!-- bootstrap 3.0.2 -->
        <link href="css/admin/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <!-- font Awesome -->
        <link href="css/admin/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <!-- Ionicons -->
        <link href="http://code.ionicframework.com/ionicons/1.4.1/css/ionicons.min.css" rel="stylesheet" type="text/css" />
        <!-- jvectormap -->
        <link href="css/admin/jvectormap/jquery-jvectormap-1.2.2.css" rel="stylesheet" type="text/css" />
        <!-- fullCalendar -->
        <link href="css/admin/fullcalendar/fullcalendar.css" rel="stylesheet" type="text/css" />
        <!-- Daterange picker -->
        <link href="css/admin/daterangepicker/daterangepicker-bs3.css" rel="stylesheet" type="text/css" />
        <!-- bootstrap wysihtml5 - text editor -->
        <link href="css/admin/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css" rel="stylesheet" type="text/css" />
        <!-- Theme style -->
        <link href="css/admin/AdminLTE.css" rel="stylesheet" type="text/css" />
        <style type="text/css">
        .style4
        {
            height: 39px;
            text-align: center;
        }
    </style>
    <style type="text/css">
        .style4
        {
            text-align: center;
        }
        .style5
        {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
        <tr>
            <td style="text-align: center; color: black; font-family: 'Segoe UI'; font-size: xx-large;" 
                bgcolor="#CCFF66" height="200px">
             
                Staff Analytics</td>
        </tr>
        <tr>
            <!-- Main content -->
                <section class="content">
                    <!-- Small boxes (Stat box) -->
                    <div class="row">
                        <div class="col-lg-3 col-xs-6">
                            <!-- small box -->
                            <div class="small-box bg-aqua">
                                <div class="inner">
                                    <h3>
                                        <asp:Label ID="lblNewOrders" runat="server" Text=""></asp:Label>
                                    </h3>
                                    <p>
                                        New Orders
                                    </p>
                                </div>
                                <div class="icon">
                                    <i class="ion ion-bag"></i>
                                </div>
                                <a href="StaffOrderDetails.aspx" class="small-box-footer">
                                    More info <i class="fa fa-arrow-circle-right"></i>
                                </a>
                            </div>
                        </div><!-- ./col -->
                        <div class="col-lg-3 col-xs-6">
                            <!-- small box -->
                            <div class="small-box bg-green">
                                <div class="inner">
                                    <h3>
                                         <asp:Label ID="lblProjects" runat="server" Text=""></asp:Label>
                                    </h3>
                                    <p>
                                        Projects Pending 
                                    </p>
                                </div>
                                <div class="icon">
                                    <i class="ion ion-stats-bars"></i>
                                </div>
                                <a href="StaffProjects.aspx" class="small-box-footer">
                                    More info <i class="fa fa-arrow-circle-right"></i>
                                </a>
                            </div>
                        </div><!-- ./col -->
                        <div class="col-lg-3 col-xs-6">
                            <!-- small box -->
                            <div class="small-box bg-yellow">
                                <div class="inner">
                                    <h3>
                                         <asp:Label ID="lblRegistrations" runat="server" Text=""></asp:Label>
                                    </h3>
                                    <p>
                                        User Registrations
                                    </p>
                                </div>
                                <div class="icon">
                                    <i class="ion ion-person-add"></i>
                                </div>
                                <a href="StaffUsers.aspx" class="small-box-footer">
                                    More info <i class="fa fa-arrow-circle-right"></i>
                                </a>
                            </div>
                        </div><!-- ./col -->
                        <div class="col-lg-3 col-xs-6">
                            <!-- small box -->
                            <div class="small-box bg-red">
                                <div class="inner">
                                    <h3>
                                         <asp:Label ID="lblProducts" runat="server" Text=""></asp:Label>
                                    </h3>
                                    <p>
                                        Total Products
                                    </p>
                                </div>
                                <div class="icon">
                                    <i class="ion ion-pie-graph"></i>
                                </div>
                                <a href="StaffProducts.aspx" class="small-box-footer">
                                    More info <i class="fa fa-arrow-circle-right"></i>
                                </a>
                            </div>
                        </div><!-- ./col -->
                    </div><!-- /.row -->

                    <!-- top row -->
                    <div class="row">
                        <div class="col-xs-12 connectedSortable">
                            
                        </div><!-- /.col -->
                    </div>
                    <!-- /.row -->
        </tr>
        <tr>
            <td style="text-align: center; font-size: xx-large;" bgcolor="White">
                Total Orders By Products</td>
        </tr>
        <tr>
            <td style="text-align: center" bgcolor="White">
                <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" 
                    Height="500px" Palette="EarthTones" Width="500px">
                    <series>
                        <asp:Series Color="Red" Name="Series1" XValueMember="pName" 
                            YValueMembers="CountOf">
                        </asp:Series>
                    </series>
                    <chartareas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </chartareas>
                </asp:Chart>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:qicstartConnectionString %>" 
                    SelectCommand="SELECT [pName], [CountOf] FROM [CountOfProducts]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="text-align: center" bgcolor="#999999" class="style5">
            </td>
        </tr>
        <tr>
            <td style="text-align: center" bgcolor="White">
                <asp:Chart ID="Chart2" runat="server" DataSourceID="SqlDataSource2" 
                    Height="500px" Palette="EarthTones" Width="500px">
                    <series>
                        <asp:Series ChartType="Line" Name="Series1" XValueMember="DOP" 
                            YValueMembers="TotalOrders">
                        </asp:Series>
                    </series>
                    <chartareas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </chartareas>
                    <Titles>
                        <asp:Title Name="Total Orders By Date" Text="Total Orders By Date">
                        </asp:Title>
                    </Titles>
                </asp:Chart>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:qicstartConnectionString %>" 
                    SelectCommand="SELECT [TotalOrders], [DOP] FROM [CountOrdersByDate]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style4" bgcolor="White">
                <asp:Chart ID="Chart3" runat="server" DataSourceID="SqlDataSource1" 
                    Height="600px" Width="600px" Palette="Pastel">
                    <Series>
                        <asp:Series ChartType="Pie" Legend="Legend" Name="Series1" XValueMember="pName" 
                            YValueMembers="CountOf">
                        </asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1">
                            <AxisX Enabled="False">
                            </AxisX>
                            <AxisX2 Enabled="False">
                            </AxisX2>
                        </asp:ChartArea>
                    </ChartAreas>
                    <Legends>
                        <asp:Legend Name="Legend">
                        </asp:Legend>
                    </Legends>
                    <Titles>
                        <asp:Title Name="Best Selling Products" Text="Best Selling Products">
                        </asp:Title>
                    </Titles>
                </asp:Chart>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
