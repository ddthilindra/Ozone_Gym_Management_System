<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="admin-view-reserved.aspx.cs" Inherits="OzoneFitness.admin_view_reserved" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="./css/admin-payment-package.css">

    <title>OZONE - Admin View Reserved Payment Packages</title>

    
<script src="js/html2canvas.min.js"></script>
    <script src="js/pdfmake.min.js"></script>
    <script type="text/javascript">
        function Export() {
            
            html2canvas(document.getElementById('PackageReservation_GridView1'), {
                onrendered: function (canvas) {
                    var data = canvas.toDataURL();
                    var docDefinition = {
                        content: [{
                            image: data,
                            width: 500
                        }]
                    };
                    pdfMake.createPdf(docDefinition).download("pkg.pdf");
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
<asp:Content ID="Content4" ContentPlaceHolderID="Shedule" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Diets" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="Payment" runat="server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="pr_Id" DataSourceID="SqlDataSource2" GridLines="None" CssClass="table table-responsive-lg" HeaderStyle-CssClass="thead-dark">
        <Columns>
            
            <asp:BoundField DataField="cust_Id" HeaderText="Customer ID" SortExpression="cust_Id" />
            <asp:BoundField DataField="pack_Id" HeaderText="Package ID" SortExpression="pack_Id" />
            <asp:BoundField DataField="dateTime" HeaderText="Date & Time " SortExpression="dateTime" />
            <asp:TemplateField>
                    <ItemTemplate>
                        
                        
                        <!--<asp:LinkButton class="btn btn-primary " ID="edit" runat="server">EDIT</asp:LinkButton>-->

                        <a href="admin-update-reserved.aspx?prrId=<%# Eval("pr_Id") %>&packid=<%# Eval("pack_Id") %> " class="btn btn-primary" >EDIT</a>
                        
                        <!--<asp:LinkButton style="margin-left: 10px;" class="btn btn-danger " ID="delete" runat="server">DELETE</asp:LinkButton>-->
                        
                        <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#exampleModal" class="btn btn-danger">
                              DELETE
                            </button>


                        <div>
                              
                              <div class="row">
                                  
                                  



                                  <!-- Button trigger modal -->
                            

     
                            <!-- Modal -->
                            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                              <div class="modal-dialog">
                                <div class="modal-content">
                                  <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Reserved Package Deletion</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                      <span aria-hidden="true">&times;</span>
                                    </button>
                                  </div>
                                  <div class="modal-body">
                                    Are you sure...!!!
                                  </div>
                                  <div class="modal-footer">
                                    <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
                                      <a href="admin-delete-reserved.aspx?prId=<%# Eval("pr_Id") %>" class="btn btn-danger" >DELETE</a>
          
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

        <input type="button" id="btnExport" value="Export" onclick="Export()" class="btn btn-primary" />


    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:OzoneDBConnectionString2 %>" SelectCommand="SELECT * FROM [PackageReservation]"></asp:SqlDataSource>

</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="Expencess" runat="server">
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="Gym" runat="server">
</asp:Content>

