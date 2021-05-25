<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="Specialization-Edit.aspx.cs" Inherits="OzoneFitness.Specialization_Edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    
         <link rel="stylesheet" href="./css/Specialization-Edit.css">
        <title>OZONE - Admin Edit Specialization</title>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Customer" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Employee" runat="server">

    <div class="tab-pane fade show active" id="list-employee" role="tabpanel" aria-labelledby="list-employee-list">
        <div class="head">
            <h3>Add Employee </h3>

            <div class="dropdown">
                <button class="btn dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                     Employee Edit Specialization 
                </button>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                    <a class="dropdown-item" href="#">Employee Salary</a>
                    <a class="dropdown-item" href="#">Employee Attendance</a>
                    <a class="dropdown-item" href="#">Employee Leave</a>
                    <a class="dropdown-item" href="#">Employee Report </a>
                </div>
            </div>
        </div>

      


        
            <div class="diet-add-frm">
            <div class="form-group row container">
             <div class="col-md-1"></div>
                <label for="exampleInputEmail1" class="col-md-5 col-form-label">Specialization</label>


                <div class="col-md-6">

                    <asp:DropDownList ID="specialization" class="form-control" runat="server">
                        <asp:ListItem ID="weight_loss" Text="Weight loss" Value="Weight loss" runat="server" />
                        <asp:ListItem ID="muscle_building" Text="Muscle building" Value="Muscle building" runat="server" />
                         <asp:ListItem ID="Cardio" Text="Cardio" Value="Cardio" runat="server" />
                         <asp:ListItem ID="Calisthenic" Text="Calisthenic" Value="Calisthenic" runat="server" />
                    </asp:DropDownList>

                </div>


                

                <div class="col-md-1"></div>
                <label for="exampleInputEmail1" class="col-md-5 col-form-label">OTRate</label>
                <div class="col-md-6">
                    <asp:TextBox ID="otrate" class="form-control" runat="server" required></asp:TextBox>

                </div>


                <div class="col-md-1"></div>
                <label for="exampleInputEmail1" class="col-md-5 col-form-label">Allowance</label>
                <div class="col-md-6">
                    <asp:TextBox ID="allowance" class="form-control" runat="server" required></asp:TextBox>

                </div>

                <div class="col-md-1"></div>
                <label for="exampleInputEmail1" class="col-md-5 col-form-label">Bonus</label>
                <div class="col-md-6">

                    <asp:TextBox ID="bonus" runat="server"  class="form-control" required></asp:TextBox>

                </div>


                 <div class="col-md-1"></div>
                <label for="exampleInputEmail1" class="col-md-5 col-form-label">Basic</label>
                <div class="col-md-6">

                    <asp:TextBox ID="basic" runat="server"  class="form-control" required></asp:TextBox>

                </div>


                                                                                                                           

                <div class="col-md-1"></div>

                <div class="col-md-11">

                    <asp:Button ID="edit_emp_specialization" runat="server" class="btn btn-primary" Text="Confirm" OnClick="edit_emp_specialization_Click"  />


                </div>


            </div>

            </div>
        </div>



</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Shedule" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Diets" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="Payment" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="Expencess" runat="server">
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="Gym" runat="server">
</asp:Content>
<asp:Content ID="Content9" ContentPlaceHolderID="Booking" runat="server">
</asp:Content>
