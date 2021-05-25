<%@ Page Title="" Language="C#" MasterPageFile="~/headerFooter.Master" AutoEventWireup="true" CodeBehind="admin-payment-form.aspx.cs" Inherits="OzoneFitness.admin_payment_form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="./css/admin-payment-form.css">

    <title>OZONE - Admin Add Payment Package Form</title>
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <!-- ---------------------------------------------- PAYMENT FORM START ---------------------------------------------------------------------- -->

<div class="container regform">
    <div class="sign">
        <h3>Paymet Package</h3>

        <form>
            <div class="formreg">
                <div class="tab">
                    <h5>Add New Payment Package</h5>
                
                    
                    <div class="row">
                        <div class="col">
                            <label for="inputPackageName">Package Name</label>
                            <asp:TextBox ID="inputPackName" class="form-control" placeholder="Name" runat="server" required></asp:TextBox>
                        </div>
                        <div class="col">
                            <label for="inputPrice">Price</label>
                            <asp:TextBox ID="inputPackPrice" class="form-control" placeholder="Rs:" runat="server"  required></asp:TextBox>
                            <asp:CompareValidator ID="CompareValidator1" runat="server"
                                        ControlToValidate="inputPackPrice" ErrorMessage="Must be &gt; 0"
                                        Operator="GreaterThan" Type="Integer"
                                        ValueToCompare="0" />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <label for="inputPackagePeriod">Package Period (Months)</label>
                            <asp:TextBox ID="inputPackPrd" class="form-control" placeholder="Ex: 3" runat="server" TextMode="Phone" pattern="[1-99]{2}" required></asp:TextBox>
                            
                        </div>
                        <div class="col">
                            <label for="inputWorkoutDays">No of Workout Days</label>
                            <asp:TextBox ID="inputWorkDays" class="form-control" placeholder="25 days for 1 month" runat="server" TextMode="Phone" pattern="[1-30]{2}" required></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <label for="inputPackageDescription">Package Description</label>
                            <asp:textbox id="inputPackDes" class="form-control" TextMode="MultiLine" placeholder="Make a description..." runat="server" Rows="4" required />
                        </div>
                        
                    </div>
                </div>
                

            <div class="form-group">
              
              
              <asp:Button ID="submitbtn" class="btn btn-primary" runat="server" Text="Add New" OnClick="submitbtn_Click" />
            </div>
            
          </form>
        </div>

    </div>
    <!-- ---------------------------------------------- PAYMENT FORM END ---------------------------------------------------------------------- -->

  </asp:Content>







