<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="empoyeeEdit.aspx.cs" Inherits="OzoneFitness.empoyeeEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <link rel="stylesheet" href="./css/admin-edit-employee.css">

    <title>OZONE - Admin Edit Employee</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Customer" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Employee" runat="server">

    <div class="tab-pane fade show active" id="list-employee" role="tabpanel" aria-labelledby="list-employee-list">
        <div class="head">
            <h3>Add Employee </h3>

            <div class="dropdown">
                <button class="btn dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Employee Edit 
                </button>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                    <a class="dropdown-item" href="#">Employee Salary</a>
                    <a class="dropdown-item" href="#">Employee Attendance</a>
                    <a class="dropdown-item" href="#">Employee Leave</a>
                    <a class="dropdown-item" href="#">Employee Report </a>
                </div>
            </div>
        </div>

        <div class="row container">
            <div class="col-md-3" style="margin-left: 10px;">
                <asp:Button ID="empcreate" runat="server" class="btn btn-primary" Text="Create New" OnClick="empcreate_Click"/>

              
            </div>

            <div class="col-md-9">
            </div>
        </div>


        
            <div class="diet-add-frm">
            <div class="form-group row container">
                <div class="col-md-1"></div>
                <label for="exampleInputEmail1" class="col-md-5 col-form-label">Employee Name</label>
                <div class="col-md-6">
                    <asp:TextBox ID="empname" class="form-control" runat="server" required></asp:TextBox>
                </div>


               


                  <div class="col-md-1"></div>
                <label for="exampleInputEmail1" class="col-md-5 col-form-label">NIC</label>
                <div class="col-md-6">
                    <asp:TextBox ID="nic" class="form-control" runat="server" required></asp:TextBox>

                </div>

                <div class="col-md-1"></div>
                <label for="exampleInputEmail1" class="col-md-5 col-form-label">DOB</label>
                <div class="col-md-6">
                    <asp:TextBox ID="dob" class="form-control" runat="server" required TextMode="Date"></asp:TextBox>

                </div>

                <div class="col-md-1"></div>
                <label for="exampleInputEmail1" class="col-md-5 col-form-label">Email</label>
                <div class="col-md-6">

                    <asp:TextBox ID="empemail" runat="server" TextMode="Email" class="form-control" required></asp:TextBox>

                </div>


                 <div class="col-md-1"></div>

                <label for="exampleInputEmail1" class="col-md-5 col-form-label">Address</label>
                <div class="col-md-6">
                    <asp:TextBox ID="empaddress" class="form-control" runat="server" required></asp:TextBox>

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

                    <asp:TextBox ID="empphone" runat="server" class="form-control" TextMode="Phone"  pattern="[0]{1}[0-7]{1}[0-9]{8}" required  placeholder="071XXXXXXX"></asp:TextBox>


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

                    <asp:TextBox ID="masterat" class="form-control" runat="server" required></asp:TextBox>


                </div>

               
                <div class="col-md-1"></div>
                <label for="exampleInputEmail1" class="col-md-5 col-form-label">Type</label>
                <div class="col-md-6">

                    <asp:TextBox ID="type" class="form-control" runat="server" required></asp:TextBox>


                </div>






                <div class="col-md-1"></div>

                <div class="col-md-11">

                    <asp:Button ID="updateemp" runat="server" class="btn btn-primary" Text="Save" OnClick="updateemp_Click" />


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
