<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="admin-add-item.aspx.cs" Inherits="OzoneFitness.admin_add_item" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="./css/admin-diet.css">

    <title>OZONE - Admin Add Item</title>
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
    <div class="tab-pane fade show active" id="list-gym" role="tabpanel" aria-labelledby="list-gym-list">
    <div class="head">
            <h3>Add Item</h3>

            <div class="dropdown">
              <button class="btn dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Add Item 
              </button>
              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                <a class="dropdown-item" href="admin-item-details.aspx">Item Details</a>
                <a class="dropdown-item" href="admin-add-supplier.aspx">Add Supplier</a>
                <a class="dropdown-item" href="admin-suppliers-details.aspx">Suppliers Details</a>
              </div>
            </div>
          </div>
          
        <div class="diet-add-frm">
          <div class="form-group row container">
            <div class="col-md-1"></div>
              <label for="exampleInputName" class="col-md-5 col-form-label" >Name</label>
              <div class="col-md-6">
                 <asp:TextBox ID="name" class="form-control" runat="server" required></asp:TextBox>
              </div>
              <div class="col-md-1"></div>
              <label for="exampleInputqty" class="col-md-5 col-form-label">Quentity</label>
              <div class="col-md-6">
                 <asp:TextBox ID="qty" class="form-control" runat="server" TextMode="Number" required></asp:TextBox>
              </div>
              <div class="col-md-1"></div>
              <label for="exampleInputsupplier" class="col-md-5 col-form-label">Supplier</label>
              <div class="col-md-6">
                 <asp:TextBox ID="supplier" class="form-control" runat="server" required></asp:TextBox>
              </div>


                <div class="col-md-1"></div>
              <label for="exampleInputimg" class="col-md-5 col-form-label">Image</label>
              <div class="col-md-6">
                  <asp:FileUpload ID="img" runat="server" class="form-control-file" />
              </div>

              <div class="col-md-1"></div>
              <label for="exampleInputprice" class="col-md-5 col-form-label">Price</label>
              <div class="col-md-6">
                 <asp:TextBox ID="price" class="form-control" runat="server" required></asp:TextBox>
                  <asp:CompareValidator ID="CompareValidator1" runat="server"
                                       ControlToValidate="price" ErrorMessage="Must be &gt; 0"
                                       Operator="GreaterThan" Type="Integer"
                                       ValueToCompare="0" />
              </div>

              <div class="col-md-1"></div>
              <label for="exampleInputEmail1" class="col-md-5 col-form-label">Description</label>
              <div class="col-md-6">
                 <asp:TextBox ID="idesc" runat="server" Columns="70" TextMode="MultiLine" Rows="5" required></asp:TextBox>
               
              </div>

              <div class="col-md-1"></div>
              <label for="exampleInputdate" class="col-md-5 col-form-label">Date</label>
              <div class="col-md-6">
                 <asp:TextBox ID="pdate" class="form-control" TextMode="Date" runat="server" required></asp:TextBox>
              </div>

              <div class="col-md-1"></div>
              
              <div class="col-md-11">
                <asp:Button ID="additem" class="btn btn-primary" runat="server" Text="Add Item" OnClick="additem_Click"  />
              </div>
              </div>
           
            </div>   

        </div>
</asp:Content>

