<%@ Page Title="" Language="C#" MasterPageFile="~/Artisan/Artisan.Master" AutoEventWireup="true" CodeBehind="MyTrainings.aspx.cs" Inherits="NIOB.Artisan.MyTrainings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>NIOB - My Trainings</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    
    <div class="container">
  <h2><b>My Training</b></h2>
        <br />
       <a class="btn btn-md btn-success pull-right" href="AvailableTrainings.aspx"> <b>AVAILABLE TRAININGS</b></a><br />
 

  <ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#home"><b>All</b></a></li>
    <li><a data-toggle="tab" href="#menu1"><b>ONGOING</b></a></li>
    <li><a data-toggle="tab" href="#menu2"><b>COMPLETED</b></a></li>
    <li><a data-toggle="tab" href="#menu3"><b>PENDING</b></a></li>
    <li><a data-toggle="tab" href="#menu4"><b>APPROVED</b></a></li>
  </ul>

  <div class="tab-content" >
    <div id="home" class="tab-pane fade in active">
      <%--<h3>ALL</h3>--%>
      <br />
        <%--<div class="container">--%>
            <table class="table table-condensed table-hover table-responsive">
                <tr>
                    <th><b>ID</b></th>
                    <th><b>Title</b></th>
                    <th><b>Description</b></th>
                     <th><b>Venue</b></th>
                    <th><b>Duration</b></th>
                    <th><b>Start Date</b></th>
                    <th><b>Status</b></th>
                </tr>

                <tr>
                    <td>007</td>
                    <td>Building Construction</td>
                    <td>Guidelines to Building plan and Architecture Module 1</td>
                    <td>Festac Town</td>
                    <td>5 Days</td>
                    <td>14th July, 2017</td>
                    <td><b style="color:green">COMPLETED</b></td>
                </tr>
                <tr>
                    <td>012</td>
                    <td>Building Construction</td>
                    <td>Guidelines to Building plan and Architecture Module 2</td>
                    <td>Festac Town</td>
                    <td>5 Days</td>
                    <td>23rd August, 2017</td>
                    <td><b style="color:orange">ONGOING</b></td>
                </tr>
                <tr>
                    <td>007</td>
                    <td>Building Construction</td>
                    <td>Guidelines to Building plan and Architecture Module 1</td>
                    <td>Festac Town</td>
                    <td>5 Days</td>
                    <td>14th August, 2017</td>
                    <td><b style="color:red">PENDING</b></td>
                </tr>
                 <tr>
                    <td>007</td>
                    <td>Building Construction</td>
                    <td>Guidelines to Building plan and Architecture Module 1</td>
                    <td>Festac Town</td>
                    <td>5 Days</td>
                    <td>14th August, 2017</td>
                    <td><b style="color:blue">APPROVED</b></td>
                </tr>
            </table>
       <%-- </div>--%>
    </div>



    <div id="menu1" class="tab-pane fade">
    <%--  <h3>ONGOING</h3>--%>
        <br />
            <table class="table table-condensed table-hover table-responsive">
                <tr>
                    <th><b>ID</b></th>
                    <th><b>Title</b></th>
                    <th><b>Description</b></th>
                    <th><b>Duration</b></th>
                    <th><b>Start Date</b></th>
                    <th><b>Status</b></th>
                </tr>

                <tr>
                    <td>012</td>
                    <td>Building Construction</td>
                    <td>Guidelines to Building plan and Architecture Module 2</td>
                    <td>5 Days</td>
                    <td>14th August, 2017</td>
                    <td><b style="color:orange">ONGOING</b></td>
                </tr>
            </table>
    </div>



    <div id="menu2" class="tab-pane fade">
      <%--<h3>COMPLETED</h3>--%>
        <br />
       
            <table class="table table-condensed table-hover table-responsive">
                <tr>
                    <th><b>ID</b></th>
                    <th><b>Title</b></th>
                    <th><b>Description</b></th>
                    <th><b>Duration</b></th>
                    <th><b>Start Date</b></th>
                    <th><b>Status</b></th>
                </tr>

                <tr>
                    <td>007</td>
                    <td>Building Construction</td>
                    <td>Guidelines to Building plan and Architecture Module 1</td>
                    <td>5 Days</td>
                    <td>14th August, 2017</td>
                    <td><b style="color:green">COMPLETED</b></td>
                </tr>
            </table>
    </div>

         <div id="menu3" class="tab-pane fade">
      <%--<h3>COMPLETED</h3>--%>
        <br />
       
            <table class="table table-condensed table-hover table-responsive">
                <tr>
                    <th><b>ID</b></th>
                    <th><b>Title</b></th>
                    <th><b>Description</b></th>
                    <th><b>Duration</b></th>
                    <th><b>Start Date</b></th>
                    <th><b>Status</b></th>
                </tr>

                <tr>
                    <td>007</td>
                    <td>Building Construction</td>
                    <td>Guidelines to Building plan and Architecture Module 1</td>
                    <td>5 Days</td>
                    <td>14th August, 2017</td>
                    <td><b style="color:red">PENDING</b></td>
                </tr>
            </table>
    </div>

         <div id="menu4" class="tab-pane fade">
      <%--<h3>COMPLETED</h3>--%>
        <br />
       
            <table class="table table-condensed table-hover table-responsive">
                <tr>
                    <th><b>ID</b></th>
                    <th><b>Title</b></th>
                    <th><b>Description</b></th>
                    <th><b>Duration</b></th>
                    <th><b>Start Date</b></th>
                    <th><b>Status</b></th>
                </tr>

                <tr>
                    <td>007</td>
                    <td>Building Construction</td>
                    <td>Guidelines to Building plan and Architecture Module 1</td>
                    <td>5 Days</td>
                    <td>14th August, 2017</td>
                    <td><b style="color:blue">APPROVED</b></td>
                </tr>
            </table>
    </div>




  </div>
</div>










</asp:Content>
