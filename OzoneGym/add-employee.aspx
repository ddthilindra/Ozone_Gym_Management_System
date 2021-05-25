<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="add-employee.aspx.cs" Inherits="OzoneFitness.add_employee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="./css/admin-add-employee.css">
    <script src="js/nicVal.js"></script>
    <title>OZONE - Admin Add Employee</title>
</asp:Content>



<asp:Content ID="Content3" ContentPlaceHolderID="Employee" runat="server">
    

    <div class="tab-pane fade show active" id="list-employee" role="tabpanel" aria-labelledby="list-employee-list">
        <div class="head">
            <h3>Add Employee </h3>

            <div class="dropdown">
                <button class="btn dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Employee Add
                </button>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">


                     <a class="dropdown-item" href="employee-report.aspx">Employee Add Report</a>
                     


                    <a class="dropdown-item" href="employee-salary-cal.aspx">Employee Salary</a>
                     <a class="dropdown-item" href="employee-sal-cal-report.aspx">Employee Salary Report</a>
                    

                    <a class="dropdown-item" href="empattendance.aspx">Employee Attendance</a>
                     <a class="dropdown-item" href="ReportAttendance.aspx">Employee Attendance Report</a>
                    


                    <a class="dropdown-item" href="employee-leave.aspx">Employee Leave</a>
                     <a class="dropdown-item" href="employee-leave-report.aspx">Employee Leave Report</a>
                     


                    <a class="dropdown-item" href="Add_Specialization.aspx">Employee Specialization </a>
                     <a class="dropdown-item" href="employee-specialization-report.aspx">Specialization Report</a>
                     
                    
                
                </div>
            </div>
        </div>

      


        
            <div class="diet-add-frm">
            <div class="form-group row container">
                <div class="col-md-1"></div>
                <label for="exampleInputEmail1" class="col-md-5 col-form-label">Employee Name</label>
                <div class="col-md-6">
                    <asp:TextBox ID="empname" class="form-control" runat="server" required  placeholder="name"></asp:TextBox>
                </div>


                

                <div class="col-md-1"></div>
                <label for="exampleInputEmail1" class="col-md-5 col-form-label">NIC</label>
                <div class="col-md-6">
                    <asp:TextBox ID="nic" class="form-control" runat="server" required   placeholder="nic" onkeyup ="validateNIC();" maxlength=10></asp:TextBox>

                </div>


                <div class="col-md-1"></div>
                <label for="exampleInputEmail1" class="col-md-5 col-form-label">DOB</label>
                <div class="col-md-6">
                    <asp:TextBox ID="dob" class="form-control" runat="server" required TextMode="Date"></asp:TextBox>

                </div>

                <div class="col-md-1"></div>
                <label for="exampleInputEmail1" class="col-md-5 col-form-label">Email</label>
                <div class="col-md-6">

                    <asp:TextBox ID="empemail" runat="server" TextMode="Email" class="form-control" required  pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" placeholder="salika@gmail.com"></asp:TextBox>

                </div>

                  <div class="col-md-1"></div>

                <label for="exampleInputEmail1" class="col-md-5 col-form-label">Address</label>
                <div class="col-md-6">
                    <asp:TextBox ID="empaddress" class="form-control" runat="server" required placeholder="Address"></asp:TextBox>

                  </div>



                <div class="col-md-1"></div>
                <label for="exampleInputEmail1" class="col-md-5 col-form-label">Gender</label>
                <div class="col-md-6">

                    <asp:DropDownList ID="empgender" class="form-control" runat="server">
                        <asp:ListItem ID="empgendermale" Text="Male" Value="male" runat="server" />
                        <asp:ListItem ID="empgenderfemale" Text="Female" Value="female" runat="server" />
                    </asp:DropDownList>

                </div>

                   


                <div class="col-md-1"></div>
                <label for="exampleInputEmail1" class="col-md-5 col-form-label">Phone Number</label>
                <div class="col-md-6">

                    <asp:TextBox ID="empphone" runat="server" class="form-control" TextMode="Phone" pattern="[0]{1}[0-7]{1}[0-9]{8}" required  placeholder="071XXXXXXX"></asp:TextBox>


                </div>

              
                  <div class="col-md-1"></div>
                <label for="exampleInputEmail1" class="col-md-5 col-form-label">Shift</label>
                <div class="col-md-6">

                    <asp:TextBox ID="empshift" class="form-control" runat="server" required></asp:TextBox>


                </div>


                <div class="col-md-1"></div>
                <label for="exampleInputEmail1" class="col-md-5 col-form-label">Schedule</label>
                <div class="col-md-6">

                    <asp:TextBox ID="schedule" class="form-control" runat="server" required></asp:TextBox>


                </div>



                <div class="col-md-1"></div>
                <label for="exampleInputEmail1" class="col-md-5 col-form-label">Specialization</label>
                <div class="col-md-6">

                     

                    <asp:DropDownList ID="masterat" class="form-control" runat="server">
                        <asp:ListItem ID="weight_loss" Text="Weight loss" Value="Weight loss" runat="server" />
                        <asp:ListItem ID="muscle_building" Text="Muscle building" Value="Muscle building" runat="server" />
                         <asp:ListItem ID="Cardio" Text="Cardio" Value="Cardio" runat="server" />
                         <asp:ListItem ID="Calisthenic" Text="Calisthenic" Value="Calisthenic" runat="server" />
                    </asp:DropDownList>

                


                </div>


                   <div class="col-md-1"></div>
                <label for="exampleInputEmail1" class="col-md-5 col-form-label">Type</label>
                <div class="col-md-6">

                    <asp:TextBox ID="type" class="form-control" runat="server" required></asp:TextBox>


                </div>
              

               

                <div class="col-md-1"></div>

                <div class="col-md-11">

                    <asp:Button ID="addemp" runat="server" class="btn btn-primary" Text="Add" OnClick="addemp_Click"/>


                </div>


            </div>

            </div>
        </div>


    
</asp:Content>



