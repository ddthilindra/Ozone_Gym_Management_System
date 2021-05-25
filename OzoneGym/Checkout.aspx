<%@ Page Title="" Language="C#" MasterPageFile="~/headerFooter.Master" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="OzoneFitness.Checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link rel="stylesheet" href="./css/checkout.css">

    <title>OZONE | Checkout</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

           <div class="head">
            <h3>Checkout</h3>

            <div class="dropdown">
              <button class="btn dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Checkout 
              </button>
              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                <a class="dropdown-item" href="#">Add Item</a>
                <a class="dropdown-item" href="#">Store Details</a>
                
                <a class="dropdown-item" href="#">Checkout</a>
              </div>
            </div>
          </div>

    <div class="diet-add-frm">

        

          <div class="form-group row container">
            <div class="col-md-1"></div>
              <label for="exampleInputEmail1" class="col-md-5 col-form-label">Custemer Name</label>
              <div class="col-md-6">

                  <asp:TextBox ID="cusname" class="form-control" runat="server" ></asp:TextBox>

              </div>

              <div class="col-md-1"></div>
                <label class="col-md-5 col-form-label">Phone Number</label>
                <div class="col-md-6">

                  <asp:TextBox ID="pnum" class="form-control" runat="server" ></asp:TextBox>
                </div>


              <div class="col-md-1"></div>
              <label for="exampleInputEmail1" class="col-md-5 col-form-label">Email</label>
              <div class="col-md-6">

                <asp:TextBox ID="email" class="form-control" runat="server" ></asp:TextBox>
              </div>


              <div class="col-md-1"></div>
              <label for="exampleInputEmail1" class="col-md-5 col-form-label">Adddress</label>
              <div class="col-md-6">

               <asp:TextBox ID="Addressname" runat="server" Columns="55" TextMode="MultiLine" Rows="5"></asp:TextBox>
              </div>

              

              <div class="col-md-1"></div>
              
              <div class="col-md-11">

                <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Submit" OnClick="adCheckout_Click" />
              </div>


          </div>


             

              
          </div>


</asp:Content>
