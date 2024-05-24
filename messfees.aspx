﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="messfees.aspx.cs" Inherits="messfees" %>

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
          <li><a href="viewrooms.aspx"><span>View Room</span></a></li>
          <li><a href="holidayslist.aspx"><span>Holidays</span></a></li>
          <li><a href="studentleave.aspx"><span>Student Leave</span></a></li>
          <li class="active"><a href="messfees.aspx"><span>Mess Fees</span></a></li>
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
   <h2 style="color:White;">Mess Fees Details</h2>
<br />
    <asp:DropDownList ID="DropDownList4" runat="server" Width="500px" Height="50px" ValidationGroup="life" 
                                       onselectedindexchanged="DropDownList4_SelectedIndexChanged" AutoPostBack="true">
            </asp:DropDownList>   
    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="*" ControlToValidate="DropDownList4" ValidationGroup="life"></asp:RequiredFieldValidator>
    <asp:DropDownList ID="DropDownList5" runat="server" Width="500px" Height="50px" ValidationGroup="life" 
                                       onselectedindexchanged="DropDownList5_SelectedIndexChanged" AutoPostBack="true">
    </asp:DropDownList>   
    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="*" ControlToValidate="DropDownList5" ValidationGroup="life"></asp:RequiredFieldValidator>
    <asp:DropDownList ID="DropDownList3" runat="server" Width="500px" Height="50px" ValidationGroup="life" 
                                        onselectedindexchanged="DropDownList3_SelectedIndexChanged" AutoPostBack="True">
    </asp:DropDownList>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*" ControlToValidate="DropDownList3" ValidationGroup="life" InitialValue="Select Gender"></asp:RequiredFieldValidator>
       <asp:TextBox ID="TextBox2" runat="server" Width="500px" Height="30px" placeholder="Rollno" ValidationGroup="life"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="TextBox2" ValidationGroup="life"></asp:RequiredFieldValidator>
   
           <asp:TextBox ID="TextBox3" runat="server" Width="500px" Height="70px" placeholder="Gender" ValidationGroup="life"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="TextBox3" ValidationGroup="life"></asp:RequiredFieldValidator>
   
    <asp:TextBox ID="TextBox4" runat="server" Width="500px" Height="30px" placeholder="Department" ValidationGroup="life"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ControlToValidate="TextBox4" ValidationGroup="life"></asp:RequiredFieldValidator>
    <asp:TextBox ID="TextBox5" runat="server" Width="500px" Height="30px" placeholder="Semester" ValidationGroup="life"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" ControlToValidate="TextBox5" ValidationGroup="life"></asp:RequiredFieldValidator>
     <asp:TextBox ID="TextBox6" runat="server" Width="500px" Height="30px" placeholder="Address" ValidationGroup="life" TextMode="MultiLine"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="*" ControlToValidate="TextBox6" ValidationGroup="life"></asp:RequiredFieldValidator>
      <asp:TextBox ID="TextBox7" runat="server" Width="500px" Height="30px" placeholder="Phoneno" ValidationGroup="life"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="*" ControlToValidate="TextBox7" ValidationGroup="life"></asp:RequiredFieldValidator>
    <asp:TextBox ID="TextBox8" runat="server" Width="500px" Height="30px" placeholder="Emailid" ValidationGroup="life"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="TextBox8" ValidationGroup="life"></asp:RequiredFieldValidator>
    <asp:TextBox ID="TextBox9" runat="server" Width="500px" Height="30px" placeholder="Mess Fees" ValidationGroup="life"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="TextBox9" ValidationGroup="life"></asp:RequiredFieldValidator>
    <asp:TextBox ID="TextBox11" runat="server" Width="500px" Height="30px" placeholder="Paid Date" ValidationGroup="life"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="*" ControlToValidate="TextBox11" ValidationGroup="life"></asp:RequiredFieldValidator>
      
    <asp:Button ID="Button1" runat="server" Text="Save" onclick="Button1_Click" ValidationGroup="life"/>
     <asp:Button ID="Button2" runat="server" Text="View" onclick="Button2_Click"/>
    <br/>
 
</div> </div>
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