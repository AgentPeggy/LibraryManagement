<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="WebApplication3.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section>
        <img src="imgs/home-bg.jpg" class="img-fluid"/>
    </section>
    <section>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <center>
                    <h2>Our Features</h2>
                    <p><b>Our 3 Primary Features -</b></p>
                    </center>
                </div>
            </div>

            <div class="row">
                <div class="col-md-4">
                    <center>
                     <img width="150px" src="imgs/digital-inventory.png"/>
                     <h4>Digital Book Inventory</h4>
                    <p class="text-justify">It is a method that libraries use to determine whether some items in their collection are in need of preservation</p>
                    </center>
                </div>

                <div class="col-md-4">
                    <center>
                     <img width="150px" src="imgs/search-online.png"/>
                     <h4>Search Books</h4>
                    <p class="text-justify">User can search books here, by typing name of the book or author name</p>
                    </center>
                </div>

                <div class="col-md-4">
                    <center>
                     <img width="150px" src="imgs/defaulters-list.png"/>
                     <h4>Defaulter List</h4>
                    <p class="text-justify">It is the list of users who has not returned books before due date </p>
                    </center>
                </div>
            </div>
        </div>

    </section>


     <section>
         <img src="imgs/in-homepage-banner.jpg" class="img-fluid"/>
        
    </section>

     <section>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <center>
                    <h2>Our Process</h2>
                    <p><b>We have a Simple 3 Step Process</b></p>
                    </center>
                </div>
            </div>

            <div class="row">
                <div class="col-md-4">
                    <center>
                        <img width="150px" src="imgs/sign-up.png" />
                     
                     <h4>Sign Up</h4>
                    <p class="text-justify">In order to acess the facilites of library user needs to sign up i.e regeister by providing details</p>
                    </center>
                </div>

                <div class="col-md-4">
                    <center>
                     <img width="150px" src="imgs/search-online.png"/>
                     <h4>Search Books</h4>
                    <p class="text-justify">User can search books here, by typing name of the book or author name</p>
                    </center>
                </div>

                <div class="col-md-4">
                    <center>
                     <img width="150px" src="imgs/library.png"/>
                     <h4>Visit Us</h4>
                    <p class="text-justify">User can visit library anytime between 9 AM to 6 PM</p>
                    </center>
                </div>
            </div>
        </div>

    </section>
</asp:Content>
