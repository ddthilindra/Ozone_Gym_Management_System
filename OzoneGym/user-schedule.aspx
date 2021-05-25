<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="user-schedule.aspx.cs" Inherits="OzoneFitness.user_schedule" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="css/user-schedule.css" rel="stylesheet" />

    <title>OZONE - User Shedule</title>
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
  
          <div class="head">

            <div class="container ">
              <div class="sign">

                      <div class="formreg">
                        <h5>Your Schedule</h5>
                          <div class="tab">

                            <div class="row">
                                
                              
                            </div>
                            
                               <asp:ListView ID="ListView1" runat="server" >
                  <ItemTemplate>
                      <div class="col-md-4">
              <div class="card">
                <div class="card-body">
                  <h5 class="card-title">- <%# Eval("Schedule_name") %> - </h5>
                  <p class="card-text"> Schedule type - <%# Eval("Schedule_type") %>  </p>
                  <p class="card-text"> Description - <%# Eval("Description") %>  </p>
                      <p class="card-text"> Gender - <%# Eval("Gender") %>  </p>

                  <center>
                      <a href="user-update-schedule.aspx?Schedule_Id= <%# Eval("Schedule_Id") %>" class="btn btn-primary">Edit</a>
                      <a href="user-delete-schedule.aspx?Schedule_Id= <%# Eval("Schedule_Id") %>" class="btn btn-primary">Delete</a>

                
                  </center>
                </div>
              </div>
            </div>
                  </ItemTemplate>
              </asp:ListView>

                            
                
                        </div>
                      </div>

                  </div>
          
              </div>
          
          </div>

            
          
          
</asp:Content>
