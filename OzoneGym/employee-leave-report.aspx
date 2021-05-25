<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="employee-leave-report.aspx.cs" Inherits="OzoneFitness.employee_leave_report" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

         <link rel="stylesheet" href="./css/employee-leave-report.css">
    <title>OZONE - Admin leave Report Employee</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Customer" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Employee" runat="server">


    <div class="tab-pane fade show active" id="list-employee" role="tabpanel" aria-labelledby="list-employee-list">
            <div class="head">
                <h3>Employee leave Report</h3>
    
                <div class="dropdown">
              <button class="btn dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Employee leave report 
              </button>
              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">


                      <a class="dropdown-item" href="employee-leave.aspx">Employee Leave</a>
                     


                    <a class="dropdown-item" href="employee-salary-cal.aspx">Employee Salary</a>
                     <a class="dropdown-item" href="employee-sal-cal-report.aspx">Employee Salary Report</a>
                    

                    <a class="dropdown-item" href="empattendance.aspx">Employee Attendance</a>
                     <a class="dropdown-item" href="ReportAttendance.aspx">Employee Attendance Report</a>
                    


                    <a class="dropdown-item" href="add-employee.aspx">Employee Add</a>
                      <a class="dropdown-item" href="employee-report.aspx">Employee Add Report</a>
                     


                    <a class="dropdown-item" href="Add_Specialization.aspx">Employee Specialization </a>
                     <a class="dropdown-item" href="employee-specialization-report.aspx">Specialization Report</a>





              </div>
            </div>
            </div>

        </div>

         <div class="table-responsive-sm">

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OzoneFitnessConnectionString %>" SelectCommand="SELECT * FROM [Leave_Table]"></asp:SqlDataSource>


        <asp:GridView ID="GridView1" runat="server" GridLines="None" Cssclass="table table-responsive-lg" AutoGenerateColumns="False"  BorderStyle="None" DataKeyNames="LeaveId" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="LeaveId" HeaderText="LeaveId" InsertVisible="False" ReadOnly="True" SortExpression="LeaveId" />
                <asp:BoundField DataField="Emp_Id" HeaderText="Emp_Id" SortExpression="Emp_Id" />
                <asp:BoundField DataField="StartDate" HeaderText="StartDate" SortExpression="StartDate" />
                <asp:BoundField DataField="EndDate" HeaderText="EndDate" SortExpression="EndDate" />
                <asp:BoundField DataField="Reason" HeaderText="Reason" SortExpression="Reason" />
               
                
               <asp:HyperLinkField Text="Edit" ControlStyle-CssClass="btn btn-primary" DataNavigateUrlFields="LeaveId" DataNavigateUrlFormatString="employee-edit-leave.aspx?LeaveId={0}" />

                
                
                
                <asp:TemplateField>
                    <ItemTemplate>
                        
                         
                           
                        <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#staticBackdrop<%#Eval("LeaveId")%>">
                            Delete
                        </button>


                        
                            <div class="modal fade" id="staticBackdrop<%#Eval("LeaveId")%>" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
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
                                            <a href="admin-delete-leave_employee.aspx?LeaveId=<%#Eval("LeaveId")%>" class="btn btn-danger">Delete Permenantly</a>
                                        </div>
                                    </div>
                                </div>
                            </div>   
                           

                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>

             <HeaderStyle CssClass="thead-dark" />

        </asp:GridView>





         

          <!--
        <div class="table-responsive-sm">
            <table class="table">
                <thead class="thead-dark">
                  <tr>
                    <th scope="col">Leave Id</th>
                    <th scope="col">Employee Id</th>
                    <th scope="col">Reason</th>
                    <th scope="col">From</th>
                    <th scope="col">To</th>
                   
                    <th scope="col">Action</th>

                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <th class="index-our" scope="row">
                        <asp:Label ID="leaveid" runat="server" Text="1"></asp:Label></th>
                    <td>
                       <asp:Label ID="employeeId" runat="server" Text="Mark"></asp:Label>

                    </td>
                    <td>
                     <asp:Label ID="description" runat="server" Text="Otto"></asp:Label>

                    </td>
                    <td>
                         <asp:Label ID="from" runat="server" Text="mdo"></asp:Label>

                    </td>

                       <td>
                         <asp:Label ID="to" runat="server" Text="mdo"></asp:Label>

                    </td>
                    
                      <td>
                         

                          
                        <asp:LinkButton ID="addempedit" runat="server" class="btn btn-primary">EDIT</asp:LinkButton>
                              
                        <asp:LinkButton ID="deleteemp" runat="server" class="btn btn-primary">DELETE</asp:LinkButton>
                       

                    </td>

                    
                  
                  
                </tbody>
              </table>   
            </div>

              -->

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
