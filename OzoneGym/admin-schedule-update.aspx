<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="admin-schedule-update.aspx.cs" Inherits="OzoneFitness.admin_schedule_update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/admin-add-schedule.css" rel="stylesheet" />

    <title>OZONE - Admin Update Shedule</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Customer" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Employee" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="shedule" runat="server">

    <div class="tab-pane fade show active" id="list-shedule" role="tabpanel" aria-labelledby="list-shedule-list">
          <div class="head">
            
             
            <div class="container accdetails">
              <div class="sign">
                  
                      
                      <div class="formreg">
                        <h5>Update Schedule</h5>
                          <div class="tab">
                            <div class="row">
                                <div class="col-md-4">
                                Schedule Name:
                                </div>
                                <div class="col-md-8">
                                
                                    <asp:TextBox ID="schedulen" class="form-control" placeholder="Name" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                Schedule Type:
                                </div>
                                <div class="col-md-8">
                                        <asp:DropDownList ID="DropDownList2" runat="server">
                                        <asp:ListItem ID="ListItem1" Text="Beginner" Value="beginner" runat="server"/>
                                          <asp:ListItem ID="ListItem2"  Text="Mid age" Value="midage" runat="server"/>
                                             <asp:ListItem ID="ListItem3"  Text="Muscle cut" Value="musclecut" runat="server"/>
                                    </asp:DropDownList>
                                </div>
                            </div>

                        <!--   <div class="row">
                                <div class="col-md-4">
                                Image:
                                </div>
                                <div class="col-md-8">
                                <asp:FileUpload ID="FileUpload1" class="form-control" runat="server" />
                                </div>
                            </div> -->

                            <div class="row">
                                <div class="col-md-4">
                                Description:
                                </div>
                                <div class="col-md-8">
                                    <asp:TextBox ID="TextBox1" class="form-control" placeholder="Description"
                                        runat="server"></asp:TextBox>
                                
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-4">
                                Gender:
                                </div>
                                <div class="col-md-8">
                                    <asp:DropDownList ID="DropDownList1" runat="server">
                                        <asp:ListItem ID="male" Text="Male" Value="male" runat="server"/>
                                            <asp:ListItem ID="female"  Text="Female" Value="female" runat="server"/>
                                    </asp:DropDownList>

                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-4">
                                
                                </div>
                                <div class="col-md-8">
                                    <div class="btnsch">
                                        
                                        <asp:Button ID="submit"  class="btn btn-primary" runat="server" Text="Confirm" OnClick="submit_Click" />
                                    </div>
                                </div>
                            </div>
                            


                            

                            
                            
                        </div>
                      </div>
                   
                  </div>
          
              </div>
          
          </div>

            
          </div>

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
