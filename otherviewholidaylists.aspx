<%@ Page Language="C#" AutoEventWireup="true" CodeFile="otherviewholidaylists.aspx.cs" Inherits="otherviewholidaylists" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <title>Hostel Management System</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-ptsans.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
  <div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html"><span></span></a></h1>
      </div>
      <div class="menu_nav">
        <ul>
         <li><a href="Default.aspx"><span>Home</span></a></li>
          <li><a href="warden.aspx"><span>Warden</span></a></li>
          <li><a href="parent.aspx"><span>Parents</span></a></li>
            <li><a href="otherviewholidaylists.aspx"><span>Holiday Lists</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"><a href="#"><img src="banner-hostel.jpg" width="960" height="513" alt="" /></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
           <div class="clr"></div>
            <div class="post_content">
            
									<div id = "dvGrid" style ="padding:10px;width:100%; overflow:scroll; height:100%">
  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            OnPageIndexChanging="GridView1_PageIndexChanging" AllowPaging="True" 
       PageSize="5" onselectedindexchanged="GridView1_SelectedIndexChanged1" 
              Height="98px" Font-Bold="True"  HorizontalAlign="Center" 
            CellPadding="4"  style="width:933px;" ForeColor="Black" BackColor="#99FFCC" BorderColor="#99FF99" 
             BorderStyle="Solid" BorderWidth="3px" CellSpacing="2">
            <RowStyle HorizontalAlign="Center" BackColor="White"/>
                <Columns>
                 <asp:BoundField DataField="id" HeaderText="ID"/>
               
                <asp:BoundField DataField="holidaydate" HeaderText="Date"/>
                <asp:BoundField DataField="holidayday" HeaderText="Day"/>
                           <asp:BoundField DataField="festivalname" HeaderText="Festival"/>
           
                 </Columns>
            <FooterStyle BackColor="#99FFCC" />
            <PagerStyle ForeColor="Black" HorizontalAlign="Left" BackColor="#99FFCC" />
            <SelectedRowStyle BorderColor="#99FFCC" BackColor="#99FFCC" Font-Bold="True" 
                 ForeColor="White"  />
            <HeaderStyle BorderColor="#99FFCC"  HorizontalAlign="Center" BackColor="Black" 
                Font-Bold="True" ForeColor="White" />
        </asp:GridView> 
        </div>
     
              </div>
          <div class="clr"></div>
        </div>
      
          </div>
    
      <div class="clr"></div>
    </div>
  </div>
  
  <div class="footer">
    <div class="footer_resize">
      <p class="lf"></p>
      <p class="rf"></p>
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
    </form>
</body>
</html>
