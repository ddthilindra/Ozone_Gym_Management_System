<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="admin-diet-details.aspx.cs" Inherits="OzoneFitness.admin_diet_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/admin-diet-details.css" rel="stylesheet" />

    <script>
        $(document).ready(function () {
            $('.table').prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable();
        });
    </script>

    <title>OZONE - Diet Details</title>

    <script src="js/html2canvas.min.js"></script>
    <script src="js/pdfmake.min.js"></script>
    <script type="text/javascript">
        function Export() {

            html2canvas(document.getElementById('Diet_GridView1'), {
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

        <div class="tab-pane fade show active" id="list-expencess" role="tabpanel" aria-labelledby="list-expencess-list">
            <div class="head">
                <h3>Diet Details</h3>

                <div class="dropdown">
                    <button class="btn dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Diet Details
                    </button>
                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                        <a class="dropdown-item" href="admin-add-diet.aspx">Add Diet</a>
                        <a class="dropdown-item" href="admin-diet-reserved.aspx">Diet Resevation</a>
                        
                    </div>
                </div>
            </div>

        



        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OzoneFitnessConnectionString %>" SelectCommand="SELECT * FROM [Diet]"></asp:SqlDataSource>



        <asp:GridView
            ID="GridView1"
            runat="server"
            AutoGenerateColumns="False"
            GridLines="None"
            DataKeyNames="DietId"
            DataSourceID="SqlDataSource1"
            CssClass="table table-responsive-lg">
            <Columns>
                <asp:BoundField DataField="DietId" HeaderText="DietId" ReadOnly="True" SortExpression="DietId" InsertVisible="False" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:BoundField DataField="DietType" HeaderText="DietType" SortExpression="DietType" />
                <asp:BoundField DataField="FoodType" HeaderText="FoodType" SortExpression="FoodType" />
                <asp:BoundField DataField="Start_BMI" HeaderText="Start_BMI" SortExpression="Start_BMI" />

                <asp:BoundField DataField="End_BMI" HeaderText="End_BMI" SortExpression="End_BMI" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />

                <asp:HyperLinkField Text="Edit" DataNavigateUrlFields="DietId" DataNavigateUrlFormatString="admin-edit-diet.aspx?DietId={0}" ControlStyle-CssClass="btn btn-primary">

                    <ControlStyle CssClass="btn btn-primary"></ControlStyle>

                </asp:HyperLinkField>

                

                <asp:TemplateField>
                    <ItemTemplate>

                        <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#staticBackdrop<%#Eval("DietId")%>">
                            Delete
                        </button>


                        
                            <div class="modal fade" id="staticBackdrop<%#Eval("DietId")%>" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
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
                                            <a href="admin-delete-diet.aspx?DietId=<%#Eval("DietId")%>" class="btn btn-danger">Delete Permenantly</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        
                    </ItemTemplate>
                </asp:TemplateField>

            </Columns>

            <HeaderStyle CssClass="thead-dark" />
        </asp:GridView>

            <input type="button" id="btnExport" value="Export" onclick="Export()" class="btn btn-primary" />



        <!--<table class="table">
                <thead class="thead-dark">
                  <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Gender</th>
                    <th scope="col">Description</th>
                    <th scope="col">Category</th>
                    <th scope="col">BMI</th>
                     <th scope="col">Foodtype</th>
                    <th scope="col">Actions</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <th class="index-our" scope="row">1</th>
                    <td><asp:Label ID="gender" runat="server" Text="Male"></asp:Label></td>
                    <td><asp:Label ID="desc" runat="server" Text="Lorum ipsum"></asp:Label></td>
                    <td><asp:Label ID="category" runat="server" Text="Weight Gain"></asp:Label></td>
                    <td><asp:Label ID="bmi" runat="server" Text="23.2"></asp:Label></td>
                    <td><asp:Label ID="foodtype" runat="server" Text="Vegan"></asp:Label></td>
                    <td>
                        <asp:LinkButton class="btn btn-primary " ID="edit" runat="server">EDIT</asp:LinkButton>
                        <asp:LinkButton style="margin-left: 10px;" class="btn btn-danger " ID="delete" runat="server">DELETE</asp:LinkButton>

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

            </div>


</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Payment" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="Expencess" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="Gym" runat="server">
</asp:Content>

