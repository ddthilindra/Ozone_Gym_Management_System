<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="employee-edit-leave.aspx.cs" Inherits="OzoneFitness.employee_edit_leave" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <link rel="stylesheet" href="./css/employee-edit-leave.css">

    <title>OZONE - Admin Edit Leave Employee</title>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Customer" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Employee" runat="server">



    <div class="tab-pane fade show active" id="list-employee" role="tabpanel" aria-labelledby="list-employee-list">
        <div class="head">
            <h3>Employee Leave Edit</h3>

            <div class="dropdown">
                <button class="btn dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                   Employee Edit Leave 
                </button>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                    <a class="dropdown-item" href="#">Employee Salary</a>
                    <a class="dropdown-item" href="#">Employee Attendance</a>
                    <a class="dropdown-item" href="#">Employee Leave</a>
                    <a class="dropdown-item" href="#">Employee Report </a>
                </div>
            </div>
        </div>

        

            <div class="col-md-9">
            </div>
        </div>


        
            <div class="diet-add-frm">
            <div class="form-group row container">
                <div class="col-md-1"></div>
                <label for="exampleInputEmail1" class="col-md-5 col-form-label">Employee Id</label>
                <div class="col-md-6">
                    <asp:TextBox ID="empid" class="form-control" runat="server" required></asp:TextBox>
                </div>


                <div class="col-md-1"></div>
                <label for="exampleInputEmail1" class="col-md-5 col-form-label">From</label>
                <div class="col-md-6">
                    <asp:TextBox ID="from" class="form-control" runat="server" TextMode="Date" required></asp:TextBox>

                </div>


               
                <div class="col-md-1"></div>
                <label for="exampleInputEmail1" class="col-md-5 col-form-label" >To</label>

                <div class="col-md-6">
                    <asp:TextBox ID="to" class="form-control" runat="server" TextMode="Date" required></asp:TextBox>

                </div>
                

                  <div class="col-md-1"></div>
                <label for="exampleInputEmail1" class="col-md-5 col-form-label">Reson</label>
                <div class="col-md-6">
                    <asp:TextBox ID="reason" class="form-control" runat="server" TextMode="MultiLine" required></asp:TextBox>

                </div>

              

                <div class="col-md-1"></div>

                <div class="col-md-11">

                    <asp:Button ID="addleaveemp" runat="server" class="btn btn-primary" Text="Confirm" OnClick="addleaveemp_Click" />


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
