<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminauthormanagement.aspx.cs" Inherits="WebApplication3.adminauthormanagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">

            <!--TOP-->
            <div style="width: 800px;margin:auto;">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                        <h4>Author Details</h4>
                                    </center>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-md-4">
                                <label>Author ID</label>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID" Width="60px"></asp:TextBox>
                                        <asp:Button class="form-control btn btn-primary" ID="Button5" runat="server"  Text=">>" OnClick="Button1_Click" />
                                    </div>
                                </div>
                            </div>
                           </div>
                        <br />
                        <div class="row">
                            <div class="col-md-4">
                                <label>Author Name</label>
                                </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" Width="200px" placeholder="Author Name"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <br />
                         <div class="row">
                                <asp:Button ID="Button1" class="btn btn-lg btn-block btn-primary" runat="server" Text="Add" OnClick="Button2_Click" />
                                <asp:Button ID="Button6" class="btn btn-lg btn-block btn-primary" runat="server" Text="Update" OnClick="Button3_Click" />
                                <asp:Button ID="Button7" class="btn btn-lg btn-block btn-primary" runat="server" Text="Delete" OnClick="Button4_Click" />
                        </div>

                    </div>
                </div>
            </div>
            <!--TOP-->
            <br /><br />
            <!--BOTTOM-->
                <div style="width: 800px;margin:auto;">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                        <h4>Author List</h4>
                                    </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString2 %>" SelectCommand="SELECT * FROM [author_master_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="author_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="author_id" HeaderText="author_id" ReadOnly="True" SortExpression="author_id" />
                                        <asp:BoundField DataField="author_name" HeaderText="author_name" SortExpression="author_name" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
                    <a href="homepage.aspx"><< Back to Home</a><br>
                <br>
            </div>
            <!--BOTTOM-->
        </div>
    </div>


</asp:Content>
