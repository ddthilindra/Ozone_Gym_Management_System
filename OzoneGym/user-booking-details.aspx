<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="user-booking-details.aspx.cs" Inherits="OzoneFitness.user_booking_details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="css/user-booking-details.css" rel="stylesheet" />

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

    


    
    
      <div class="tab-pane fade show active" id="list-booking" role="tabpanel" aria-labelledby="list-booking-list">
        <div class="head">
            <h3>Booking Details</h3>

                <div class="dropdown">
              <button class="btn dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Booking
              </button>
              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                <a class="dropdown-item" href="user-booking.aspx">Trainer Booking</a>
               
              </div>
            </div>
           
        </div>

    </div>


          
                  <table class="table">
        <thead class="thead-dark">
            <tr>
                <th scope="col">ID</th>
                <th scope="col">CID</th>
                <th scope="col">Date</th>
                <th scope="col">Time From</th>
                <th scope="col">Time to</th>
                <th scope="col">Shedule Type</th>
                <th scope="col">Trainer</th>
                <th scope="col">Action</th>
             
            </tr>
        </thead>
        <tbody>
            <asp:ListView ID="ListView1" runat="server">
              <ItemTemplate>
            <tr>
                <th class="index-our" scope="row"><%# Eval("BookingID")%></th>
                <td><%# Eval("CID")%></td>
                <td><%# Eval("Date")%></td>
                <td><%# Eval("Time_from")%></td>
                <td><%# Eval("Time_to")%></td>
                <td><%# Eval("Shedule_Type")%></td>
                <td><%# Eval("Trainer")%>"</td>
                <td>
                    <a href="user-update-booking.aspx?BookingID=<%#Eval("BookingID")%>" class="btn btn-primary">Edit</a>
                    
                    <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#staticBackdrop<%#Eval("BookingID")%>">
                            Delete
                        </button>


                        
                            <div class="modal fade" id="staticBackdrop<%#Eval("BookingID")%>" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
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
                                            <a href="user-delete-booking.aspx?BookingID=<%#Eval("BookingID")%>" class="btn btn-danger">Delete Permenantly</a>
                                        </div>
                                    </div>
                                </div>
                            </div></td>

            </tr>
            </ItemTemplate>
          </asp:ListView>
        </tbody>
    </table>
              

    




</asp:Content>
