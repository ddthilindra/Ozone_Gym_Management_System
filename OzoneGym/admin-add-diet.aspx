<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="admin-add-diet.aspx.cs" Inherits="OzoneFitness.admin_add_diet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="./css/admin-diet.css">

    <title>OZONE - Admin Add Diet</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Customer" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="Employee" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="Diets" runat="server">
    <div class="tab-pane fade show active" id="list-diet" role="tabpanel" aria-labelledby="list-diet-list">
    <div class="head">
            <h3>Add Diet Plan</h3>

            <div class="dropdown">
              <button class="btn dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Add Diet Plan 
              </button>
              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                <a class="dropdown-item" href="admin-diet-details.aspx">Diets</a>
                  <a class="dropdown-item" href="admin-diet-reserved.aspx">Diet Resevation</a>
              </div>
            </div>
          </div>
          
        <div class="diet-add-frm">
          <div class="form-group row container">
            <div class="col-md-1"></div>
              <label for="exampleInputEmail1" class="col-md-5 col-form-label">Email address</label>
              <div class="col-md-6">
                 <asp:TextBox ID="email" class="form-control" runat="server" TextMode="Email" required  pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"></asp:TextBox>
              </div>

              <div class="col-md-1"></div>
                <label class="col-md-5 col-form-label">Diet Type</label>
                <div class="col-md-6">
                   <asp:DropDownList class="form-control" ID="diettype" runat="server">
                       <asp:ListItem ID="vegan" Text="Vegan Diet" Value="vegan" runat="server"/>
                       <asp:ListItem ID="weightloss" Text="Weight Loss" Value="weightloss" runat="server"/>
                       <asp:ListItem ID="weightgain" Text="Weight Gain" Value="weightgain" runat="server"/>
                       <asp:ListItem ID="cardio" Text="Cardio" Value="Cardio" runat="server"/>
                   </asp:DropDownList>
                  
                </div>

              <div class="col-md-1"></div>
                <label class="col-md-5 col-form-label">Food Type</label>
                <div class="col-md-6">
                   <asp:DropDownList class="form-control" ID="foodtype" runat="server">
                       <asp:ListItem ID="ListItem2" Text="Vegitarian" Value="vegan" runat="server"/>
                       <asp:ListItem ID="ListItem3" Text="Meat" Value="weightloss" runat="server"/>
                   </asp:DropDownList>
                  
                </div>

              <div class="col-md-1"></div>
              <label for="exampleInputEmail1" class="col-md-5 col-form-label">Starting BMI</label>
              <div class="col-md-6">
                 <asp:TextBox ID="startBmi" class="form-control" runat="server" TextMode="Number" required></asp:TextBox>
              </div>
              
              <div class="col-md-1"></div>
              <label for="exampleInputEmail1" class="col-md-5 col-form-label">End BMI</label>
              <div class="col-md-6">
                 <asp:TextBox ID="endBmi" class="form-control" runat="server" TextMode="Number" required></asp:TextBox>
              </div>

                <div class="col-md-1"></div>
              <label for="exampleInputEmail1" class="col-md-5 col-form-label">Image</label>
              <div class="col-md-6">
                  <asp:FileUpload ID="imgup" runat="server" class="form-control-file" />
              </div>

              <div class="col-md-1"></div>
              <label for="exampleInputEmail1" class="col-md-5 col-form-label">Description</label>
              <div class="col-md-6">
                 <asp:TextBox ID="description" runat="server" Columns="70" TextMode="MultiLine" Rows="5" required MaxLength="50"></asp:TextBox>
               
              </div>


              <div class="col-md-1"></div>
              <label for="exampleInputEmail1" class="col-md-5 col-form-label">Gender</label>
              <div class="col-md-6">
                <asp:DropDownList class="form-control" ID="gender" runat="server">
                    <asp:ListItem class="form-control" Text="Male" Value="male" ID="DropDownList1" runat="server"/>
                    <asp:ListItem class="form-control" Text="Female" Value="female" ID="ListItem1" runat="server"/>
                </asp:DropDownList>
              </div>

              <div class="col-md-1"></div>
              
              <div class="col-md-11">
                <asp:Button ID="adddiet" class="btn btn-primary" runat="server" Text="Add Diet" OnClick="adddiet_Click" />
              </div>


          </div>

        </div>
        </div>
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="Payment" runat="server">
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="Expencess" runat="server">
</asp:Content>

<asp:Content ID="Content7" ContentPlaceHolderID="Gym" runat="server">
</asp:Content>
