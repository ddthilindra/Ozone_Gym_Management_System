<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="userdashbord.aspx.cs" Inherits="OzoneFitness.userdashbord1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link rel="stylesheet" href="./css/user-dash.css">
    <title>OZONE - Fitness Center</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Uprogress" runat="server">
    <div class="head">

        <div class="container accdetails">
            <div class="head">
                <h3>My Progress</h3>
                <div class="dropdown">
                    <button class="btn dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        My Progress
                    </button>
                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                        <a class="dropdown-item" href="updateUserdetails.aspx">Upadte Your Details</a>
                        <a class="dropdown-item" href="#">Diet Reservations</a>
                    </div>

                </div>
            </div>
            <div class="sign">

                <div class="formreg">

                    

                    <div>
                        <div class="progress">
                            <br>
                            <br>

                            <div class="progress-bar progress-bar-striped progress-bar-animated bg-info" role="progressbar" style="width: 25%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">25%</div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <p>Complete   |   15</p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <p>Remaining   |   30</p>
                            </div>

                        </div>
                    </div>


                    <div class="form-group">
                        <div class="form-check">
                        </div>

                    </div>
                </div>
            </div>
        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="UDeit" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="UPayment" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="UExpencess" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="UGym" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="UBooking" runat="server">
</asp:Content>
