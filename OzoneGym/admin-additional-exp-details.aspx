<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="admin-additional-exp-details.aspx.cs" Inherits="OzoneFitness.admin_additional_exp_details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="css/admin-additional-exp-details.css" rel="stylesheet" />

    
<script src="js/html2canvas.min.js"></script>
    <script src="js/pdfmake.min.js"></script>
    <script type="text/javascript">
        function Export() {
            
            html2canvas(document.getElementById('Expencess_GridView1'), {
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

     <div class="tab-pane fade show active" id="list-expencess" role="tabpanel" aria-labelledby="list-expencess-list">
        <div class="head">
            <h3>Additional Expencess Details</h3>
                <div class="dropdown">
              <button class="btn dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Additional Expenditure
              </button>
              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                <a class="dropdown-item" href="admin-additional-exp.aspx">Add Addtional Expenditure</a>
                
              </div>
            </div>
           
        </div>

    </div>


        <asp:GridView ID="GridView1" runat="server" CssClass="table table-responsive-lg"  AutoGenerateColumns="False" DataKeyNames="AdditionalId" DataSourceID="SqlDataSource1" GridLines="None" HeaderStyle-CssClass="thead-dark">
            <Columns>
                <asp:BoundField DataField="AdditionalId" HeaderText="AdditionalId" InsertVisible="False" ReadOnly="True" SortExpression="AdditionalId" />
                <asp:BoundField DataField="AdminId" HeaderText="AdminId" SortExpression="AdminId" />
                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                <asp:BoundField DataField="WaterBill" HeaderText="WaterBill" SortExpression="WaterBill" />
                <asp:BoundField DataField="ElectricityBill" HeaderText="ElectricityBill" SortExpression="ElectricityBill" />
                <asp:BoundField DataField="MonthlyRepair" HeaderText="MonthlyRepair" SortExpression="MonthlyRepair" />
            

            
            <asp:HyperLinkField Text="Edit" DataNavigateUrlFields="AdditionalId" DataNavigateUrlFormatString="admin-update-additional.aspx?AdditionalId={0}" ControlStyle-CssClass="btn btn-primary">

                    <ControlStyle CssClass="btn btn-primary"></ControlStyle>

                </asp:HyperLinkField>



                <asp:TemplateField>
                    <ItemTemplate>

                        <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#staticBackdrop<%#Eval("AdditionalId")%>">
                            Delete
                        </button>


                        
                            <div class="modal fade" id="staticBackdrop<%#Eval("AdditionalId")%>" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
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
                                            <a href="admin-delete-additional.aspx?AdditionalId=<%#Eval("AdditionalId")%>" class="btn btn-danger">Delete Permenantly</a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>

        <input type="button" id="btnExport" value="Export" onclick="Export()" class="btn btn-primary" />




        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OzoneFitnessConnectionString %>" SelectCommand="SELECT * FROM [Additional_Expenditure]"></asp:SqlDataSource>





    <!--<table class="table">
        <thead class="thead-dark">
            <tr>
                <th scope="col">ID</th>
                <th scope="col">Date</th>
                <th scope="col">Water Bill</th>
                <th scope="col">Electricity Bill</th>
                <th scope="col">Monthly Repairs</th>
                <th scope="col">Total</th>
                <th scope="col">Actions</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <th class="index-our" scope="row">1</th>
                <td><asp:Label ID="adExDate" runat="server" Text="20/02/2020"></asp:Label></td>
                <td><asp:Label ID="adExWaterbill" runat="server" Text="2000"></asp:Label></td>
                <td><asp:Label ID="adExEbill" runat="server" Text="1500"></asp:Label></td>
               <td><asp:Label ID="adExMonthlyR" runat="server" Text="2800"></asp:Label></td>
               <td><asp:Label ID="adExTot" runat="server" Text="6300"></asp:Label></td>

                <td>
                    <asp:LinkButton class="btn btn-primary " ID="adExedit" runat="server">EDIT</asp:LinkButton>
                    <asp:LinkButton style="margin-left: 10px;" class="btn btn-primary " ID="adExdelete" runat="server">DELETE</asp:LinkButton>
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
    </table> -->



</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="Gym" runat="server">
</asp:Content>
