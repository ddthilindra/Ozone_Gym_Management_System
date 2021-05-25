<%@ Page Title="" Language="C#" MasterPageFile="~/headerFooter.Master" AutoEventWireup="true" CodeBehind="forgotPassCheckEmail.aspx.cs" Inherits="OzoneFitness.forgetPass" %>
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
                    <div class="row">
                        <div class="col">
                            <asp:TextBox ID="email" runat="server" TextMode="Email" class="form-control" placeholder="Enter your Email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"></asp:TextBox>
                          
                        </div>
                    </div>
                        
                    <div>
                            <asp:Button ID="btncheck" runat="server" Text="Check Email" class="btn btn-primary" OnClick="btncheck_Click" ></asp:Button>
                            
                    
                    </div>
          
        </div>

    </div>

</div>

</asp:Content>
