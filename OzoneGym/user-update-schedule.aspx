<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="user-update-schedule.aspx.cs" Inherits="OzoneFitness.user_update_schedule" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <link href="css/user-schedule-view.css" rel="stylesheet" />

    <title>OZONE - User Shedule View</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="UDeit" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="UPayment" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="UExpencess" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="UGym" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="UBooking" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="UShedule" runat="server">

 <div class="tab-pane fade show active" id="list-payment" role="tabpanel" aria-labelledby="list-payment-list">

          <div class="head">
            <h3> Your Schedules</h3>
              <div class="dropdown">
              <button class="btn dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Schedule 
              </button>
              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                <a class="dropdown-item" href="#">D</a>
                <a class="dropdown-item" href="#">b</a>
                <a class="dropdown-item" href="#">Something else here</a>
              </div>
            </div>
          </div>
                                 

     <br>
          <div class="row container">
              
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OzoneFitnessConnectionString %>" SelectCommand="SELECT * FROM [Schedules]"></asp:SqlDataSource>

              <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                  <ItemTemplate>
                      <div class="col-md-4">
              <div class="card">
                <div class="card-body">
                  <h5 class="card-title">- <%# Eval("Schedule_name") %> - </h5>
                  <p class="card-text"> Schedule type - <%# Eval("Schedule_type") %>  </p>
                  <p class="card-text"> Description - <%# Eval("Description") %>  </p>
                      <p class="card-text"> Gender - <%# Eval("Gender") %>  </p>

                  <center>
                      <a href="user-add-schedule.aspx?Schedule_Id= <%# Eval("Schedule_Id") %>&status=update" class="btn btn-primary">Update</a>
                
                  </center>
                </div>
              </div>
            </div>
                  </ItemTemplate>
              </asp:ListView>

            



            <!--<div class="col-md-4">
              <div class="card">
                <div class="card-body">
                  <h5 class="card-title">Weight Gain</h5>
                  <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                  <center>
                    </a><asp:LinkButton ID="LinkButton3" class="btn btn-primary" runat="server">Select</asp:LinkButton>
                 
                  </center>
                </div>
              </div>Edit
            </div>
            <div class="col-md-4">
              <div class="card">
                <div class="card-body">
                  <h5 class="card-title">Muscle Gain</h5>
                  <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                  <center>
                    </a><asp:LinkButton ID="LinkButton5" class="btn btn-primary" runat="server">Select</asp:LinkButton>
                  
                  </center>
                </div>
              </div>
            </div>
              <div class="col-md-4">
              <div class="card">
                <div class="card-body">
                  <h5 class="card-title">Weight Loss</h5>
                  <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                  <center>
                    </a><asp:LinkButton ID="LinkButton7" class="btn btn-primary" runat="server">Select</asp:LinkButton>
                  
                  </center>
                </div>
              </div>
            </div>
            <div class="col-md-4">
              <div class="card">
                <div class="card-body">
                  <h5 class="card-title">Weight Gain</h5>
                  <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                  <center>
                    </a><asp:LinkButton ID="LinkButton9" class="btn btn-primary" runat="server">Select</asp:LinkButton>
                   
                  </center>
                </div>
              </div>Edit
            </div>
             <div class="col-md-4">
              <div class="card">
                <div class="card-body">
                  <h5 class="card-title">Muscle Gain</h5>
                  <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                  <center>
                   </a><asp:LinkButton ID="LinkButton11" class="btn btn-primary" runat="server">Select</asp:LinkButton>
                  
                  </center>
                </div>
              </div>
            </div>-->

          </div>
          
        <!-- ---------------------------------------------- PAYMENT PACKAGES END ---------------------------------------------------------------------- -->

      </div>


      

         
</asp:Content>
