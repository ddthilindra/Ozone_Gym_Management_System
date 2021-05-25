<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="admin-update-reserved.aspx.cs" Inherits="OzoneFitness.admin_update_reserved" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <link rel="stylesheet" href="./css/user-payment-package.css">

    <title> OZONE - User Payment Packages </title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="UDeit" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="UPayment" runat="server">
    <!-- ---------------------------------------------- PAYMENT PACKAGES ---------------------------------------------------------------------- -->

        <div class="tab-pane fade show active" id="list-payment" role="tabpanel" aria-labelledby="list-payment-list">

          <div class="head">
            <h3>Choose Another Payment Package</h3>

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
                                            <center>

                                                
                                                <a href="admin-update-reserved-hide.aspx?prId=<%#Request.QueryString["prrId"] %>&pid=<%#Eval("PID")%>" class="btn btn-primary" >CHOOSE</a>

                                                                                       
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
                  <p class="card-text">                      
                      <asp:Label ID="Pdes" runat="server" Text="With supporting text below as a natural lead-in to additional content."></asp:Label>
                  </p>
                  <center>
                  <asp:Button ID="Ppaybtn" class="btn btn-primary" runat="server" Text="PAY"></asp:Button> 
                  
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
                  <p class="card-text">                      
                      <asp:Label ID="Label1" runat="server" Text="With supporting text below as a natural lead-in to additional content."></asp:Label>
                  </p>
                  <center>
                  <asp:Button ID="Propaybtn" class="btn btn-primary" runat="server" Text="PAY"></asp:Button>
                  
                  </center>
                </div>
              </div>
            </div>-->
          </div>
          

        </div>

        <!-- ---------------------------------------------- PAYMENT PACKAGES END ---------------------------------------------------------------------- -->

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="UExpencess" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="UGym" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="UBooking" runat="server">
</asp:Content>
