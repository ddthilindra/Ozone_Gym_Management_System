<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="admin-add-supplier.aspx.cs" Inherits="OzoneFitness.admin_addSupplier" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/admin-add-supplier.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Customer" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Employee" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Diets" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Payment" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="Expencess" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="Gym" runat="server">

        <div class="tab-pane fade" id="list-gym" role="tabpanel" aria-labelledby="list-gym-list">
          
        </div>

       <div class="head">
            <h3>Add Supplier</h3>

            <div class="dropdown">
              <button class="btn dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Add Supplier 
              </button>
              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                <a class="dropdown-item" href="admin-add-item.aspx">Add Item</a>
                <a class="dropdown-item" href="admin-item-details.aspx">Store Details</a>
                <a class="dropdown-item" href="admin-suppliers-details.aspx">Suppliers Details</a>
              </div>
            </div>
          </div>
          

          <div class="form-group row container">
            <div class="col-md-1"></div>
              <label for="exampleInputEmail1" class="col-md-5 col-form-label">Supplier's Name</label>
              <div class="col-md-6">
                <!--<input type="email" class="form-control" id="name">-->
                  <asp:TextBox ID="sname" class="form-control" runat="server" required></asp:TextBox>

              </div>

              <div class="col-md-1"></div>
                <label class="col-md-5 col-form-label">Email</label>
                <div class="col-md-6">
                  <!--<input type="email" class="form-control" id="qty">-->
                  <asp:TextBox ID="semail" class="form-control" runat="server" TextMode="Email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required></asp:TextBox>
                </div>

               <!-- <div class="col-md-1"></div>
              <label for="exampleInputEmail1" class="col-md-5 col-form-label">Image</label>
              <div class="col-md-6">
                <input type="file" class="form-control-file" id="exampleFormControlFile1">
              </div> -->

              <div class="col-md-1"></div>
              <label for="exampleInputEmail1" class="col-md-5 col-form-label">Address</label>
              <div class="col-md-6">
                <!--<textarea rows="5" cols="65"></textarea>-->
                <asp:TextBox ID="saddress" TextMode="MultiLine" class="form-control" runat="server" Rows="4" required></asp:TextBox>
              </div>


              <div class="col-md-1"></div>
              <label for="exampleInputEmail1" class="col-md-5 col-form-label">Phone</label>
              <div class="col-md-6">
               <!--<input type="email" class="form-control" id="Sname">-->
               <asp:TextBox ID="sphone" class="form-control" runat="server" TextMode="Phone" pattern="[0]{1}[0-7]{1}[0-9]{8}" required></asp:TextBox>
              </div>

              

              <div class="col-md-1"></div>
              
              <div class="col-md-11">
                <!--<button type="button" class="btn btn-primary">Add</button>-->
                <asp:Button ID="addsupplier" class="btn btn-primary" runat="server" Text="Add" OnClick="addsup_Click" />
              </div>


          </div>



</asp:Content>

