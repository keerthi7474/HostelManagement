<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewrooms.aspx.cs" Inherits="viewrooms" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Hostel Management System</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="styles.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-ptsans.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>

  <style type="text/css">


.form-style-8{
    font-family: 'Open Sans Condensed', arial, sans;
    width: 500px;
    padding: 30px;
    background: #FFFFFF;
    margin: 50px auto;
    box-shadow: 0px 0px 15px rgba(0, 0, 0, 2.22);
    -moz-box-shadow: 0px 0px 15px rgba(0, 0, 0, 2.22);
    -webkit-box-shadow:  0px 0px 15px rgba(0, 0, 0, 2.22);

}
.form-style-8 h2{
    background: #4D4D4D;
    text-transform: uppercase;
    font-family: 'Open Sans Condensed', sans-serif;
    color:White;
    font-size: 18px;
    font-weight: 100;
    padding: 20px;
    margin: -30px -30px 30px -30px;
}
.form-style-8 input[type="text"],
.form-style-8 input[type="date"],
.form-style-8 input[type="datetime"],
.form-style-8 input[type="email"],
.form-style-8 input[type="number"],
.form-style-8 input[type="search"],
.form-style-8 input[type="search"],
.form-style-8 input[type="time"],
.form-style-8 input[type="url"],
.form-style-8 input[type="password"],
.form-style-8 textarea,
.form-style-8 select

{
    box-sizing: border-box;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    outline: none;
    display: block;
    width: 100%;
    padding: 7px;
    border: none;
    border-bottom: 1px solid #ddd;
    background: transparent;
    margin-bottom: 10px;
    font: 18px Arial, Helvetica, sans-serif;
    height: 50px;
}
.form-style-8 textarea{
    resize:none;
    overflow: hidden;
}
.form-style-8 input[type="button"],
.form-style-8 input[type="submit"]{
    -moz-box-shadow: inset 0px 1px 0px 0px #3447ff;
    -webkit-box-shadow: inset 0px 1px 0px 0px #3447ff;
    box-shadow: inset 0px 1px 0px 0px #3447ff;
    background-color: #2CBBBB;
    border: 1px solid #27A0A0;
    display: inline-block;
    cursor: pointer;
    color: #FFFFFF;
    font-family: 'Open Sans Condensed', sans-serif;
    font-size: 14px;
    padding: 8px 18px;
    text-decoration: none;
    text-transform: uppercase;
}
.form-style-8 input[type="button"]:hover,
.form-style-8 input[type="submit"]:hover {
    background:linear-gradient(to bottom, #34CACA 5%, #30C9C9 100%);
    background-color:#34CACA;
}
</style>
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
          <li><a href="index.aspx"><span>Rooms</span></a></li>
          <li><a href="students.aspx"><span>Students</span></a></li>
          <li class="active"><a href="viewrooms.aspx"><span>View Room</span></a></li>
          <li><a href="holidayslist.aspx"><span>Holidays</span></a></li>
          <li><a href="studentleave.aspx"><span>Student Leave</span></a></li>
          <li><a href="messfees.aspx"><span>Mess Fees</span></a></li>
          <li><a href="warden.aspx"><span>Logout</span></a></li>
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
               <div class="form-style-8">
   <h2 style="color:White;">View Student Room</h2>
 <asp:DropDownList ID="DropDownList4" runat="server" Width="500px" Height="50px" ValidationGroup="life" 
                                       onselectedindexchanged="DropDownList4_SelectedIndexChanged" AutoPostBack="true">
            </asp:DropDownList>   
             <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="*" ControlToValidate="DropDownList4" ValidationGroup="life"></asp:RequiredFieldValidator>
 
    <asp:DropDownList ID="DropDownList5" runat="server" Width="500px" Height="50px" ValidationGroup="life" 
                                       onselectedindexchanged="DropDownList5_SelectedIndexChanged" AutoPostBack="true">
    </asp:DropDownList>   
    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="*" ControlToValidate="DropDownList5" ValidationGroup="life"></asp:RequiredFieldValidator>
 
    <br/>
 
</div>
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
                  
                <asp:BoundField DataField="studentname" HeaderText="Student Name"/>
                <asp:BoundField DataField="studentrollno" HeaderText="Rollno"/>
                <asp:BoundField DataField="gender" HeaderText="Gender"/>
                <asp:BoundField DataField="department" HeaderText="Department"/>
                <asp:BoundField DataField="semester" HeaderText="Semester"/>
                <asp:BoundField DataField="address" HeaderText="Address"/>
                <asp:BoundField DataField="phoneno" HeaderText="Phoneno"/>
                <asp:BoundField DataField="emailid" HeaderText="Email ID"/>
                <asp:BoundField DataField="blockno" HeaderText="Block No"/>
                <asp:BoundField DataField="blockname" HeaderText="Block Name"/>
                <asp:BoundField DataField="roomno" HeaderText="Room No"/>
                <asp:BoundField DataField="admissiondate" HeaderText="Admission Date"/>
            
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
