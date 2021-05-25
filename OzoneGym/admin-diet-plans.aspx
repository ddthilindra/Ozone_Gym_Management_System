<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="admin-diet-plans.aspx.cs" Inherits="OzoneFitness.user_diet_plans" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link rel="stylesheet" href="./css/user-diet-plans.css">

        <title>OZONE - Your Diets</title>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="UDeit" runat="server">

<div class="tab-pane fade show active" id="list-diet" role="tabpanel" aria-labelledby="list-diet-list">
          <div class="head">

            <div class="container accdetails">
              <div class="sign">

                      <div class="formreg">
                        <h5>My Diet</h5>
                        <br>
                          <div class="tab">
                              <div class="container">
                              <div class="row">
                                    <div class="col-md-4"> 
                                     <asp:Label ID="gunname" class="text-center" runat="server" Text="OZONE"></asp:Label>
                                    </div>
                                    <div class="col-md-4"> 
                                     <asp:Label ID="category" class="text-center" runat="server" Text="WEIGHT LOSS"></asp:Label>
                                      </div>
                                      <div class="col-md-4"> 
                                       <asp:Label ID="gender" class="text-center" runat="server" Text="MALE"></asp:Label>
                                      </div>
                                </div>
                            </div>
                              <hr>
                              <div class="container">
                                <div class="row">
                                    <div class="col">
                                       <p><asp:Label ID="dietdesc" runat="server" Text="Lorem ipsum dolor sit amet consectetur adipisicing elit. Sapiente iste amet neque quisquam veritatis maxime facere fugiat, inventore libero totam eum deleniti laboriosam dicta. Quidem soluta facilis laborum molestiae atque!"></asp:Label></p>

                                    </div>
                                </div>
                            </div>
                                <div class="row">
                                    <div class="col">
                                        <div class="btndeit">
                                            <a href="#" class="btn btn-primary">Change</a>
                                            <asp:Button ID="remove" class="btn btn-primary" runat="server" Text="Remove" />
                                         </div>
                                    </div>
                                </div>  
                        </div>
                      </div>

                  
                  </div>
          
              </div>
          
          </div>

            
          </div>
          
        
        


</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="UPayment" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="UExpencess" runat="server">
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="UGym" runat="server">
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="UBooking" runat="server">
</asp:Content>
