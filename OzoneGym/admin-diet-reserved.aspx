<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="admin-diet-reserved.aspx.cs" Inherits="OzoneFitness.admin_diet_reserved" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
            <link href="css/admin-diet-details.css" rel="stylesheet" />

        <title>OZONE - Diet Reservations</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Customer" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Employee" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Diets" runat="server">

    <div class="tab-pane fade show active" id="list-expencess" role="tabpanel" aria-labelledby="list-expencess-list">
            <div class="head">
                <h3> Diet Reservations</h3>

                <div class="dropdown">
              <button class="btn dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Diet Reservations 
              </button>
              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                <a class="dropdown-item" href="#">Add Diet</a>
                <a class="dropdown-item" href="#">Diet Details</a>
              </div>
            </div>
          </div>
    
            </div>
            
            <table class="table">
                <thead class="thead-dark">
                  <tr>
                    <th scope="col">ID</th>
                    <th scope="col">User</th>
                    <th scope="col">Gender</th>
                    <th scope="col">Category</th>
                    <th scope="col">Foodtype</th>
                    <th scope="col">Actions</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <th class="index-our" scope="row">1</th>
                    <td><asp:Label ID="user" runat="server" Text="Nimal"></asp:Label></td>
                    <td><asp:Label ID="gender" runat="server" Text="Male"></asp:Label></td>
                    <td><asp:Label ID="category" runat="server" Text="Weight Gain"></asp:Label></td>
                    <td><asp:Label ID="foodtype" runat="server" Text="Vegan"></asp:Label></td>
                    <td>
                        <asp:LinkButton class="btn btn-primary " ID="edit" runat="server">EDIT</asp:LinkButton>
                        <asp:LinkButton style="margin-left: 10px;" class="btn btn-danger " ID="delete" runat="server">DELETE</asp:LinkButton>

                    </td>

                    
                  </tr>
                  <tr>
                    <th class="index-our" scope="row">2</th>
                    <td>Jacob</td>
                    <td>Thornton</td>
                    <td>@fat</td>
                    <td>@fat</td>
                    <td>@fat</td>
                    <td></td>
                  </tr>
                  <tr>
                    <th class="index-our" scope="row">3</th>
                    <td>Larry</td>
                    <td>the Bird</td>
                    <td>@twitter</td>
                    <td>@twitter</td>
                    <td>@twitter</td>
                    <td></td>
                  </tr>
                </tbody>
              </table>




</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Payment" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="Expencess" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="Gym" runat="server">
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
</asp:Content>
