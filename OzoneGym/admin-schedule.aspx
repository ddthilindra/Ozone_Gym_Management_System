<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="admin-schedule.aspx.cs" Inherits="OzoneFitness.admin_schedule" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <link href="css/admin-schedule.css" rel="stylesheet" />

    <title>OZONE - Admin Shedule </title>
    
    <script src="js/html2canvas.min.js"></script>
    <script src="js/pdfmake.min.js"></script>
    <script type="text/javascript">
        function Export() {
            
            html2canvas(document.getElementById('Shedule_GridView1'), {
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
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="shedule" runat="server">

     <div class="tab-pane fade show active" id="list-expencess" role="tabpanel" aria-labelledby="list-expencess-list">
            <div class="head">
                 
          
                <h3>schedules</h3>

                <div class="dropdown">
              <button class="btn dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                schedule Details
              </button>
              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                <a class="dropdown-item" href="admin-add-schedule.aspx">Add Schedule</a>
                
                
              </div>
            </div>
          </div>
    
            </div>
    
        




        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OzoneFitnessConnectionString %>" SelectCommand="SELECT * FROM [Schedules]"></asp:SqlDataSource>
    
        




        <asp:GridView ID="GridView1" runat="server" CssClass="table table-borderless" AutoGenerateColumns="False" DataKeyNames="Admin_Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Admin_Id" HeaderText="Admin_Id" InsertVisible="False" ReadOnly="True" SortExpression="Admin_Id" />
                <asp:BoundField DataField="Schedule_Id" HeaderText="Schedule_Id" SortExpression="Schedule_Id" />
                <asp:BoundField DataField="Schedule_name" HeaderText="Schedule_name" SortExpression="Schedule_name" />
                <asp:BoundField DataField="Schedule_type" HeaderText="Schedule_type" SortExpression="Schedule_type" />
                <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />

                <asp:HyperLinkField Text="Edit" DataNavigateUrlFields="Schedule_Id" DataNavigateUrlFormatString="admin-Schedule-update.aspx?Schedule_Id={0}" ControlStyle-CssClass="btn btn-primary">

                    <ControlStyle CssClass="btn btn-primary"></ControlStyle>

                </asp:HyperLinkField>


                <asp:TemplateField>
                    <ItemTemplate>
                  
                         <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#staticBackdrop<%#Eval("Schedule_Id")%>">
                            Delete
                        </button>


                        
                            <div class="modal fade" id="staticBackdrop<%#Eval("Schedule_Id")%>" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
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
                                          <a href="admin-delete-shedule.aspx?Schedule_Id=<%#Eval("Schedule_Id")%>" class="btn btn-danger">Delete Permenantly</a>
                                        </div>
                                    </div>
                                </div>
                            </div>



                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField></asp:TemplateField>
            </Columns>
        </asp:GridView>

        <input type="button" id="btnExport" value="Export" onclick="Export()" class="btn btn-primary" />








         <!--   <table class="table">
                <thead class="thead-dark">
                  <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Category</th>
                    <th scope="col">Gender</th>
                    <th scope="col">Level</th>
                    <th scope="col">Actions</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <th class="index-our" scope="row">001</th>
                    <td><asp:Label ID="Label1" runat="server" Text="Weight loss"></asp:Label></td>
                    <td><asp:Label ID="Label2" runat="server" Text="Male"></asp:Label></td>
                    <td><asp:Label ID="Label3" runat="server" Text="beginner"></asp:Label></td>
                    <td><asp:LinkButton ID="LinkButton1" class="btn btn-primary " runat="server">EDIT</asp:LinkButton>
                        <asp:LinkButton ID="LinkButton2"  class="btn btn-primary" style="margin-left: 10px;" runat="server">DELETE</asp:LinkButton>

                    </td>
                    
                  </tr>
                  <tr>
                    <th class="index-our" scope="row">002</th>
                    <td><asp:Label ID="Label4" runat="server" Text="Weight gain"></asp:Label></td>
                    <td><asp:Label ID="Label5" runat="server" Text="Female"></asp:Label></td>
                    <td><asp:Label ID="Label6" runat="server" Text="beginner"></asp:Label></td>
                      <td><asp:LinkButton ID="LinkButton5" class="btn btn-primary " runat="server">EDIT</asp:LinkButton>
                        <asp:LinkButton ID="LinkButton6"  class="btn btn-primary" style="margin-left: 10px;" runat="server">DELETE</asp:LinkButton>
                    
                  </tr>
                  <tr>
                    <th class="index-our" scope="row">003</th>
                    <td> <asp:Label ID="Label7" runat="server" Text="Weight gain"></asp:Label></td>
                    <td> <asp:Label ID="Label8" runat="server" Text="Male"></asp:Label></td>
                    <td> <asp:Label ID="Label9" runat="server" Text="beginner"></asp:Label></td>
                    <td><asp:LinkButton ID="LinkButton3" class="btn btn-primary " runat="server">EDIT</asp:LinkButton>
                        <asp:LinkButton ID="LinkButton4"  class="btn btn-primary" style="margin-left: 10px;" runat="server">DELETE</asp:LinkButton>
                  </tr>
                </tbody>
              </table>  -->











</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Diets" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="Payment" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="Expencess" runat="server">
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="Gym" runat="server">
</asp:Content>
<asp:Content ID="Content9" ContentPlaceHolderID="booking" runat="server">
</asp:Content>
