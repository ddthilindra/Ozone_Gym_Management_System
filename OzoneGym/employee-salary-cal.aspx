<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="employee-salary-cal.aspx.cs" Inherits="OzoneFitness.employee_salary_cal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="./css/employee-salary.css">

    <title>OZONE - Calculate Salary</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Customer" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Employee" runat="server">


    <div class="tab-pane fade show active" id="list-employee" role="tabpanel" aria-labelledby="list-employee-list">
        <div class="head">
            <h3>Salary Calculatoin </h3>

            <div class="dropdown">
                <button class="btn dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Salary Calculation 
                </button>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">



                   <a class="dropdown-item" href="employee-sal-cal-report.aspx">Employee Salary Report</a>
                     


                     <a class="dropdown-item" href="Add_Specialization.aspx">Employee Specialization </a>
                     <a class="dropdown-item" href="employee-specialization-report.aspx">Specialization Report</a>
                    

                    <a class="dropdown-item" href="empattendance.aspx">Employee Attendance</a>
                     <a class="dropdown-item" href="ReportAttendance.aspx">Employee Attendance Report</a>
                    


                    <a class="dropdown-item" href="employee-leave.aspx">Employee Leave</a>
                     <a class="dropdown-item" href="employee-leave-report.aspx">Employee Leave Report</a>
                     


                    <a class="dropdown-item" href="add-employee.aspx">Employee Add</a>
                      <a class="dropdown-item" href="employee-report.aspx">Employee Add Report</a>
                </div>
            </div>
        </div>

       
       
            <div class="diet-add-frm">
            <div class="form-group row container">
                <div class="col-md-1"></div>
                <label for="exampleInputEmail1" class="col-md-5 col-form-label">Employee Id</label>
                <div class="col-md-6">
                    <asp:TextBox ID="emp_id" class="form-control" runat="server" required></asp:TextBox>
                </div>

                  <div class="col-md-1"></div>
                <label for="exampleInputEmail1" class="col-md-5 col-form-label">OT/Hours</label>
                <div class="col-md-6">
                    <asp:TextBox ID="othours" class="form-control" runat="server" required></asp:TextBox>
                </div>



                <div class="col-md-1"></div>
                <div class="col-md-11">
                <asp:Button ID="ok" runat="server" class="btn btn-primary" Text="Ok" OnClick="ok_Click"  />
                   </div>


                <div class="col-md-1"></div>
                <label for="exampleInputEmail1" class="col-md-5 col-form-label">Basic</label>
                <div class="col-md-6">
                    <asp:TextBox ID="basic" class="form-control-plaintext" runat="server" Enabled="False"></asp:TextBox>

                </div>


                <div class="col-md-1"></div>
                <label for="exampleInputEmail1" class="col-md-5 col-form-label">O/T Rate</label>
                <div class="col-md-6">

                    <asp:TextBox ID="otrate" class="form-control" runat="server"  Enabled="False"></asp:TextBox>


                </div>

                <div class="col-md-1"></div>
                <label for="exampleInputEmail1" class="col-md-5 col-form-label">Bonus</label>
                <div class="col-md-6">

                    <asp:TextBox ID="bonus" runat="server" class="form-control" Enabled="False" ></asp:TextBox>

                </div>

                <div class="col-md-1"></div>

                <label for="exampleInputEmail1" class="col-md-5 col-form-label">O/T Pay</label>
                <div class="col-md-6">
                    <asp:TextBox ID="otpay" class="form-control" runat="server"  Enabled="False"></asp:TextBox>

                </div>

                <div class="col-md-1"></div>
                <label for="exampleInputEmail1" class="col-md-5 col-form-label">Deduction</label>
                <div class="col-md-6">

                    <asp:TextBox ID="deduction" class="form-control" runat="server"  Enabled="False"></asp:TextBox>


                </div>

                <div class="col-md-1"></div>
                <label for="exampleInputEmail1" class="col-md-5 col-form-label">Total Salary</label>
                <div class="col-md-6">

                    <asp:TextBox ID="totalsal" class="form-control" runat="server"  Enabled="False"></asp:TextBox>


                </div>

                

                <div class="col-md-1"></div>

                <div class="col-md-11">

                    <asp:Button ID="salary_addemp" runat="server" class="btn btn-primary" Text="Add" OnClick="salary_addemp_Click1" />


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
