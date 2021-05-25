<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="empattendance.aspx.cs" Inherits="OzoneFitness.empattendance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <link rel="stylesheet" href="./css/empattendance.css">
    <title>OZONE - Admin-add-attendance</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Customer" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Employee" runat="server">

    <div class="tab-pane fade show active" id="list-employee" role="tabpanel" aria-labelledby="list-employee-list">
        <div class="head">
            <h3>Employee attendance </h3>

            <div class="dropdown">
                <button class="btn dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Add Employee 
                </button>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">


                    <a class="dropdown-item" href="ReportAttendance.aspx">Employee Attendance Report</a>
                     


                    <a class="dropdown-item" href="employee-salary-cal.aspx">Employee Salary</a>
                     <a class="dropdown-item" href="employee-sal-cal-report.aspx">Employee Salary Report</a>
                    

                     <a class="dropdown-item" href="add-employee.aspx">Employee Add</a>
                      <a class="dropdown-item" href="employee-report.aspx">Employee Add Report</a>
                    


                    <a class="dropdown-item" href="employee-leave.aspx">Employee Leave</a>
                     <a class="dropdown-item" href="employee-leave-report.aspx">Employee Leave Report</a>
                     


                    <a class="dropdown-item" href="Add_Specialization.aspx">Employee Specialization </a>
                     <a class="dropdown-item" href="employee-specialization-report.aspx">Specialization Report</a>
                     
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
                    <asp:TextBox ID="Emp_Id" class="form-control" runat="server" required></asp:TextBox>
                </div>




                   <div class="col-md-1"></div>
                <label for="exampleInputEmail1" class="col-md-5 col-form-label">Shift</label>
                <div class="col-md-6">

                    <asp:DropDownList ID="Shift" class="form-control" runat="server">
                        <asp:ListItem ID="day" Text="Night Shift" Value="night" runat="server" />
                        <asp:ListItem ID="night" Text="Day" Value="day" runat="server" />
                    </asp:DropDownList>

                </div>


                <div class="col-md-1"></div>
                <label for="exampleInputEmail1" class="col-md-5 col-form-label">O/T</label>
                <div class="col-md-6">
                    <asp:TextBox ID="Ot" class="form-control" runat="server" required ></asp:TextBox>

                </div>


               
                <div class="col-md-1"></div>
                <label for="exampleInputEmail1" class="col-md-5 col-form-label" >Date Of Attendance</label>
                <div class="col-md-6">
                    <asp:TextBox ID="DateOfAttend" class="form-control" runat="server" TextMode="Date" required></asp:TextBox>

                </div>
                

                <div class="col-md-1"></div>

                <div class="col-md-11">

                    <asp:Button ID="add_attendance_emp" runat="server" class="btn btn-primary" Text="Add" OnClick="add_attendance_emp_Click" />


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
