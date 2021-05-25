<%@ Page Title="" Language="C#" MasterPageFile="~/headerFooter.Master" AutoEventWireup="true" CodeBehind="shop.aspx.cs" Inherits="OzoneFitness.shop" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/user-shop.css" rel="stylesheet" />

    <title>OZONE | Online Shop</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="outer">

        <div class="shop-content">
            <div class="shop">

                <div class="shop-name">

                    <h3>Shop</h3>

                </div>

                <div class="items-oz">
                    <asp:ListView ID="ListView1" runat="server">
                        <ItemTemplate>

                            <div class="item-center">
                                <div class="card text-center" style="width: 18rem;">
                                    <img src="<%# Eval("img")%>" class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title"><%# Eval("name")%></h5>
                                        <p class="card-text"><%# Eval("idesc")%></p>
                                        <asp:Label ID="itemId" runat="server" Text='<%# Eval("ItemID")%>' Visible="False"></asp:Label>
                                                                                
                                        <a href="addToCart.aspx?ItemID=<%# Eval("ItemID")%>" class="btn btn-primary">Add to cart</a>
                                        
                                    </div>
                                </div>
                            </div>

                        </ItemTemplate>
                    </asp:ListView>
                </div>

            </div>
        </div>
    </div>

</asp:Content>
