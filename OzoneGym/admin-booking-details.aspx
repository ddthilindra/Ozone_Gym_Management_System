<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="admin-booking-details.aspx.cs" Inherits="OzoneFitness.admin_booking_details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="css/admin-booking-details.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Customer" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Employee" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Diets" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Payment" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="Expencess" runat="server">

      <div class="tab-pane fade show active" id="list-booking" role="tabpanel" aria-labelledby="list-booking-list">
        <div class="head">
            <h3>Booking Details</h3>

           
        </div>

    </div>


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OzoneFitnessConnectionString %>" SelectCommand="SELECT * FROM [BookingO]"></asp:SqlDataSource>


        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="BookingID">
            <Columns>
                <asp:BoundField DataField="BookingID" HeaderText="BookingID" SortExpression="BookingID" InsertVisible="False" ReadOnly="True" />
                <asp:BoundField DataField="CID" HeaderText="CID" SortExpression="CID" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                <asp:BoundField DataField="Time_from" HeaderText="Time_from" SortExpression="Time_from" />
                <asp:BoundField DataField="Time_to" HeaderText="Time_to" SortExpression="Time_to" />
                <asp:BoundField DataField="Shedule_Type" HeaderText="Shedule_Type" SortExpression="Shedule_Type" />
                <asp:BoundField DataField="Trainer" HeaderText="Trainer" SortExpression="Trainer" />
            </Columns>
        </asp:GridView>














    <!--<table class="table">
        <thead class="thead-dark">
            <tr>
                <th scope="col">ID</th>
                <th scope="col">Name</th>
                <th scope="col">Date</th>
                <th scope="col">Time Duration</th>
                <th scope="col">Shedule Type</th>
                <th scope="col">Trainer</th>
                <th scope="col">Actions</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <th class="index-our" scope="row">1</th>
               <td><asp:Label ID="bdName" runat="server" Text="Dilina Dakshila"></asp:Label></td>
                <td><asp:Label ID="bdDate" runat="server" Text="20/02/2020"></asp:Label></td>
                <td><asp:Label ID="bdTimeD" runat="server" Text="2"></asp:Label></td>
                <td><asp:Label ID="bdSheduleT" runat="server" Text=" Muscle bulding"></asp:Label></td>
                <td><asp:Label ID="bdTrainer" runat="server" Text="Sandun Harshana"></asp:Label></td>
                <td>
                    <asp:LinkButton class="btn btn-primary " ID="bookingEdit" runat="server">EDIT</asp:LinkButton>
                    <asp:LinkButton style="margin-left: 10px;" class="btn btn-primary " ID="bookingDelete" runat="server">DELETE</asp:LinkButton>

                </td>

            </tr>
            <tr>
                <th class="index-our" scope="row">2</th>
                <td>Jacob</td>
                <td>Thornton</td>
                <td>@fat</td>
                <td>@fat</td>
                <td>@fat</td>
                <td></td>
            </tr>
            <tr>
                <th class="index-our" scope="row">3</th>
                <td>Larry</td>
                <td>the Bird</td>
                <td>@twitter</td>
                <td>@twitter</td>
                <td>@twitter</td>
                <td></td>
            </tr>
        </tbody>
    </table>-->

    



</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="Gym" runat="server">
</asp:Content>

