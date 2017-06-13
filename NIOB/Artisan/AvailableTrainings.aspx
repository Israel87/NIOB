<%@ Page Title="" Language="C#" MasterPageFile="~/Artisan/Artisan.Master" AutoEventWireup="true" CodeBehind="AvailableTrainings.aspx.cs" Inherits="NIOB.Artisan.AvailableTrainings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>NIOB - Available Trainings</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> <br />  
    <h3><b style="padding-left:100px">Available Trainings</b> </h3>  
    

    <div class="container">
        <a class="btn btn-md btn-success pull-right" href="MyTrainings.aspx"> <b>BACK TO MY TRAININGS</b></a><br /><br /><br /><br />
     <table class="table table-condensed table-hover table-responsive">
                <tr>
                    <th><b>ID</b></th>
                    <th><b>Title</b></th>
                    <th><b>Description</b></th>
                     <th><b>Venue</b></th>
                    <th><b>Duration</b></th>
                    <th><b>Start Date</b></th>
                    <th><b></b></th>
                </tr>

                <tr>
                    <td>007</td>
                    <td>Building Construction</td>
                    <td>Guidelines to Building plan and Architecture Module 1</td>
                    <td>Festac Town</td>
                    <td>5 Days</td>
                    <td>14th July, 2017</td>
                    <td><a href="#" class="btn btn-success"> <b>APPLY</b></a></td>
                </tr>
                <tr>
                    <td>012</td>
                    <td>Building Construction</td>
                    <td>Guidelines to Building plan and Architecture Module 2</td>
                    <td>Festac Town</td>
                    <td>5 Days</td>
                    <td>23rd August, 2017</td>
                    <td><a href="#" class="btn btn-success"><b>APPLY</b> </a></td>
                </tr>
                <tr>
                    <td>007</td>
                    <td>Building Construction</td>
                    <td>Guidelines to Building plan and Architecture Module 1</td>
                    <td>Festac Town</td>
                    <td>5 Days</td>
                    <td>14th August, 2017</td>
                    <td><a href="#" class="btn btn-success"><b>APPLY</b> </a></td>
                </tr>
                 <tr>
                    <td>007</td>
                    <td>Building Construction</td>
                    <td>Guidelines to Building plan and Architecture Module 1</td>
                    <td>Festac Town</td>
                    <td>5 Days</td>
                    <td>14th August, 2017</td>
                    <td><a href="#" class="btn btn-success"><b>APPLY</b> </a></td>
                </tr>
            </table>
        </div>
</asp:Content>
