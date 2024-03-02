<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AcademicsList.aspx.cs" Inherits="Portfolio_Final.AcademicsList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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

    

</style>
    <div class="header">
            <p>Academics</p>
        </div>
   <asp:GridView ID="academicsList" runat="server" CssClass="gridview-container" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="degreename" HeaderText="Name of the degree" />
                    <asp:BoundField DataField="inst_name" HeaderText="Institution Name" />
                    <asp:BoundField DataField="desciption" HeaderText="Description" />

                    <asp:TemplateField HeaderText="Actions">

                        
                        <ItemTemplate>
                            <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="update-button" />
                            <asp:LinkButton ID="DeleteLinkButton" runat="server" CssClass="delete-button">Delete</asp:LinkButton>

                        </ItemTemplate>
                    
                    </asp:TemplateField>
                    
                </Columns>
            </asp:GridView>

    





</asp:Content>
