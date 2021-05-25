<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="admin-update-supplier.aspx.cs" Inherits="OzoneFitness.admin_update_supplier" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="css/admin-update-supplier.css" rel="stylesheet" />

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
            <h3>Update Supplier</h3>

            <div class="dropdown">
              <button class="btn dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Update Supplier
              </button>
              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                <a class="dropdown-item" href="#">Add Item</a>
                <a class="dropdown-item" href="#">Store Details</a>
                
                <a class="dropdown-item" href="#">Suppliers Details</a>
              </div>
            </div>
          </div>
          

          <div class="form-group row container">
            <div class="col-md-1"></div>
              <label for="exampleInputEmail1" class="col-md-5 col-form-label">Supplier's Name</label>
              <div class="col-md-6">
                <!--<input type="email" class="form-control" id="name">-->
                  <asp:TextBox ID="name" class="form-control" runat="server"></asp:TextBox>

              </div>

              <div class="col-md-1"></div>
                <label class="col-md-5 col-form-label">Email</label>
                <div class="col-md-6">
                  <!--<input type="email" class="form-control" id="qty">-->
                  <asp:TextBox ID="email" class="form-control" runat="server"></asp:TextBox>
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
                <asp:TextBox ID="address" TextMode="MultiLine" class="form-control" runat="server" Rows="4"></asp:TextBox>
              </div>


              <div class="col-md-1"></div>
              <label for="exampleInputEmail1" class="col-md-5 col-form-label">Phone</label>
              <div class="col-md-6">
               <!--<input type="email" class="form-control" id="Sname">-->
               <asp:TextBox ID="phone" class="form-control" runat="server"></asp:TextBox>
              </div>

              

              <div class="col-md-1"></div>
              
              <div class="col-md-11">
                <!--<button type="button" class="btn btn-primary">Add</button>-->
        
                <asp:Button ID="updatesupplier" class="btn btn-primary" runat="server" Text="Update" OnClick="updateSup_Click" />
              </div>


          </div>



</asp:Content>

