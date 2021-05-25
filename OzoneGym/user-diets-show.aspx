<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="user-diets-show.aspx.cs" Inherits="OzoneFitness.user_diets_show" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/user-diet-show.css" rel="stylesheet" />

    <title>OZONE - Diets</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="UDeit" runat="server">


    <div class="tab-pane fade show active" id="list-diet" role="tabpanel" aria-labelledby="list-diet-list">
    <div class="container " style="margin-top: 5vh; margin-bottom: 20vh;">

        <div class="head">
        <h3>Choose Your Diet</h3>
         </div>

    <div class="items-oz">
              
        
        <asp:ListView ID="ListView1" runat="server">
            <ItemTemplate>
                <div class="card text-center" style="width: 18rem;">
                 <h5 class="card-header">BMI | <%# Eval("Start_BMI")%> - <%# Eval("End_BMI")%></h5>
                <img id="dietImg" src="<%# Eval("Image")%>" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title"><%# Eval("DietType")%> - <%# Eval("Gender")%></h5>
                    <p class="card-text"><%# Eval("Description")%></p>
                    <a href="user-diet-choosing.aspx?dietID=<%# Eval("DietId")%>" ID="reserveDietbtn" Class="btn btn-primary">Choose</a>
                </div>
            </div>  
            </ItemTemplate> 
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
