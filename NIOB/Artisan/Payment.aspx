<%@ Page Title="" Language="C#" MasterPageFile="~/Artisan/Artisan.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="NIOB.Artisan.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>NIOB - Payment</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table table-striped">
  <thead>
    <tr>
      <th>#</th>
      <th>Payment Items</th>
      <th>Amount (Naira)</th>
      
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row"><input type="checkbox" /></th>
      <td>NIOB Registration form</td>
      <td>N500.00</td>
     
    </tr>
    <tr>
      <th scope="row"><input type="checkbox" /></th>
      <td>Non-Refundable Registration Fees</td>
      <td>N20,000.00</td>
     
    </tr>
    <tr>
      <th scope="row"><input type="checkbox" /></th>
      <td>Other Payments</td>
      <td>N500.00</td>
     
    </tr>

       <tr>
      <th scope="row"></th>
      <td>Total </td>
      <td></td>
     
    </tr>
  </tbody>
</table> 
    <div class="center"><input type="button" class="btn btn-success" value="Proceed to Payment" /></div>
</asp:Content>
