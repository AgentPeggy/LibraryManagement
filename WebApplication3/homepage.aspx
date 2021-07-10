<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="WebApplication3.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

   <%--Carousel Begins--%>
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
      <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img class="d-block w-100" src="imgs/carosel2.jpg" alt="First slide" width="50" height="700">
        </div>
        <div class="carousel-item">
          <img class="d-block w-100" src="imgs/carosel1.jpg" alt="Second slide"  width="50" height="700">
        </div>
        <div class="carousel-item">
          <img class="d-block w-100" src="imgs/carosel3.jpg" alt="Third slide" width="50" height="700">
        </div>
      </div>
      <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
    <%--Carousel Ends--%>


     <div>
        <br />
        <br />
    </div>
     <section align="center">
        <img src="imgs/HomePageImage2.png" class="img-fluid" alt="Library Image" width="1300" height="600" />
    </section>
    <section>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <center>
                    <h2>What we Offer?</h2>
                    <p><b>Manage all library related operations in one place</b></p>
                    </center>
                </div>
            </div>

            <div class="row">
                <div class="col-md-4">
                    <center>
                     <h4>Book Catalog</h4>
                    <p class="text-justify">Maintain all the books information in one place that is easy to access.</p>
                    </center>
                </div>

                <div class="col-md-4">
                    <center>
                     <h4>Find Books</h4>
                    <p class="text-justify">Find the book and its status by using search bar</p>
                    </center>
                </div>

                <div class="col-md-4">
                    <center>
                     <h4>For admins, find the defaulters</h4>
                    <p class="text-justify">The admins can find the defaulters who failed to return on time</p>
                    </center>
                </div>
            </div>
        </div>

    </section>

    <section align="center">
        <img src="imgs/HomePageImage1.jpg" class="img-fluid" alt="Library Image" width="900" height="600" />
    </section>



</asp:Content>
