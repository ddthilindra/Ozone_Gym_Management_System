 <%@ Page Title="" Language="C#" MasterPageFile="~/headerFooter.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="OzoneFitness.signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="./css/user-registration.css">
    <script src="js/script.js"></script>
    <title>OZONE - Fitness Center | Sign Up</title>
 </asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container regform">
    <div class="sign">
        <h3>Sign Up</h3>

        
            <div class="formreg">
                <div class="tab">
                    <h5>Persional Details</h5>
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
                                <asp:ListItem class="form-control" ID="Male" Text="Male" Value="male" runat="server"/>
                                <asp:ListItem class="form-control" ID="ListItem1" Text="Female" Value="female" runat="server"/>
                            </asp:DropDownList>
                            
                        </div>
                        <div class="col">
                            <label for="inputAge">Age</label>
                            <asp:TextBox  ID="inputage" runat="server" class="form-control" placeholder="Age" TextMode="Phone" pattern="[0-99]{2}" required></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <label for="inputPhone">Phone</label>
                            <asp:TextBox TextMode="Phone" ID="inputphone" runat="server" class="form-control" placeholder="07XXXXXXXX"  pattern="[0]{1}[0-7]{1}[0-9]{8}" required></asp:TextBox>
                            
                        </div>
                        <div class="col">
                            <label for="inputOcc">Occupation</label>
                            <asp:TextBox ID="inputoccupation" runat="server" class="form-control" placeholder="Busness man" required ></asp:TextBox>

                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <label for="inputStreetAdd">Street Address</label>
                            <asp:TextBox ID="inputAdd1" runat="server" class="form-control"  placeholder="1234 Main Road" required></asp:TextBox>

                        </div>
                        <div class="col">
                            <label for="inputAddress2">Apartment Address</label>
                            <asp:TextBox ID="inputAdd2" runat="server" class="form-control" placeholder="Apartment" required></asp:TextBox>

                        </div>
                    </div>
                </div>
                <div class="tab">
                    <h5>Account Details</h5>
                    <div class="row">
                        <div class="col-md-6">
                            <label for="inputEmail4">Email</label>
                            <asp:TextBox TextMode="Email" ID="inputEmail" runat="server" class="form-control" placeholder="abc@gmail.com" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required></asp:TextBox>
                            
                        </div>

                        <div class="col-md-3">
                            <label for="inputPassword4">Password</label>
                            <asp:TextBox TextMode="Password" ID="inputPassword" runat="server" class="form-control" placeholder="Password" onchange='check_pass();' required></asp:TextBox>
                        </div>
                        <div class="col-md-3">
                            <label for="inputRePassword">Confirm Password</label>
                            <asp:TextBox TextMode="Password" ID="reinputPassword" runat="server" class="form-control" placeholder="Confirm Password" onchange='check_pass();' pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one  number and one uppercase and lowercase letter, and at least 8 or more characters" required></asp:TextBox>
                            
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="inputPassword" ControlToValidate="reinputPassword" ErrorMessage="Password mismatch"></asp:CompareValidator>
                            
                        </div>
                    </div>
                </div>
                <div class="tab">
                    <h5>Physical Details</h5>
                    <div class="row">
                        <div class="col-md-6">
                            <label for="inputHeight">Height</label>
                            <asp:TextBox  ID="inputHeight" runat="server" class="form-control" placeholder="Height in cm" TextMode="Phone" pattern="[0-999]{3}" required></asp:TextBox>
                            
                        </div>
                        <div class="col-md-6">
                            <label for="inputWeight">Weight</label>
                            <asp:TextBox  ID="inputWeight" runat="server" class="form-control" placeholder="Weight in kg" TextMode="Phone"  required></asp:TextBox>
                            
                        </div>
                    </div>
                </div>

            <div class="form-group">
              <div class="form-check">
                

                <label class="form-check-label" for="gridCheck">

                    <asp:CheckBox ID="chktems" class="form-check-input" runat="server" AutoPostBack="True" OnCheckedChanged="chktems_CheckedChanged" />  
                  <span class="checkbox" >Accept Terms & Conditions and Privacy & Policy</span><br>
                    
                </label>
              </div>
                <asp:Button ID="btnsignup" runat="server" Text="Sign Up" class="btn btn-primary" OnClick="btnsignup_Click" Enabled="False" />
                
                
                <asp:Button ID="demoSign" runat="server" Text="Demo" class="btn btn-primary" OnClick="demoSign_Click"/>
              
            </div>
            
          
        </div>

    </div>

</div>
</asp:Content>
