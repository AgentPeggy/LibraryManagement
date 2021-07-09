<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="BookCatalog.aspx.cs" Inherits="WebApplication3.BookCatalog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <br /><br /><br /><br />
        <h2>Book Catalog</h2>
    </div>


<div style="text-align: center;">
    
    <div class="accordion" id="myAccordion" style="width: 50%;margin:auto;">

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [book_master_tbl]"></asp:SqlDataSource>

        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="book_id" DataSourceID="SqlDataSource1">
         <Columns>            
            <asp:TemplateField>
                <ItemTemplate>
                    <div class="card">
                        <div class="card-header" id="headingOne">
                            <h2 class="mb-0">
                                <!--data-target='<%# "#" + Eval("book_id")%>'!-->
                                
                                <button type="button" class="btn btn-link" runat="server" data-toggle="collapse" data-target='<%# "#" + Eval("book_id").ToString().Trim()%>' Font-Bold="True" Font-Size="X-Large">'<%# Eval("book_name") %>'</button> 
                            </h2>
                        </div>
                        <div id='<%#Eval("book_id").ToString().Trim()%>' class="collapse" aria-labelledby="headingOne" data-parent="#myAccordion">
                            <div class="card-body">
                                <p>HTML stands for HyperText Markup Language. HTML is the standard markup language for describing the structure of web pages. <a href="https://www.tutorialrepublic.com/html-tutorial/" target="_blank">Learn more.</a></p>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
             </asp:TemplateField>
            </Columns>
            </asp:GridView>

    <div class="card">
        <div class="card-header" id="headingOne">
            <h2 class="mb-0">
                <button type="button" class="btn btn-link" data-toggle="collapse" data-target="#collapseOne">1. What is HTML?</button>
            </h2>
        </div>
        <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#myAccordion">
            <div class="card-body">
                <p>HTML stands for HyperText Markup Language. HTML is the standard markup language for describing the structure of web pages. <a href="https://www.tutorialrepublic.com/html-tutorial/" target="_blank">Learn more.</a></p>
            </div>
        </div>
    </div>

    </div>
</div>


</asp:Content>
