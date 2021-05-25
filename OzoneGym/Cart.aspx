<%@ Page Title="" Language="C#" MasterPageFile="~/headerFooter.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="OzoneFitness.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/user-shop.css" rel="stylesheet" />

    <title>OZONE | Cart</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="outer ">
      
 <div class="shop-content">
    <div class="shop">

        <div class="shop-name">
               
            <h3>Cart Details</h3>
                    
        </div>

    <div class="items-tble">

        
        <asp:GridView ID="GridView1" CssClass="table table-responsive-lg" runat="server" AutoGenerateColumns="False" DataKeyNames="cart_id" GridLines="None">
            <Columns>
                <asp:BoundField DataField="itemId" HeaderText="Item Id" SortExpression="itemId" />
                <asp:BoundField DataField="quantity" HeaderText="Quantity" SortExpression="quantity" />

                <asp:HyperLinkField Text="Edit" DataNavigateUrlFields="itemId" DataNavigateUrlFormatString="edit-cart.aspx?itemId={0}" ControlStyle-CssClass="btn btn-primary">

                    <ControlStyle CssClass="btn btn-primary"></ControlStyle>

                </asp:HyperLinkField>

                

                <asp:TemplateField>
                    <ItemTemplate>

                        
                        <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#staticBackdrop<%#Eval("cart_id")%>">
                            Delete
                        </button>


                        
                            <div class="modal fade" id="staticBackdrop<%#Eval("cart_id")%>" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
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
                                            <a href="delete-cart-item.aspx?cart_id=<%#Eval("cart_id")%>" class="btn btn-danger">Delete Permenantly</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <HeaderStyle CssClass="thead-dark" />
        </asp:GridView>

        
        
    </div>
        <div class="row">
            <div class="col-md-6">
                      <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Back" />
                  </div>
            <div class="col-md-6">
                <div class="check-btn">
                      <a href="Checkout.aspx" class="btn btn-primary">Checkout</a>
                  </div>
            </div>

        </div>
   </div>
</div> 
       
</div>




</asp:Content>        
