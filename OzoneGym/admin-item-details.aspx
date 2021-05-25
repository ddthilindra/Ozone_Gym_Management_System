<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="admin-item-details.aspx.cs" Inherits="OzoneFitness.admin_item_details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/admin-item-details.css" rel="stylesheet" />

    <script src="js/html2canvas.min.js"></script>
    <script src="js/pdfmake.min.js"></script>
    <script type="text/javascript">
        function Export() {
            
            html2canvas(document.getElementById('Gym_GridView1'), {
                onrendered: function (canvas) {
                    var data = canvas.toDataURL();
                    var docDefinition = {
                        content: [{
                            image: data,
                            width: 500
                        }]
                    };
                    pdfMake.createPdf(docDefinition).download("emp.pdf");
                    alert("Admit Card Downloading Started");
                }
            });
        }
    </script>

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

    <div class="tab-pane fade show active" id="list-gym" role="tabpanel" aria-labelledby="list-gym-list">
            <div class="head">
                <h3> Store Details</h3>

                <div class="dropdown">
              <button class="btn dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Store Details 
              </button>
              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                <a class="dropdown-item" href="admin-add-item.aspx">Add Item</a>
                
                <a class="dropdown-item" href="admin-add-supplier.aspx">Add Supplier</a>
                <a class="dropdown-item" href="admin-suppliers-details.aspx">Suppliers Details</a>
              </div>
            </div>
          </div>
    
            </div>


        <asp:SqlDataSource ID="SqlDataSource1"  runat="server" ConnectionString="<%$ ConnectionStrings:OzoneFitnessConnectionString %>" SelectCommand="SELECT * FROM [stored]"></asp:SqlDataSource>

        
        <asp:GridView ID="GridView1" CssClass="table table-responsive-lg" runat="server" AutoGenerateColumns="False" DataKeyNames="ItemID" DataSourceID="SqlDataSource1" GridLines="None" HeaderStyle-CssClass="thead-dark">
            <Columns>
                <asp:BoundField DataField="ItemID" HeaderText="ItemID" InsertVisible="False" ReadOnly="True" SortExpression="ItemID" />
                <asp:BoundField DataField="adminID" HeaderText="adminID" SortExpression="adminID" HeaderStyle-CssClass="thead-dark" />
                <asp:BoundField DataField="sID" HeaderText="Supplier ID" SortExpression="sID"  HeaderStyle-CssClass="thead-dark" />
                <asp:BoundField DataField="name" HeaderText="Item Name" SortExpression="name"  HeaderStyle-CssClass="thead-dark" />
                <asp:BoundField DataField="qty" HeaderText="Quantity" SortExpression="qty"  HeaderStyle-CssClass="thead-dark" />
                <asp:BoundField DataField="supplier" HeaderText="Supplier" SortExpression="supplier"  HeaderStyle-CssClass="thead-dark" />
                
                <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
                <asp:BoundField DataField="idesc" HeaderText="Description" SortExpression="idesc" />
                <asp:BoundField DataField="pdate" HeaderText="Date" SortExpression="pdate" />
                

                <asp:HyperLinkField Text="Edit" DataNavigateUrlFields="ItemID" DataNavigateUrlFormatString="admin-update-item.aspx?ItemID={0}" ControlStyle-CssClass="btn btn-primary">

                    <ControlStyle CssClass="btn btn-primary"></ControlStyle>

                </asp:HyperLinkField>



                <asp:TemplateField>
                    <ItemTemplate>

                        <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#staticBackdrop<%#Eval("ItemID")%>">
                            Delete
                        </button>


                        
                            <div class="modal fade" id="staticBackdrop<%#Eval("ItemID")%>" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
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
                                            <a href="admin-delete-item.aspx?ItemID=<%#Eval("ItemID")%>" class="btn btn-danger">Delete Permenantly</a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                    </ItemTemplate>
                </asp:TemplateField>


            </Columns>
        </asp:GridView>

        <input type="button" id="btnExport" value="Export" onclick="Export()" class="btn btn-primary" />


            
            <!--<table class="table">
                <thead class="thead-dark">
                  <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Name</th>
                    <th scope="col">Quantity</th>
                    <th scope="col">Supplier</th>
                    <th scope="col">Image</th>
                    <th scope="col">Price</th>
                    <th scope="col">Description</th>
                    <th scope="col">Puerchase Date</th>
                    <th scope="col">Actions</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <th class="index-our" scope="row">1</th>
                    <td><asp:Label ID="iname" runat="server" Text="Nitrotech"></asp:Label></td>
                    <td><asp:Label ID="iqty" runat="server" Text="10"></asp:Label></td>
                    <td><asp:Label ID="isupplier" runat="server" Text="winPower"></asp:Label></td>
                    <td><asp:Label ID="iimg" runat="server" Text="1jpg"></asp:Label></td>
                    <td><asp:Label ID="iprice" runat="server" Text="Rs12000"></asp:Label></td>
                    <td><asp:Label ID="idesc" runat="server" Text="mass"></asp:Label></td>
                    <td><asp:Label ID="date" runat="server" Text="12/12/2020"></asp:Label></td>
                    
                      <td>
                        <asp:LinkButton class="btn btn-primary " ID="edit" runat="server">EDIT</asp:LinkButton>
                        <asp:LinkButton style="margin-left: 10px;" class="btn btn-primary " ID="delete" runat="server">DELETE</asp:LinkButton>

                    </td>

                    
                  </tr>
                  <tr>
                    <th class="index-our" scope="row">2</th>
                    <td>Jacob</td>
                    <td>Thornton</td>
                    <td>@fat</td>
                    <td>@fat</td>
                    <td>@fat</td>
                    <td></td>
                  </tr>
                  <tr>
                    <th class="index-our" scope="row">3</th>
                    <td>Larry</td>
                    <td>the Bird</td>
                    <td>@twitter</td>
                    <td>@twitter</td>
                    <td>@twitter</td>
                    <td></td>
                  </tr>
                </tbody>
              </table>-->



</asp:Content>

