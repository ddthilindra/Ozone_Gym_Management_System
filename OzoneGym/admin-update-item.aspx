<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="admin-update-item.aspx.cs" Inherits="OzoneFitness.admin_update_item" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/admin-update-item.css" rel="stylesheet" />


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
            <h3>Update Item</h3>

            <div class="dropdown">
              <button class="btn dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Add Item 
              </button>
              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                <a class="dropdown-item" href="#">Store Details</a>
                
                <a class="dropdown-item" href="#">Add Supplier</a>
                <a class="dropdown-item" href="#">Suppliers Details</a>
              </div>
            </div>
          </div>

          <div class="form-group row container">
            <div class="col-md-1"></div>
              <label for="exampleInputEmail1" class="col-md-5 col-form-label">Item Name</label>
              <div class="col-md-6">
                
                 <asp:TextBox ID="name" class="form-control" runat="server"></asp:TextBox>
              </div>

              <div class="col-md-1"></div>
                <label class="col-md-5 col-form-label">Quantity</label>
                <div class="col-md-6">
                  <asp:TextBox ID="qty" class="form-control" runat="server"></asp:TextBox>
                </div>

              <div class="col-md-1"></div>
              <label for="exampleInputEmail1" class="col-md-5 col-form-label">Supplier</label>
              <div class="col-md-6">
              
              <asp:TextBox ID="supplier" class="form-control" runat="server"></asp:TextBox>

              </div>



               <div class="col-md-1"></div>
              <label for="exampleInputEmail1" class="col-md-5 col-form-label">Price</label>
              <div class="col-md-6">
              
              <asp:TextBox ID="price" class="form-control" runat="server"></asp:TextBox>

              </div>


              <div class="col-md-1"></div>
              <label for="exampleInputEmail1" class="col-md-5 col-form-label">Description</label>
              <div class="col-md-6">
                
                 <asp:TextBox ID="idesc" TextMode="MultiLine" class="form-control" runat="server" Rows="4"></asp:TextBox>
              </div>

              <div class="col-md-1"></div>
              <label for="exampleInputdate" class="col-md-5 col-form-label">Date</label>
              <div class="col-md-6">
                 <asp:TextBox ID="pdate" class="form-control" TextMode="Date" runat="server" ></asp:TextBox>
              </div>

             

              

              <div class="col-md-1"></div>
              
              <div class="col-md-11">
               
                <asp:Button ID="updateItem" class="btn btn-primary" runat="server" Text="Update" OnClick="updateItem_Click" />
              </div>


          </div>




</asp:Content>

