<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="updateUserdetails.aspx.cs" Inherits="OzoneFitness.updateUserdetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link rel="stylesheet" href="./css/user-dash.css">
    <title>OZONE - Fitness Center</title>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Uprogress" runat="server">



    <div class="col-md-12">
        <div class="tab-content " id="nav-tabContent">

            <div class="tab-pane fade" id="list-employee" role="tabpanel" aria-labelledby="list-employee-list">...</div>
            <div class="tab-pane fade" id="list-shedule" role="tabpanel" aria-labelledby="list-shedule-list">...</div>

            <div class="tab-pane fade show active" id="list-progress" role="tabpanel" aria-labelledby="list-progress-list">


                <div class="container accdetails">
                    <div class="head">
                        <h3>Persional Details</h3>
                        <div class="dropdown">
                            <button class="btn dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Diet Details

                            </button>
                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                <a class="dropdown-item" href="#">Add Diet</a>
                                <a class="dropdown-item" href="#">Diet Reservations</a>
                            </div>

                        </div>
                    </div>
                    <div class="sign">


                        <div class="formreg">
                            <div>
                                <asp:Label ID="Label1" runat="server" Text="CID"></asp:Label>
                                <asp:Label ID="cid" runat="server" Text="Label" class="uid"></asp:Label><br>
                                <p>Usename</p>
                                <div class="row">
                                    <div class="col">
                                        <asp:TextBox ID="fname" runat="server" class="form-control" placeholder="First name" required></asp:TextBox>
                                    </div>
                                    <div class="col">
                                        <asp:TextBox ID="lname" runat="server" class="form-control" placeholder="Last name" required></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <label for="inputGender">Gender</label>
                                        <asp:DropDownList class="form-control" ID="inputGender" runat="server">
                                            <asp:ListItem class="form-control" ID="Male" Text="Male" Value="male" runat="server" />
                                            <asp:ListItem class="form-control" ID="ListItem1" Text="Female" Value="female" runat="server" />
                                        </asp:DropDownList>
                                    </div>
                                    <div class="col">
                                        <label for="inputAge">Age</label>

                                        <asp:TextBox TextMode="Number" ID="inputage" runat="server" class="form-control" placeholder="Age" required></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <label for="inputPhone">Phone</label>
                                        <asp:TextBox TextMode="Phone" ID="inputphone" runat="server" class="form-control" placeholder="07XXXXXXXX" pattern="[0]{1}[0-7]{1}[0-9]{8}" required></asp:TextBox>
                                    </div>
                                    <div class="col">
                                        <label for="inputOcc">Occupation</label>
                                        <asp:TextBox ID="inputoccupation" runat="server" class="form-control" placeholder="Busness man"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <label for="inputStreetAdd">Street Address</label>
                                        <asp:TextBox ID="inputAdd1" runat="server" class="form-control" placeholder="1234 Main Road"></asp:TextBox>
                                    </div>
                                    <div class="col">
                                        <label for="inputAddress2">Apartment Address</label>
                                        <asp:TextBox ID="inputAdd2" runat="server" class="form-control" placeholder="Apartment"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div>
                                <h3>Account Details</h3>
                                <div class="row">
                                    <div class="col-md-6">
                                        <label for="inputEmail4">Email</label>
                                        <asp:TextBox TextMode="Email" ID="inputEmail" runat="server" class="form-control" placeholder="abc@gmail.com" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required></asp:TextBox>
                                    </div>
                                    <div class="col-md-3">
                                        <label for="inputPassword4">Password</label>
                                        <asp:TextBox TextMode="Password" ID="inputPassword" runat="server" class="form-control" placeholder="Password"></asp:TextBox>
                                    </div>
                                    <div class="col-md-3">
                                        <label for="inputRePassword">Confirm Password</label>
                                        <asp:TextBox TextMode="Password" ID="reinputPassword" runat="server" class="form-control" placeholder="Confirm Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one  number and one uppercase and lowercase letter, and at least 8 or more characters" required></asp:TextBox>
                                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="inputPassword" ControlToValidate="reinputPassword" ErrorMessage="Password mismatch"></asp:CompareValidator>
                                    </div>
                                </div>
                            </div>
                            <div >
                                <div class="rowudt">
                                    <h3>Physical Details</h3>
                                  </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <label for="inputHeight">Height</label>
                                        <asp:TextBox TextMode="Number" ID="inputHeight" runat="server" class="form-control" placeholder="Height"></asp:TextBox>
                                    </div>
                                    <div class="col-md-6">
                                        <label for="inputWeight">Weight</label>
                                        <asp:TextBox TextMode="Number" ID="inputWeight" runat="server" class="form-control" placeholder="Weight"></asp:TextBox>
                                    </div>
                                </div>
                                <asp:Button ID="btnupdate" runat="server" Text="Update" class="btn btn-primary" OnClick="btnupdate_Click" />
                            </div>
                            <br><br><br>
                            <div class="container accdetails">
                            <div class="form-group">
                            </div>
                            <div class="row">
                            <div class="col-md-9">
                                <h3>Delete Your Account</h3>
                                <label for="deleteText">Do you want to delete your account?</label>
                                <div class="row">
                                    <div >
                                    </div>
                                    </div></div>
                            <div class="col-md-3">
                                    <!-- Button trigger modal -->
                                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
                                        Delete Acoount
                                    </button>

                                    <!-- Modal -->
                                    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModalLabel">Account Deletion</h5>
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                                <div class="modal-body">
                                                    Are you sure...!!!
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-primary" data-dismiss="modal">Cancel</button>
                                                    <asp:Button ID="Button1" runat="server" Text="Permanently Delete Account" class="btn btn-primary" OnClick="btndelete_Click" />

                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div></div>
                                </div>
                            </div>

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
