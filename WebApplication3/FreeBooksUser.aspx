<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="FreeBooksUser.aspx.cs" Inherits="WebApplication3.FreeBooksUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

                     <div class="row">
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="Select * from [EBooks]"></asp:SqlDataSource>
                     <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" 
                            onselectedindexchanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
                           <Columns>
                              <asp:TemplateField>
                                 <ItemTemplate>
                                    <div class="container-fluid">
                                       <div class="row">
                                          <div class="col-lg-10">
                                             <div class="row">
                                                <div class="col-10">
                                                   <asp:Label ID="bookID" runat="server" Font-Bold="True" Text='<%# Eval("id") %>'></asp:Label>
                                                   <asp:Label ID="Label9" runat="server" Font-Bold="True" Text='<%# Eval("name") %>'></asp:Label>
                                                </div>
                                             </div>
                                          </div>
                                       </div>
                                    </div>
                                 </ItemTemplate>
                              </asp:TemplateField>
                               <asp:CommandField ShowSelectButton="True" SelectText="Download" ControlStyle-ForeColor="Blue" />
                           </Columns>
                        </asp:GridView>
                     </div>
                  </div>

</asp:Content>
