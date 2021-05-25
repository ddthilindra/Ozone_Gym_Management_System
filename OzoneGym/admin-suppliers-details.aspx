<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="admin-suppliers-details.aspx.cs" Inherits="OzoneFitness.admin_suppliers_details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/admin-suppliers-details.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Customer" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Employee" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Diets" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Payment" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="Expencess" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="Gym" runat="server">

     <div class="tab-pane fade show active" id="list-expencess" role="tabpanel" aria-labelledby="list-expencess-list">
            <div class="head">
                <h3> Suppliers Details</h3>

                <div class="dropdown">
              <button class="btn dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Suppliers Details
              </button>
              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                <a class="dropdown-item" href="admin-add-item.aspx">Add Item</a>
                <a class="dropdown-item" href="admin-item-details.aspx">Items Details</a>
                <a class="dropdown-item" href="admin-add-supplier.aspx">Add Supplier</a>
                
              </div>
            </div>
          </div>
    
            </div>

         <asp:GridView ID="GridView1" runat="server" GridLines="None" Cssclass="table table-responsive-lg" BorderStyle="None" AutoGenerateColumns="False" DataKeyNames="sID" DataSourceID="SqlDataSource1" >
             <Columns>
                 <asp:BoundField DataField="sID" HeaderText="sID" InsertVisible="False" ReadOnly="True" SortExpression="sID" />
                 <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                 <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                 <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                 <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />



                  <asp:HyperLinkField Text="Edit" DataNavigateUrlFields="sID" DataNavigateUrlFormatString="admin-update-supplier.aspx?sID={0}" ControlStyle-CssClass="btn btn-primary">

                          <ControlStyle CssClass="btn btn-primary"></ControlStyle>

                         </asp:HyperLinkField>

                 <asp:TemplateField HeaderText="Actions">
                     <ItemTemplate>
                       

                         <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#staticBackdrop<%#Eval("sID")%>">
                            Delete
                        </button>


                        
                            <div class="modal fade" id="staticBackdrop<%#Eval("sID")%>" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                <div class="modal-dialog modal-dialog-centered">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="staticBackdropLabel">You Are Going To Delete A Record!!!</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            You are Going to Permenantly Delete a Record!!
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Don't Delete</button>
                                            <a href="admin-delete-supplier.aspx?sID=<%#Eval("sID")%>" class="btn btn-danger">Delete Permenantly</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                     </ItemTemplate>
                     <HeaderStyle CssClass="table table-responsive-lg" />
                 </asp:TemplateField>
             </Columns>
             
             <HeaderStyle CssClass="thead-dark" />
             
         </asp:GridView>

            
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OzoneFitnessConnectionString %>" SelectCommand="SELECT * FROM [supplier]"></asp:SqlDataSource>

            
            <!--<table class="table">
                <thead class="thead-dark">
                  <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Name</th>
                    <th scope="col">Email</th>
                    <th scope="col">Address</th>
                    <th scope="col">Phone</th>
                    <th scope="col">Actions</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <th class="index-our" scope="row">1</th>
                    <td><asp:Label ID="sdname" runat="server" Text="Dilina Dakshila"></asp:Label></td>
                    <td><asp:Label ID="sbemail" runat="server" Text="dilina@gmail.com"></asp:Label></td>
                    <td><asp:Label ID="sbaddress" runat="server" Text="thanamalwila"></asp:Label></td>
                    <td><asp:Label ID="sbphone" runat="server" Text="0411234567"></asp:Label></td>
                    <td>
                       <asp:LinkButton class="btn btn-primary " ID="sedit" runat="server">EDIT</asp:LinkButton>
                       <asp:LinkButton style="margin-left: 10px;" class="btn btn-primary " ID="sdelete" runat="server">DELETE</asp:LinkButton>
                    </td>
                    
                  </tr>
                  <tr>
                    <th class="index-our" scope="row">2</th>
                    <td>Jacob</td>
                    <td>Thornton</td>
                    <td>@fat</td>
                    <td>@fat</td>
                    <td>@fat</td>
                  </tr>
                  <tr>
                    <th class="index-our" scope="row">3</th>
                    <td>Larry</td>
                    <td>the Bird</td>
                    <td>@twitter</td>
                    <td>@twitter</td>
                    <td>@twitter</td>
                  </tr>
                </tbody>
              </table>-->

        



</asp:Content>

