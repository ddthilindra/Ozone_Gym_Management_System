<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="admin-additional-exp.aspx.cs" Inherits="OzoneFitness.admin_additional_exp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="css/admin-additional-exp.css" rel="stylesheet" />

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


        <div class="tab-pane fade show active" id="list-expencess" role="tabpanel" aria-labelledby="list-expencess-list">
          <div class="head">

            <div class="container accdetails">
              <div class="sign">
                  
                      <div class="formreg">
                        <h2>Additional Expencess</h2>
                          <div class="tab">
                            <div class="row">
                                <div class="col-md-4">
                                  Date
                                </div>
                                <div class="col-md-8">
                                  
                                    <asp:TextBox CssClass="form-control" ID="adexDate" TextMode="Date" runat="server" required/>
                                </div>
                            </div>

                               <div class="row">
                                <div class="col-md-4">
                                  Water Bill
                                </div>
                                <div class="col-md-8">
                                  
                                    <asp:TextBox ID="adexWaterbill" placeholder="Rs." runat="server" TextMode="Number" required/>
                                </div>
                            </div>

                               <div class="row">
                                <div class="col-md-4">
                                  Electricity Bill
                                </div>
                                <div class="col-md-8">
                                   
                                    <asp:TextBox ID="adexEbill" placeholder="Rs." runat="server" TextMode="Number" required/>
                                </div>
                            </div>
                               <div class="row">
                                <div class="col-md-4">
                                  Monthly Repairs
                                </div>
                                <div class="col-md-8">
                                   
                                    <asp:TextBox ID="adexMonthlyR" placeholder="Rs." runat="server" TextMode="Number" required/>
                                </div>
                            </div>
                            
                          


                            <div class="row">
                               
                                <div class="col">
                                        <div class="btndeit">
                                             
                                            <asp:Button ID="addExp" class="btn btn-primary" runat="server" Text="ADD" OnClick="addExp_Click" />
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
<asp:Content ID="Content7" ContentPlaceHolderID="Gym" runat="server">
</asp:Content>
