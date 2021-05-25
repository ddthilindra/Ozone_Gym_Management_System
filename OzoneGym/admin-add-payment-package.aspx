<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="admin-add-payment-package.aspx.cs" Inherits="OzoneFitness.admin_add_payment_package" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link rel="stylesheet" href="./css/admin-payment-package.css">

    <title>OZONE - Admin Add Payment Packages</title>
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
    <!-- ---------------------------------------------- PAYMENT PACKAGES ---------------------------------------------------------------------- -->

        <div class="tab-pane fade show active" id="list-payment" role="tabpanel" aria-labelledby="list-payment-list">

            <div class="head">
                <h3>Payment Packages</h3>

                <div class="dropdown">
                    <button class="btn dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Options 
                    </button>
                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                        <a class="dropdown-item" href="admin-view-reserved.aspx">Reserved Report</a>
                        <a class="dropdown-item" href="admin-payment-form.aspx">Add New Package</a>
                    </div>
                </div>

               
            </div>

            <div class="row container">
                
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OzoneDBConnectionString2 %>" SelectCommand="SELECT * FROM [Package]"></asp:SqlDataSource>

                <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        
                                    <div class="col-md-4">
                                    <div class="card text-center">
                                        <div class="card-body">
                                            <h5 class="card-title">
                                                <asp:Label ID="basic" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                                            </h5>
                                            <p class="card-text"><%# Eval("Description") %></p>
                                            

                                                <a href="admin-update-payment-package.aspx?pId=<%# Eval("PID") %>" class="btn btn-primary" >EDIT</a>
                                                <!--<a href="admin-delete-payment-package.aspx?pId=<%# Eval("PID") %>" class="btn btn-danger" >DELETE</a>-->
                                                <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#exampleModal" class="btn btn-danger">
                              Delete
                            </button>
                                                
                            <div>
                              
                              <div class="row">
                                  
                                  



                                  <!-- Button trigger modal -->
                            

     
                            <!-- Modal -->
                            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                              <div class="modal-dialog">
                                <div class="modal-content">
                                  <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Package Deletion</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                      <span aria-hidden="true">&times;</span>
                                    </button>
                                  </div>
                                  <div class="modal-body">
                                    Are you sure...!!!
                                  </div>
                                  <div class="modal-footer">
                                    <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
                                      <a href="admin-delete-payment-package.aspx?pId=<%# Eval("PID") %>" class="btn btn-danger" >DELETE</a>
          
                                  </div>
                                </div>
                              </div>
                            </div>



                          </div>
                      
                    
                  </div>







                                                
                                                
                                            </center>
                                        </div>
                                    </div>
                                </div>
                                
                     </ItemTemplate>
                </asp:ListView>

                





                <!--<div class="col-md-4">
              <div class="card">
                <div class="card-body">
                  <h5 class="card-title">
                      <asp:Label ID="premium" runat="server" Text="Premium"></asp:Label>
                  </h5>
                  <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                  <center>
                  <asp:Button ID="Peditbtn" class="btn btn-primary" runat="server" Text="EDIT"></asp:Button>
                  <asp:Button ID="Pdelbtn" class="btn btn-danger" runat="server" Text="DELETE"></asp:Button>
                  </center>
                </div>
              </div>
            </div>


            <div class="col-md-4">
              <div class="card">
                <div class="card-body">
                  <h5 class="card-title">
                      <asp:Label ID="pro" runat="server" Text="Pro"></asp:Label>
                  </h5>
                  <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                  <center>
                  <asp:Button ID="Proeditbtn" class="btn btn-primary" runat="server" Text="EDIT"></asp:Button>
                  <asp:Button ID="Prodeltbtn" class="btn btn-danger" runat="server" Text="DELETE"></asp:Button>
                  </center>
                </div>
              </div>
            </div>-->
            </div>
            
            <div class="row container">
                
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Add New Package</h5>
                            <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                            <center><a href="admin-payment-form.aspx"><i class="fas fa-plus-circle fa-3x"></i></a></center>
                        </div>
                    </div>
                </div>
                 

            </div>
           
        </div>

    <!-- ---------------------------------------------- PAYMENT PACKAGES END ---------------------------------------------------------------------- -->
</asp:Content>

<asp:Content ID="Content7" ContentPlaceHolderID="Expencess" runat="server">
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="Gym" runat="server">
</asp:Content>

