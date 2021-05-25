<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="Add_Specialization.aspx.cs" Inherits="OzoneFitness.Add_Specialization" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <link rel="stylesheet" href="./css/employee-specializations.css">
    
    <title>OZONE - Admin Add Specialization</title>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="Employee" runat="server">
   

    <div class="tab-pane fade show active" id="list-employee" role="tabpanel" aria-labelledby="list-employee-list">
        <div class="head">
            <h3>Add Employee </h3>

            <div class="dropdown">
                <button class="btn dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                   Employee Specialization 
                </button>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">


                   <a class="dropdown-item" href="employee-specialization-report.aspx">Specialization Report</a>
                     


                    <a class="dropdown-item" href="employee-salary-cal.aspx">Employee Salary</a>
                     <a class="dropdown-item" href="employee-sal-cal-report.aspx">Employee Salary Report</a>
                    

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
                    <asp:TextBox ID="otrate" class="form-control" runat="server" TextMode="Number" required></asp:TextBox>

                </div>


                <div class="col-md-1"></div>
                <label for="exampleInputEmail1" class="col-md-5 col-form-label">Allowance</label>
                <div class="col-md-6">
                    <asp:TextBox ID="allowance" class="form-control" runat="server" TextMode="Number" required></asp:TextBox>

                </div>

                <div class="col-md-1"></div>
                <label for="exampleInputEmail1" class="col-md-5 col-form-label">Bonus</label>
                <div class="col-md-6">

                    <asp:TextBox ID="bonus" runat="server"  class="form-control" TextMode="Number" required></asp:TextBox>

                </div>

                <div class="col-md-1"></div>
                <label for="exampleInputEmail1" class="col-md-5 col-form-label">Basic</label>
                <div class="col-md-6">

                    <asp:TextBox ID="basic" runat="server"  class="form-control" TextMode="Number" required></asp:TextBox>

                </div>

                                                                                                                           

                <div class="col-md-1"></div>

                <div class="col-md-11">

                    <asp:Button ID="add_emp_specialization" runat="server" class="btn btn-primary" Text="Add" OnClick="add_emp_specialization_Click" />


                </div>


            </div>

            </div>
        </div>




</asp:Content>

