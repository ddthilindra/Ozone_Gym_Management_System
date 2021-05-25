<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="user-diet-reserved.aspx.cs" Inherits="OzoneFitness.user_diet_reserved" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/user-diet-show.css" rel="stylesheet" />

    <title>OZONE - Your Dits</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="UDeit" runat="server">


        <div class="tab-pane fade show active" id="list-diet" role="tabpanel" aria-labelledby="list-diet-list">
            <div class="container " style="margin-top: 5vh; margin-bottom: 20vh;">
                <div class="head">
                    <h3>Your Diet Plan</h3>
                </div>
                <div class="items-oz">


                    <asp:ListView ID="ListView1" runat="server">
                        <itemtemplate>
                            <div class="card text-center"">
                                <h5 class="card-header"><%# Eval("DietType")%> - <%# Eval("Gender")%></h5>
                
                                <div class="card-body">
                                    <h5 class="card-title"><%# Eval("FoodType")%></h5>
                                    <p class="card-text"><%# Eval("Description")%></p>

                                    <a href="user-diets-show.aspx?status=update" Class="btn btn-primary">Change Diet Plan</a>
                                    
                                    
                                    <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#staticBackdrop">Remove Diet Plan</button>
                            
                                
                                </div>
                            </div>  







                        
                            <div class="modal fade" id="staticBackdrop" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
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
                                            <asp:LinkButton ID="deleteDietUser" class="btn btn-danger" runat="server" OnClick="deleteDietUser_Click">Delete Permenantly</asp:LinkButton>
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                     </itemtemplate>
                    </asp:ListView>



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
