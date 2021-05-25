<%@ Page Title="" Language="C#" MasterPageFile="~/headerFooter.Master" AutoEventWireup="true" CodeBehind="edit-cart.aspx.cs" Inherits="OzoneFitness.edit_cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/user-shop.css" rel="stylesheet" />

    <title>OZONE | Cart</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="outer">

        <div class="shop-content">
            <div class="shop">

                <div class="shop-name">

                    <h3>Shop</h3>

                </div>

                <div class="items-oz">
                    <div class="card text-center">
                        <h5 class="card-header">
                            <asp:Label ID="ItemName" runat="server" Text="Label"></asp:Label>
                            
                        </h5>

                        <div class="card-body">
                            <h5 class="card-title">
                                <asp:Label ID="price" runat="server" Text="Label"></asp:Label>
                            
                            </h5>
                            <p class="card-text"><asp:Label ID="desc" runat="server" Text="Label"></asp:Label></p>
                            <div>
                                <asp:Label ID="available" runat="server" Text="Available Quanity"></asp:Label>
                                <asp:TextBox CssClass="form-control" ID="qty" runat="server"></asp:TextBox>
                            </div>
                            
                            <asp:Button ID="updateItem" class="btn btn-primary" runat="server" Text="Update Item" OnClick="updateItem_Click"/>
                            
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</asp:Content>
