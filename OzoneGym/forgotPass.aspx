<%@ Page Title="" Language="C#" MasterPageFile="~/headerFooter.Master" AutoEventWireup="true" CodeBehind="forgotPass.aspx.cs" Inherits="OzoneFitness.forgotPass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link rel="stylesheet" href="./css/user-login.css">
    <title>OZONE - Fitness Center | Forgot Password</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container loginform">
    <div class="sign">
        
            <center>
            
                
                    <div class="container">
                        <h3>Forget your password?</h3>
                        <asp:Label ID="lblemail" runat="server" class="uid" Text="Label" ></asp:Label>
                        <asp:Label ID="Label1" runat="server" class="uid" Text=" email was founded..!" ></asp:Label>
                    <div class="row">
                        <div class="col">
                            
                            <br>
                            <asp:TextBox ID="pwd" runat="server"   class="form-control" placeholder="Password" TextMode="Password" ></asp:TextBox>
                          
                          <br>
                            <asp:TextBox ID="repwd" runat="server" TextMode="Password" class="form-control" placeholder="Re-Enter Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one  number and one uppercase and lowercase letter, and at least 8 or more characters" required></asp:TextBox>
                          
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password mismatch" ControlToCompare="pwd" ControlToValidate="repwd"></asp:CompareValidator>
                          
                        </div>
                    </div>
                        
                    <div>
                            <asp:Button ID="btnpass" runat="server" Text="Change Password" class="btn btn-primary" OnClick="btnpass_Click"></asp:Button>
                            
                    
                    </div>
          
        </div>

    </div>

</div>

</asp:Content>
