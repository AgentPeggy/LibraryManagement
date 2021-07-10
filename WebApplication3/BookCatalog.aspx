<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="BookCatalog.aspx.cs" Inherits="WebApplication3.BookCatalog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h2 style="width:max-content;margin: auto;">Book Catalog</h2>
        <p style="width:max-content;margin: auto;">Select book to know more</p>
        <br />
    </div>


<div style="text-align: center;">
    
    <div class="accordion" id="myAccordion" style="width: 80%;margin:auto;">

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [book_master_tbl]"></asp:SqlDataSource>

        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="book_id" DataSourceID="SqlDataSource1">
         <Columns>            
            <asp:TemplateField>
                <ItemTemplate>
                    <div class="card">
                        <div class="card-header" id="headingOne">
                            <h2 class="mb-0">
                                <button type="button" class="btn btn-link" runat="server" data-toggle="collapse" data-target='<%# "#" + Eval("book_id").ToString().Trim()%>' style="font-size : 20px;"><%# Eval("book_name") %></button> 
                            </h2>
                        </div>
                        <div id='<%#Eval("book_id").ToString().Trim()%>' class="collapse" aria-labelledby="headingOne" data-parent="#myAccordion">
                            <div class="card-body">


                                <div class="row">
                                  <div class="col-2">
                                      <img src='<%# Eval("book_img_link").ToString().Replace('~','.') %>' class="img-fluid" />
                                  </div>
                                  <div class="col-10"style="font-size : 20px;">

                                      <div class="row">
                                        <div class="col-12">
                                            <span>Author - </span>
                                            <label >'<%# Eval("author_name") %>'</label>
                                            &nbsp;| <span><span>&nbsp;</span>Genre - </span>
                                            <label>'<%# Eval("genre") %>'</label>
                                            &nbsp;|
                                            <span>
                                                Language -<span>&nbsp;</span>
                                            <label>'<%# Eval("language") %>'</label>
                                            </span>
                                        </div>
                                    </div>


                                    <div class="row">
                                    <div class="col-12">
                                        Publisher -
                                        <label>'<%# Eval("publisher_name") %>'</label>
                                        <asp:Label ID="Label5" runat="server" Font-Bold="True" Text=></asp:Label>
                                        &nbsp;| Publish Date -
                                        <label>'<%# Eval("publish_date") %>'</label>
                                        <asp:Label ID="Label6" runat="server" Font-Bold="True" Text=></asp:Label>
                                        &nbsp;| Pages -
                                        <label>'<%# Eval("no_of_pages") %>'</label>
                                        <asp:Label ID="Label7" runat="server" Font-Bold="True" Text=></asp:Label>
                                        &nbsp;| Edition -
                                        <label>'<%# Eval("edition") %>'</label>
                                        <asp:Label ID="Label8" runat="server" Font-Bold="True" Text=></asp:Label>
                                    </div>
                                </div>

                                       <div class="row">
                                    <div class="col-12">
                                        Cost -
                                        <label>'<%# Eval("book_cost") %>'</label>
                                        &nbsp;| Actual Stock -
                                        <label>'<%# Eval("actual_stock") %>'</label>
                                        &nbsp;| Available Stock -
                                        <label>'<%# Eval("current_stock") %>'</label>
                                        &nbsp;| Book ID -
                                        <label>'<%# Eval("book_id") %>'</label>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-12">
                                        Description -
                                        <label>'<%# Eval("book_description") %>'</label>
                                    </div>
                                </div>


                                  </div>
                                </div>


                                



                            </div>
                        </div>
                    </div>
                </ItemTemplate>
             </asp:TemplateField>
            </Columns>
            </asp:GridView>



    </div>
</div>


</asp:Content>
