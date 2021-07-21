<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="WebApplication3.AdminHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-8">
            <img src="imgs/AdminImage1.jpg" class="img-fluid" alt="Library Image" width="1000" height="600" />
        </div>
        <div class="col-4">
                <br /><br /><br /><br />
            <h3>Admin Actions</h3>
            <br /><br />
            <ul class="list-group">
              <li class="list-group-item"><a href="adminauthormanagement.aspx">Author</a></li>
              <li class="list-group-item" ><a href="adminpublishermanagement.aspx">Publisher</a></li>
              <li class="list-group-item" ><a href="adminbookinventory.aspx">Book Inventory</a></li>
              <li class="list-group-item" ><a href="adminbookissuing.aspx">Issue Books</a></li>
              <li class="list-group-item" ><a href="adminmembermanagement.aspx">Manage Members</a></li>
              <li class="list-group-item" ><a href="AddFreeEBook.aspx">Add E-Book</a></li>
            </ul>
        </div>
    </div>
     
</asp:Content>
