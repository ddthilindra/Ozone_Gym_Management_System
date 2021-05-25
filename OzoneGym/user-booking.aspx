<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="user-booking.aspx.cs" Inherits="OzoneFitness.user_booking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/user-booking.css" rel="stylesheet" />

    <title>OZONE - Fitness Center Booking</title>
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

            <div class="container accdetails">
              <div class="sign">

                      <div class="formreg">
                        <h2>Booking</h2>
                          <div class="tab">
                            <div class="row">
                                <div class="col-md-4">
                                  Date
                                </div>
                                <div class="col-md-8">
                                  
                                    <asp:TextBox CssClass="form-control" ID="adbDate" TextMode="Date" runat="server" required/>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                  Time Duration
                                </div>
                                <div class="col-md-8">
                                  <!--<input type="text" class="form-control" placeholder="From">-->
                                  <asp:TextBox ID="bfrom" class="form-control" TextMode="Time" placeholder="From" runat="server"></asp:TextBox>  <br>
                                  <!--<input type="text" class="form-control" placeholder="To">-->
                                  <asp:TextBox ID="bto" class="form-control" TextMode="Time" placeholder="To" runat="server"></asp:TextBox>
                                </div>
                            </div>

                            <div class="row">
                               
                                  
                                      <div class="col-md-8"></div>
                <label for="exampleInputEmail1" class="col-md-5 col-form-label">Schedule Type</label>
                <div class="col-md-6">

                    <asp:DropDownList ID="sheduleT" class="form-control" runat="server">
                        <asp:ListItem ID="weghit_loss" Text="Weghit loss" Value="Weghit loss" runat="server" />
                        <asp:ListItem ID="muscle_bulding" Text="Muscle bulding" Value="Muscle bulding" runat="server" />
                    </asp:DropDownList>

                </div>

                               
                            </div>
                              </div>
                            <div class="row">
                               <!-- <div class="col-md-4">
                                  Trainers
                                </div>
                                <div class="col-md-8">
                                        
                                            
                                            <asp:DropDownList ID="trainers" class="form-control"   runat="server">
                                            <asp:ListItem ID="t1" class="form-control" Text="Default" Value="Default"  runat="server" />
                                            </asp:DropDownList>
                                        
                                </div>-->
                                  <div class="col-md-8"></div>
                <label for="exampleInputEmail1" class="col-md-5 col-form-label">Trainers</label>
                <div class="col-md-6">

                    <asp:DropDownList ID="trainer" class="form-control" runat="server">
                        <asp:ListItem ID="ListItem1" Text="Sandun" Value="Sandun Harshana" runat="server" />
                        <asp:ListItem ID="ListItem2" Text="Janira" Value="Janira Janipraba" runat="server" />
                    </asp:DropDownList>

                </div>
                            </div>


                            <div class="row">
                                <div class="col">
                                    Booking a personal trainer will add a aditional payment for the monthly payment.
                                </div>
                                
                            </div>

                            <div class="row">
                               
                                <div class="col">
                                        <div class="btndeit">
                                            
                                            <asp:Button ID="addbook" class="btn btn-primary" runat="server" Text="Submit" OnClick="addbook_Click"/>

                                        </div>
                                </div>
                            </div>   
                        </div>
                      </div>
                  </div>
          
              </div>
          
          </div>

       
          


</asp:Content>
