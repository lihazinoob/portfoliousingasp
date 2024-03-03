<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="Portfolio_Final.adminlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel ="stylesheet" href="CSS/adminloginstyle.css"/>

</head>
<body>
    
        <div>
            <div class="wrapper">
    <div class="form-wrapper sign-in">
      <form id="form2" runat="server">
        <h2>Admin Login</h2>
        <div class="input-group">
          <input type="text" required>
          <label for="">Username</label>
        </div>
        <div class="input-group">
          <input type="password" required>
          <label for="">Password</label>
        </div>
        
        <button type="submit">Login</button>
        
      </form>
    </div>
    
  </div>


        </div>
    <script src="JS/adminloginjs.js"></script>
</body>
</html>
