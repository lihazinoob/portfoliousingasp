<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AcademicsList.aspx.cs" Inherits="Portfolio_Final.AcademicsList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/random.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>

    .header {
        text-align: center;
        font-size: 24px;
        margin-bottom: 20px;
    }

    .gridview-container {
        width: 100%;
        margin: auto;
        border-collapse: collapse;
    }

    .gridview-container th, .gridview-container td {
        padding: 8px;
        border: 1px solid #ddd;
        text-align: left;
    }

    .gridview-container tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    .gridview-container tr:hover {
        background-color: #ddd;
    }

    .update-button {
        padding: 5px 10px;
        background-color: #4CAF50;
        color: white;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

    .update-button:hover {
        background-color: #45a049;
    }
    .delete-button {
        padding: 5px 10px;
        background-color: #f44336;
        color: white;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        text-decoration: none;
        display: inline-block;
    }

    .delete-button:hover {
        background-color: #c62828;
    }
    .des{
        margin-top:10rem;
        text-align: center;
    }
    

    

</style>
    <div class="header">
            <p>Academics List</p>
        </div>
   <asp:GridView ID="academicsList" runat="server" CssClass="gridview-container" AutoGenerateColumns="False" OnRowCommand="academicsList_OnRowCommand">
                <Columns>
                    <asp:BoundField DataField="degreename" HeaderText="Name of the degree" />
                    <asp:BoundField DataField="inst_name" HeaderText="Institution Name" />
                    <asp:BoundField DataField="desciption" HeaderText="Description" />

                    <asp:TemplateField HeaderText="Actions">

                        
                        <ItemTemplate>
                            <asp:LinkButton ID="UpdateLinkButton" runat="server" CssClass="update-button" CommandName="upd" CommandArgument='<%# Eval("degreename") %>'>Update</asp:LinkButton>
                            <asp:LinkButton ID="DeleteLinkButton" runat="server" CssClass="delete-button" CommandName="del" CommandArgument='<%# Eval("degreename") %>'>Delete</asp:LinkButton>

                        </ItemTemplate>
                    
                    </asp:TemplateField>
                    
                </Columns>
            </asp:GridView>
        
        <h2 class="des">Want to add a course?</h2>
        <div>
            <asp:Button ID="addcoursebutton" runat="server" Text="CLICK HERE" CssClass="update" OnClick="addcoursebutton_Click" />
        </div>

        <div>
            <asp:Button ID="logout" runat="server" Text="Log Out" CssClass="update" OnClick="logout_click"/>
        </div>
    
        




</asp:Content>
