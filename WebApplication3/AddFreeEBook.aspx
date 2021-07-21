<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddFreeEBook.aspx.cs" Inherits="WebApplication3.AddFreeEBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 style="text-align:center; color:blueviolet;">Free E Book</h1>

    <div class="container">
 
        <div class="row">
            <div style="width: 800px;margin:auto;">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                         <div class="col">
                            <center>
                               <h4>Upload Books</h4>
                                <br />
                                <label>Select Book</label>
                                <asp:FileUpload ID="FileUpload1" runat="server" ToolTip="Select Only PDF File" />
                                <asp:Label ID="Label2" runat="server"></asp:Label>  
                                <asp:Button ID="Button1" runat="server" Text="Upload" onclick="Button1_Click" class="btn btn-sm btn-success"/>
                            </center>
                         </div>
                  </div>
                    </div>
                </div>
            </div>
        </div>
        <br /><br />
        <div class="row">
            <div style="width: 800px;margin:auto;">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                         <div class="col">
                            <center>
                                <div class="d-flex justify-content-center">
                                <h4>Available Books</h4>
                                <p style="margin-left:20px;">     </p>
                                <asp:Button ID="Button2" runat="server" class="btn btn-sm btn-success" Text="View Books" onclick="Button2_Click"/>  
                                </div>
                                <br />
                                <asp:GridView ID="GridView1" runat="server"  CaptionAlign="Top" HorizontalAlign="Justify" 
                                    DataKeyNames="id" onselectedindexchanged="GridView1_SelectedIndexChanged" 
                                    ToolTip="Click to download" CellPadding="8" ForeColor="#333333" GridLines="Horizontal"
                                    Width="600px">  
                                <RowStyle BackColor="#E3EAEB" />  
                                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />  
                                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />  
                                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />  
                                <HeaderStyle BackColor="Gray" Font-Bold="True" ForeColor="White" />  
                                <EditRowStyle BackColor="#7C6F57" />  
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>  
                                        <asp:CommandField ShowSelectButton="True" SelectText="Download" ControlStyle-ForeColor="Blue" />
                                </Columns>  
                                </asp:GridView>  
                                
                            </center>
                         </div>
                  </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

 

</asp:Content>
