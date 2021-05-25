<%@ Page Title="" Language="C#" MasterPageFile="~/headerFooter.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="OzoneFitness.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="./css/user-login.css">
    <title>OZONE - Fitness Center | Login</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container loginform">
        <div class="sign">

            <center>
            
                
                    <div class="container">
                        <h3>Log in</h3>
                    <div class="row">
                        <div class="col">
                            <asp:TextBox ID="email" TextMode="Email" runat="server" class="form-control" placeholder="Email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"></asp:TextBox>
                          
                          <br>
                            <asp:TextBox ID="pwd" runat="server" class="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
                          
                        </div>
                    </div>
                            <asp:Button ID="btnlogin" runat="server" Text="Sign in" class="btn btn-primary" OnClick="btnlogin_Click"></asp:Button>
                    
                    </div>
        </div>
        <center><asp:LinkButton ID="pwdfoget" runat="server" OnClick="pwdfoget_Click">Forget Password</asp:LinkButton></center>

    </div>



</asp:Content>
