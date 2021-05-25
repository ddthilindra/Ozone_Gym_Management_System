<%@ Page Title="" Language="C#" MasterPageFile="~/headerFooter.Master" AutoEventWireup="true" CodeBehind="admin-update-payment-package.aspx.cs" Inherits="OzoneFitness.admin_update_payment_package1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="./css/admin-payment-form.css">

    <title>OZONE - Admin Update Payment Package Form</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <!-- ---------------------------------------------- PAYMENT FORM START ---------------------------------------------------------------------- -->

<div class="container regform">
    <div class="sign">
        <h3>Paymet Package</h3>


            <div class="formreg">
                <div class="tab">
                    <h5>Update Payment Package</h5>
                
                    
                    <div class="row">
                        <div class="col">
                            <label for="inputPackageName">Package Name</label>
                            <asp:TextBox ID="inputPackName" class="form-control" placeholder="Name" runat="server"></asp:TextBox>
                        </div>
                        <div class="col">
                            <label for="inputPrice">Price</label>
                            <asp:TextBox ID="inputPackPrice" class="form-control" placeholder="Rs:" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <label for="inputPackagePeriod">Package Period</label>
                            <asp:TextBox ID="inputPackPrd" class="form-control" placeholder="Ex: 3 months" runat="server"></asp:TextBox>
                        </div>
                        <div class="col">
                            <label for="inputWorkoutDays">No of Workout Days</label>
                            <asp:TextBox ID="inputWorkDays" class="form-control" placeholder="25 days for 1 month" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <label for="inputPackageDescription">Package Description</label>
                            <asp:textbox id="inputPackDes" class="form-control" TextMode="MultiLine" placeholder="Make a description..." runat="server" Rows="4" />
                        </div>
                        
                    </div>
                </div>

                </div>
                

            <div class="form-group">
              
              
              <asp:Button ID="submitbtn" class="btn btn-primary" runat="server" Text="Update" OnClick="submitbtn_Click"  />
            </div>
            

        </div>

    </div>
    <!-- ---------------------------------------------- PAYMENT FORM END ---------------------------------------------------------------------- -->

</asp:Content>
