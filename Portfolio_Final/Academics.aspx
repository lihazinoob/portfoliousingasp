<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Academics.aspx.cs" Inherits="Portfolio_Final.Academics" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/random.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<style>
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
}

.container {
    max-width: 800px;
    margin: 50px auto;
    padding: 20px;
    background-color: #f2f2f2;
    border-radius: 10px;
}

.textbox {
    margin-bottom: 20px;
}

.textbox input[type="text"] {
    width: calc(100% - 22px); /* Adjust the width of the textbox */
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    transition: border-color 0.3s ease;
}

.textbox input[type="text"]:hover {
    border-color: #999;
}

.textbox input[type="text"]:focus {
    outline: none;
    border-color: #4CAF50;
}

.submit-btn-container {
    text-align: center;
}

.submit-btn {
    background-color: #4CAF50;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

.submit-btn:hover {
    background-color: #45a049;
}
.des{
    margin-top:10rem;
    text-align: center;
}
</style>


    



    <div class="container">
    <div class="textbox">
        <label for="textbox1">Name of the Degree</label><br>
        <asp:TextBox ID="textbox1" runat="server" CssClass="textbox"></asp:TextBox>
    </div>
    <div class="textbox">
        <label for="textbox2">Institution Name:</label><br>
        <asp:TextBox ID="textbox2" runat="server" CssClass="textbox"></asp:TextBox>
    </div>
    <div class="textbox">
        <label for="textbox3">Write Short Description:</label><br>
        <asp:TextBox ID="textbox3" runat="server" CssClass="textbox"></asp:TextBox>
    </div>
    <div class="submit-btn-container">
        <asp:Button ID="submitButton" runat="server" Text="Submit" CssClass="submit-btn" OnClick="submitButton_Click" />
    </div>
    </div>

     <h2 class="des">Want to SEE the courses?</h2>
    <div>

     <asp:Button ID="addcoursebutton" runat="server" Text="CLICK HERE" CssClass="update" OnClick="addcoursebutton_Click" />
    </div>

    

    







</asp:Content>
