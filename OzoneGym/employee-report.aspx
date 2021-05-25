<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="employee-report.aspx.cs" Inherits="OzoneFitness.employee_report" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     
     <link rel="stylesheet" href="./css/employee-report.css">
    <title>OZONE - Admin Report Employee</title>

    <script src="js/html2canvas.min.js"></script>
    <script src="js/pdfmake.min.js"></script>
    <script type="text/javascript">
        function Export() {
            
            html2canvas(document.getElementById('Employee_GridView1'), {
                onrendered: function (canvas) {
                    var data = canvas.toDataURL();
                    var docDefinition = {
                        content: [{
                            image: data,
                            width: 500
                        }]
                    };
                    pdfMake.createPdf(docDefinition).download("emp.pdf");
                    alert("Admit Card Downloading Started");
                }
            });
        }
    </script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Customer" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Employee" runat="server">

    <div class="tab-pane fade show active" id="list-employee" role="tabpanel" aria-labelledby="list-employee-list">
            <div class="head">
                <h3>Employee Report</h3>
    
                <div class="dropdown">
              <button class="btn dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Add Employee 
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
            
        <div class="table-responsive-sm">



            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OzoneFitnessConnectionString %>" SelectCommand="SELECT * FROM [Employee]"></asp:SqlDataSource>



            <asp:GridView ID="GridView1" GridLines="None"   CssClass="table table-responsive-lg" runat="server" AutoGenerateColumns="False" BorderStyle="None" DataKeyNames="Emp_id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Emp_id" HeaderText="Employee Id" InsertVisible="False" ReadOnly="True" SortExpression="Emp_id" />
                    <asp:BoundField DataField="Name" HeaderText="EmpName" SortExpression="Name" />
                    <asp:BoundField DataField="NIC" HeaderText="NIC" SortExpression="NIC" />                  
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                    <asp:BoundField DataField="Contact" HeaderText="Contact" SortExpression="Contact" />                                                   
                    <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                    

                    
                    <asp:HyperLinkField Text="Edit" ControlStyle-CssClass="btn btn-primary" DataNavigateUrlFields="Emp_id" DataNavigateUrlFormatString="empoyeeEdit.aspx?Emp_id={0}" />
                    


                    <asp:TemplateField>
                    <ItemTemplate>

                      <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#staticBackdrop<%#Eval("Emp_id")%>">
                            Delete
                        </button>


                        
                            <div class="modal fade" id="staticBackdrop<%#Eval("Emp_id")%>" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                <div class="modal-dialog modal-dialog-centered">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="staticBackdropLabel">You Are Going To Delete A Record!!!</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            You are Going to Permenantly Delete a Record!!
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Don't Delete</button>
                                            <a href="admin-delete-employee.aspx?Emp_id=<%#Eval("Emp_id")%>" class="btn btn-danger">Delete Permenantly</a>
                                        </div>
                                    </div>
                                </div>
                            </div>   
                           

                    </ItemTemplate>
                </asp:TemplateField>


                </Columns>

                <HeaderStyle CssClass="thead-dark" />

            </asp:GridView>

            <input type="button" id="btnExport" value="Export" onclick="Export()" class="btn btn-primary" />







            <!--<table class="table">
                <thead class="thead-dark">
                  <tr>
                    <th scope="col">Employee Id</th>
                    <th scope="col">EmpName</th>
                    <th scope="col">UserName</th>
                    <th scope="col">Password</th>
                    <th scope="col">Gender</th>
                    <th scope="col">Phone</th>
                    <th scope="col">Address</th>
                    <th scope="col">MasterAt</th>
                    <th scope="col">Shift</th>
                    <th scope="col">Email</th>
                    <th scope="col">Action</th>

                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <th class="index-our" scope="row">
                        <asp:Label ID="empid" runat="server" Text="1"></asp:Label></th>
                    <td>
                       <asp:Label ID="empname" runat="server" Text="Mark"></asp:Label>

                    </td>
                    <td>
                     <asp:Label ID="username" runat="server" Text="Otto"></asp:Label>

                    </td>
                    <td>
                         <asp:Label ID="password" runat="server" Text="mdo"></asp:Label>

                    </td>
                    <td>
                         <asp:Label ID="gender" runat="server" Text="mdo"></asp:Label>

                    </td>
                    <td>
                         <asp:Label ID="phone" runat="server" Text="mdo"></asp:Label>

                    </td>
                    <td>
                         <asp:Label ID="address" runat="server" Text="mdo"></asp:Label>

                    </td>
                    <td>
                         <asp:Label ID="masterat" runat="server" Text="mdo"></asp:Label>

                    </td>
                    <td>
                         <asp:Label ID="shift" runat="server" Text="mdo"></asp:Label>

                    </td>
                    <td>
                         <asp:Label ID="empemail" runat="server" Text="mdo"></asp:Label>

                    </td>

                      <td>
                         

                          
                        <asp:LinkButton ID="addempedit" runat="server" class="btn btn-primary">EDIT</asp:LinkButton>
                              
                        <asp:LinkButton ID="deleteemp" runat="server" class="btn btn-primary">DELETE</asp:LinkButton>
                       

                    </td>

                    
                  
                  
                </tbody>
              </table>-->
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
