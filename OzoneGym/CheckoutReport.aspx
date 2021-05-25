<%@ Page Title="" Language="C#" MasterPageFile="~/headerFooter.Master" AutoEventWireup="true" CodeBehind="CheckoutReport.aspx.cs" Inherits="OzoneFitness.CheckoutReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/checkoutReport.css" rel="stylesheet" />

    <title>OZONE - Checkout Report</title>

    <script src="js/html2canvas.min.js"></script>
    <script src="js/pdfmake.min.js"></script>
    <script type="text/javascript">
        function Export() {
            html2canvas(document.getElementById('checkout_GridView1'), {
                onrendered: function (canvas) {
                    var data = canvas.toDataURL();
                    var docDefinition = {
                        content: [{
                            image: data,
                            width: 500
                        }]
                    };
                    pdfMake.createPdf(docDefinition).download("AdmitCard.pdf");
                    alert("Admit Card Downloading Started");
                }
            });
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="tab-pane fade show active" id="list-expencess" role="tabpanel" aria-labelledby="list-expencess-list">
            <div class="head">
                <h3>Checkout Details</h3>

                <div class="dropdown">
                    <button class="btn dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Checkout Details
                    </button>
                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                        <a class="dropdown-item" href="#">Add Diet</a>
                        <a class="dropdown-item" href="#">Diet Reservations</a>
                    </div>
                </div>
            </div>

        

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" GridLines="None" DataSourceID="SqlDataSource1" CssClass="table table-responsive-lg" DataKeyNames="checkout_ID">
                <Columns>
                    <asp:BoundField DataField="checkout_ID" HeaderText="checkout_ID" InsertVisible="False" ReadOnly="True" SortExpression="checkout_ID" />
                    <asp:BoundField DataField="customer_name" HeaderText="customer_name" SortExpression="customer_name" />
                    <asp:BoundField DataField="phone_no" HeaderText="phone_no" SortExpression="phone_no" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                    <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />

                    <asp:HyperLinkField Text="Edit" DataNavigateUrlFields="checkout_ID" DataNavigateUrlFormatString="edit-checkout.aspx?checkout_ID={0}" ControlStyle-CssClass="btn btn-primary">

                    <ControlStyle CssClass="btn btn-primary"></ControlStyle>

                </asp:HyperLinkField>

                

                <asp:TemplateField>
                    <ItemTemplate>

                        <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#staticBackdrop<%#Eval("checkout_ID")%>">
                            Delete
                        </button>


                        
                            <div class="modal fade" id="staticBackdrop<%#Eval("checkout_ID")%>" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
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
                                            <a href="delete-checkout.aspx?checkout_ID=<%#Eval("checkout_ID")%>" class="btn btn-danger">Delete Permenantly</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        
                    </ItemTemplate>
                </asp:TemplateField>

                </Columns>

            <HeaderStyle CssClass="thead-dark" />
            </asp:GridView>

        <input type="button" id="btnExport" value="Export" onclick="Export()" class="auto-style5" />

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OzoneFitnessConnectionString %>" SelectCommand="SELECT * FROM [checkout]"></asp:SqlDataSource>
        </div>
</asp:Content>
