<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Artisan.aspx.cs" Inherits="NIOB.Register.Artisan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>NIOB - Welcome to the Nigeria Institute of Building</title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../Content/bootstrap-responsive.min.css" rel="stylesheet" />
    <link href="../Content/preview.min.css" rel="stylesheet" />
    <link href="../Content/font-awesome.min.css" rel="stylesheet" />
    <link href="../Content/Site.css" rel="stylesheet" />

    <link href='http://fonts.googleapis.com/css?family=PT+Sans:400,700' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />

    <script src="../Scripts/jquery-1.10.2.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/main.js"></script>
</head>

<body>
    <div id="body_content">
        <center>
     <div class="logo">           
            <img  src="../Content/images/logo.jpeg" width="120px" height="85px" style="margin-bottom: 0;"/>            
           <h2 class="greentext" style="margin-top: 0;">Welcome to the Nigeria Institute of Building</h2>
        </div>
        <br /> 
        <h4 class="greentext" style="margin-bottom: 0;">Artisan Registration</h4><br />   
            <p id="error_lbl"></p>        
    </center>
    <div class="container well">
        <div class="row-fluid">
                <ul class="nav nav-tabs col-md-10 col-md-offset-1" id="mytabs">
                    <li class="active"><a href="#tab1" id="pdata_tab" data-toggle="tab">Personal Data</a></li>
                    <li><a href="#tab2" id="edu_tab" data-toggle="tab">Education</a></li>
                    <li><a href="#tab3" id="cjob_tab" data-toggle="tab">Current Job</a></li>
                    <li><a href="#tab4" id="pjob_tab" data-toggle="tab">Previous Jobs</a></li>
                    <li><a href="#tab5" id="summary_tab" data-toggle="tab">Summary</a></li>
                </ul>
            </div>
            <div class="row-fluid">
            <form runat="server" method="post">
                <div class="tab-content col-md-10 col-md-offset-1" style="color: #004000;">
                    <!-- Tab 1 -->

                    <div class="tab-pane active" id="tab1">
                    
                            <div class="row-fluid">
                        
                                    <h4 class="tab-headertext greentext">Personal Data</h4>
                                    <br />
                                    <div class="col-md-5">
                                        <label id="lbl_title">Title <span style="color: red; font-style: italic; text-align: right">*</span></label>

                                        <select class="form-control" id="title" name="title" runat="server" required="required">
                                            <option></option>
                                            <option value="MR">Mr</option>
                                            <option value="MRS">Mrs</option>
                                            <option value="MISS">Miss</option>
                                            <option value="MASTER">Master</option>
                                        </select><br/>
                                        <label id="lbl_firstname">First Name<span style="color: red; font-style: italic; text-align: right">*</span> </label>
                                        <input type="text" name="firstname" id="firstname" class="form-control" runat="server" style="text-transform: uppercase;" required="required" /><br/>
                                        <label id="lbl_lastname">Last Name<span style="color: red; font-style: italic; text-align: right">*</span> </label>
                                        <input type="text" name="lastName" id="lastname" class="form-control" runat="server" style="text-transform: uppercase;" /><br/> 
                                        <label id="lbl_gender">Gender<span style="color: red; font-style: italic; text-align: right">*</span> </label>
                                        <select class="form-control" id="gender" name="gender" runat="server" required="required">
                                            <option></option>
                                            <option value="F">Female</option>
                                            <option value="M">Male</option>
                                        </select><br/>
                                        <label id="lbl_dob">Date of Birth<span style="color: red; font-style: italic; text-align: right">*</span></label>
                                        <input type="date" name="dob" id="dob" class="form-control" required="required" /><br />    
                                         <label id="lbl_phoneNo">Mobile Phone<span style="color: red; font-style: italic; text-align: right">*</span> </label>
                                        <input type="text" name="phoneNo" id="phoneNo" class="form-control _numberInput" runat="server" required="required" /><br />
                                        <label id="lbl_email">Email Address <span style="color: red; font-style: italic; text-align: right">*</span></label>
                                        <input type="email" class="form-control" name="email" id="email" runat="server" required="required" /><br/>                                    
                                    </div>
                                    <div class="col-md-5">
                                        <label id="lbl_username">Username<span style="color: red; font-style: italic; text-align: right">*</span> </label>
                                        <input type="text" name="username" id="username" class="form-control" runat="server" required="required" /><br/>

                                        <label id="lbl_password">Password<span style="color: red; font-style: italic; text-align: right">*</span> </label>
                                        <input type="password" name="password" id="password" class="form-control" runat="server" required="required" /><br/>

                                        <label id="lbl_confirmpassword">Confirm Password<span style="color: red; font-style: italic; text-align: right">*</span> </label>
                                        <input type="password" name="confirmpassword" id="confirmpassword" class="form-control" runat="server" required="required" /><br/>
                                        <label>Residential Address </label>
                                        <textarea class="form-control" name="houseAddress" id="houseAddress" rows="4" style="margin-bottom: 15px; text-transform: uppercase; resize: none;" runat="server"></textarea><br/>
                                        <label>State of Origin </label>
                                        <select class="form-control" id="state" name="state" runat="server">
                                        </select><br/>

                                        <label>LGA </label>
                                        <select class="form-control" id="lga" name="lga" runat="server">
                                        </select><br/>
                                    </div>
                                    <div class="col-md-2">
                                    <label id="lbl_photo">Photograph <span style="color: red; font-style: italic; text-align: right">*</span></label>

                                        <img id="blahh" name="Photograph" runat="server" style="height: 120px; width: 100%; margin-top: 15px" />

                                        <br />
                                        <input type="file" name="selectedFile" id="photo" style="display: none;" accept="image/jpg, image/jpeg" multiple="multiple" runat="server" required="required" /><br />
                                        <center>
                                            <input type="button" class="btn btn-default custom-btn" value="Upload Photo" onclick="document.getElementById('photo').click();" />
                                        </center> 
                                        <br />
                                </div>
                            </div>
                            <div class="row" style="margin-top: 20px; margin-bottom: 20px;">
                                <center>

                                     <a class="btn btn-primary custom-btn" onclick="document.getElementById('edu_tab').click();">Next &raquo;</a>

                                </center>                               
                            </div>
                    </div>
                    <!-- Tab 1 End -->
                    <!-- Tab 2 -->
                    <div class="tab-pane" id="tab2">
                        <div class="row-fluid">
                             <h4 class="tab-headertext greentext">Education</h4>
                        <br />
                            <div class="col-md-4">
                                <label>Primary School</label>
                                <input type="text" name="primary" id="primary" class="form-control" runat="server" style="text-transform: uppercase;" /><br />
                                <label>Secondary School</label>
                                <input type="text" name="secondary" id="secondary" class="form-control" runat="server" style="text-transform: uppercase;" /><br />
                                <label>Technical/NVQ</label>
                                <input type="text" name="technical" id="technical" class="form-control" runat="server" style="text-transform: uppercase;" /><br />
                                <label>Tertiary School</label>
                                <input type="text" name="tertiary" id="tertiary" class="form-control" runat="server" style="text-transform: uppercase;" /><br />
                            </div>
                            <div class="col-md-4">
                                <label>Primary Certificate Obtained </label>
                                <select class="form-control" id="primaryCert" name="primarycert" runat="server">
                                    <option>ND</option>
                                    <option>HND</option>
                                    <option>BSc</option>
                                </select>    <br />
                                <label>Secondary Certificate Obtained </label>
                                <select class="form-control" id="secondaryCert" name="secondarycert" runat="server">
                                    <option>ND</option>
                                    <option>HND</option>
                                    <option>BSc</option>
                                </select><br /> 
                                <label>Technical Certificate Obtained </label>
                                <select class="form-control" id="technicalCert" name="technicalcert" runat="server">
                                    <option>ND</option>
                                    <option>HND</option>
                                    <option>BSc</option>
                                </select><br />
                                <label>Tertiary Certificate Obtained </label>
                                <select class="form-control" id="tertiaryCert" name="tertiarycert" runat="server">
                                    <option>ND</option>
                                    <option>HND</option>
                                    <option>BSc</option>
                                </select><br /> 
                            </div>
                            <div class="col-md-4">
                                <div>
                                    <label>Upload Primary Certificate</label>
                                    <input type="text" name="Certificate" id="primarycertUpload" style="display:inline" class="custom-form-control" runat="server"/>
                                    <input type="file" name="selectedFile2" id="selectedFile2" style="display: none;" accept="image/jpg, image/jpeg, file/pdf" runat="server" required="required" />
                                    <input type="button" class="btn btn-default custom-btn" value="Upload" style="display:inline" onclick="document.getElementById('selectedFile2').click();" />
                                </div>
                                <br />
                                <div>
                                    <label>Upload Secondary Certificate</label>
                                    <input type="text" name="Certificate" id="secondarycertUpload" style="display:inline" class="custom-form-control" runat="server"/>
                                    <input type="file" name="selectedFile3" id="selectedFile3" style="display: none;" accept="image/jpg, image/jpeg, file/pdf" runat="server" required="required" />
                                    <input type="button" class="btn btn-default custom-btn" value="Upload" style="display:inline" onclick="document.getElementById('selectedFile3').click();" />
                                </div>
                                <br />
                                <div>
                                    <label>Upload Technical Certificate</label>
                                    <input type="text" name="Certificate" id="technicalcertUpload" style="display:inline" class="custom-form-control" runat="server"/>
                                    <input type="file" name="selectedFile4" id="selectedFile4" style="display: none;" accept="image/jpg, image/jpeg, file/pdf" runat="server" required="required" />
                                    <input type="button" class="btn btn-default custom-btn" value="Upload" style="display:inline" onclick="document.getElementById('selectedFile4').click();" />
                                </div>
                                <br />
                                <div>
                                    <label>Upload Tertiary Certificate</label>
                                    <input type="text" name="Certificate" id="tertiarycertUpload" style="display:inline" class="custom-form-control" runat="server"/>
                                    <input type="file" name="selectedFile5" id="selectedFile5" style="display: none;" accept="image/jpg, image/jpeg, file/pdf" runat="server" required="required" />
                                    <input type="button" class="btn btn-default custom-btn" value="Upload" style="display:inline" onclick="document.getElementById('selectedFile5').click();" />
                                </div>
                                <br />
                                
                            </div>
                        </div>

                        <div class="row-fluid">
                            <h4 class="tab-headertext greentext">Membership of Other Trade Associations </h4>
                            <br />
                            <div class="row-fluid">
                                 
                            </div>    
                            <div class="row-fluid">
                                 <div class="col-md-4">
                                    <label>Name of Trade Association </label>
                                    <input type="text" name="associationname" id="associationname" class="form-control " runat="server" />
                                    <br />
                                </div>
                                <div class="col-md-4">
                                    <label>Position Held </label>
                                    <input type="text" name="positionheld" id="positionheld" maxlength="14" minlength="11" class="form-control" runat="server" />
                                    <br />
                                </div>
                                <div class="col-md-4">
                                    <label id="lbl_doa2">Date Joined</label>
                                    <input type="date" name="assodatejoined" id="assodatejoined" class="form-control" required="required" />
                                    <br />
                                </div>
                            </div>                        
                        </div>                        
                        <div class="row" style="margin-top: 20px; margin-bottom: 20px; ">
                            <center>
                                <a class="btn btn-primary custom-btn" style="margin-top: 20px; display:inline" onclick="document.getElementById('pdata_tab').click();"> &laquo; Back</a> &nbsp;
                                <a class="btn btn-primary custom-btn" style="margin-top: 20px; display:inline" onclick="document.getElementById('cjob_tab').click();">Next &raquo;</a>
                            </center>                               
                        </div>                         
                    </div>      
                    
                    <!-- Tab 2 End -->
                    <!-- Tab 3-->
                    <div class="tab-pane" id="tab3">
                        <div class="row-fluid">
                            <h4 class="tab-headertext greentext">Current Job </h4>
                            <br />
                            <div class="col-md-4">
                                    <label>Title/ Designation </label>
                                    <input type="text" name="designation" id="designation" class="form-control " runat="server" />
                                    <br />
                                    <label>Scope of Responsibility </label>
                                   <textarea class="form-control" name="scopeofresp" id="scopeofresp" rows="4" style="margin-bottom: 15px; text-transform: uppercase; resize: none;" runat="server"></textarea><br/>
                                    <br />
                                </div>
                                <div class="col-md-4">
                                    <label>Employer Name/ Project Name </label>
                                    <input type="text" name="employername" id="employername" class="form-control " runat="server" />
                                    <br />
                                    <label>Address </label>
                                   <textarea class="form-control" name="employeraddress" id="employeraddress" rows="4" style="margin-bottom: 15px; text-transform: uppercase; resize: none;" runat="server"></textarea><br/>
                                    <br />
                                </div>
                                <div class="col-md-4">
                                    <label id="lbl_doa">Appointment Date</label>
                                    <input type="date" name="appointmentdate" id="appointmentdate" class="form-control" required="required" />
                                    <br />
                                </div>                    
                        </div>                        
                        <div class="row" style="margin-top: 20px; margin-bottom: 20px; ">
                            <center>
                                <a class="btn btn-primary custom-btn" style="display:inline"  onclick="document.getElementById('edu_tab').click();" > &laquo; Back</a> &nbsp;
                                <a class="btn btn-primary custom-btn" style="display:inline" onclick="document.getElementById('pjob_tab').click();">Next &raquo;</a>
                            </center>                               
                        </div>                         
                    </div> 
                    <!-- Tab 3 End-->
                    <!-- Tab 4 -->
                    <div class="tab-pane" id="tab4">
                        <div class="row-fluid">
                            <h4 class="tab-headertext greentext">Previous Jobs </h4>
                            <br />
                            <div id="prev_employmentlist">
                                <div class="previousjobs">
                                    <div class="col-md-4">
                                        <label>Employer Name/ Project Name </label>
                                        <input type="text" name="prev_employername" id="prev_employername" class="form-control " runat="server" />
                                        <br />
                                    </div>
                                    <div class="col-md-3">
                                        <label>From </label>
                                        <input type="date" name="datefrom" id="datefrom" class="form-control" required="required" />
                                        <br />
                                    </div>
                                    <div class="col-md-3">
                                        <label>To </label>
                                        <input type="date" name="dateto" id="dateto" class="form-control" required="required" />
                                        <br />
                                    </div>     
                                    <div class="col-md-2">
                                    <label></label>
                                    <div style="margin-top: 10px;">
                                        <a class="btn btn-info custom-btn add-button" style="display:inline"> &plus; Add More </a>
                                        <%--<a class="btn btn-danger custom-btn delete-button" style="display:inline"> &times; Del</a>--%>
                                    </div>                                    
                                </div>  
                                </div>  
                            </div>           
                        </div>                        
                        <div class="row" style="margin-top: 40px; margin-bottom: 20px; ">
                            <center>
                                <a class="btn btn-primary custom-btn" style="margin-top: 20px; display:inline" onclick="document.getElementById('cjob_tab').click();"> &laquo; Back</a> &nbsp;
                                <a class="btn btn-primary custom-btn" style="margin-top: 20px; display:inline" onclick="document.getElementById('summary_tab').click();">Preview &raquo;</a>
                            </center>                               
                        </div>                         
                    </div> 
                    <!-- Tab 4 End -->
                    <!-- Tab 5 -->
                    <div class="tab-pane" id="tab5">
                        <h4 class="tab-headertext greentext">Summary</h4>
                        <br />
                        <div class="row-fluid">
                            <div class="col-md-6">
                                <h4>Personal Data</h4>

                   <table class="panel-body">    
                        <tr>
                         <td><label >Title:&nbsp;</label> </td>
                         <td><label runat="server"></label></td>
                         </tr>

                        
                         <tr>
<td>
                          <label>Firstname:&nbsp;</label></td>
                        <td>  <label  runat="server"></label>
</td>
                          </tr>

                          <tr>
                          <td><label >Lastname:&nbsp;</label></td>
                          <td><label runat="server"></label>
                          </td>
                          </tr>

                           <tr>
                          <td><label >Gender:&nbsp;</label></td>
                          <td><label runat="server"></label>
                          </td>
                          </tr>


                           <tr>
                          <td><label >Date of Birth:&nbsp;</label></td>
                          <td><label runat="server"></label>
                          </td>
                          </tr>

                           <tr>
                          <td><label >Mobile Phone:&nbsp;</label></td>
                          <td><label runat="server"></label>
                          </td>
                          </tr>

                           <tr>
                          <td><label >Email Address:&nbsp;</label></td>
                          <td><label runat="server"></label>
                          </td>
                          </tr>

                           <tr>

                          <td><label >Username:&nbsp;</label></td>
                          <td><label runat="server"></label>
                          </td>
                          </tr>

                           <tr>
                          <td><label >Residential Address:&nbsp;</label></td>
                          <td><label runat="server"></label>
                          </td>
                          </tr>

                           <tr>
                          <td><label >State of Origin:&nbsp;</label></td>
                          <td><label runat="server"></label>
                          </td>
                          </tr>

                           <tr>
                          <td><label > LGA:&nbsp;</label></td>
                          <td><label runat="server"></label>
                          </td>
                          </tr>
                            </table><br/>
                            </div>
                            <div class="col-md-6">
                                <h4>Education</h4>

                   <table class="panel-body">    
                        <tr>
                         <td><label >Primary School:&nbsp;</label> </td>
                         <td><label runat="server"></label></td>
                         </tr>

                        
                         <tr>
<td>
                          <label>Certificate Obtained:&nbsp;</label></td>

                        <td>  <label  runat="server"></label>
</td>
                          </tr>

                          <tr>
                          <td><label >Secondary School:&nbsp;</label></td>
                          <td><label runat="server"></label>
                          </td>
                          </tr>

                           
                           <tr>
                          <td><label >Certificate Obtained:&nbsp;</label></td>

                          <td><label runat="server"></label>
                          </td>
                          </tr>

                           <tr>
                          <td><label >Technical/NVQ:&nbsp;</label></td>
                          <td><label runat="server"></label>
                          </td>
                          </tr>

                           <tr>
                          <td><label >Certificate Obtained:&nbsp;</label></td>

                          <td><label runat="server"></label>
                          </td>
                          </tr>

                           <tr>
                          <td><label >Tertiary Institution:&nbsp;</label></td>
                          <td><label runat="server"></label>
                          </td>
                          </tr>

                           <tr>
                          <td><label >Certificate Obtained :&nbsp;</label></td>

                          <td><label runat="server"></label>
                          </td>
                          </tr>

                           <tr>
                          <td><h4> Membership of Other Trade Associations</h4></td>
                         
                          </tr>

                           <tr>
                          <td><label >Association Name:&nbsp;</label></td>

                          <td><label runat="server"></label>
                          </td>
                          </tr>

                          <tr>

                          <td><label >Position Held:&nbsp;</label></td>
                          <td><label runat="server"></label>
                          </td>
                          </tr>

                          <tr>
                          <td><label >Date Joined:&nbsp;</label></td>
                          <td><label runat="server"></label>
                          </td>
                          </tr>


</table><br/>
                            </div>
                            </div>
               <div class="row-fluid">
                   <div class="col-md-6">
                       <h4>Current Job</h4>
                   <table class="panel-body">    
                        <tr>
                         <td><label >Title/Designation:&nbsp;</label> </td>

                         <td><label runat="server"></label></td>
                         </tr>

                        
                         
                          <tr>
                          <td><label >Employer/Project Name:&nbsp;</label></td>

                          <td><label runat="server"></label>
                          </td>
                          </tr>
                                                         
                           <tr>
                          <td><label >Address:&nbsp;</label></td>
                          <td><label runat="server"></label>
                          </td>
                          </tr>

                           <tr>
                          <td><label >Appointment Date:&nbsp;</label></td>
                          <td><label runat="server"></label>
                          </td>
                          </tr>
</table>
                   </div>
                   <div class="col-md-6">
                       <h4>Previous Jobs </h4>
                   <table class="panel-body">    
                        <tr>
                         <td><label >Employer/Project Name :&nbsp;</label> </td>

                         <td><label runat="server"></label></td>
                         </tr>

                        
                         <tr>
<td>
                          <label>From :&nbsp;</label></td>
                        <td>  <label  runat="server"></label>
</td>
                          </tr>

                          <tr>
                          <td><label >To:&nbsp;</label></td>
                          <td><label runat="server"></label>
                          </td>
                          </tr>
<<<<<<< HEAD
</table>
                   </div>

                        </div>
                        <div class="row" style="margin-top: 40px; margin-bottom: 20px; ">
                            <center>
                                <a class="btn btn-primary custom-btn" style="display:inline" onclick="document.getElementById('pjob_tab').click();"> &laquo; Back</a> &nbsp;
                                <asp:LinkButton CssClass="btn btn-success custom-btn" ID="submitForm" OnClientClick="return submitForm_Click();" style="display:inline" OnClick="submit_Click" runat="server">Submit &check;</asp:LinkButton><br />

                            </center>                               
                        </div> 
                    </div>            
                    <!-- Tab 5 End -->            
                </div>
            </form>
                
       </div>
    </div>
    </div>
    
    <div class="footer">
        <div class="container">
            <center>
                <p id="footer">&copy; 2017 - Powered by Chams Plc  <img src="../Content/images/chams.jpg" style="margin-bottom: 2px" /></p>
            </center>
        </div>
    </div>

    <script src="../Scripts/jquery-1.10.2.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/tabs-addon.js"></script>
    <script src="../App_JS/common.js"></script>
    <script src="../App_JS/sharedjs.js"></script>
    <script src="../App_JS/validation.js"></script>
    <script>
        getWindowHeight();

        window.onresize = function (event) {
            getWindowHeight();
        };

        function getWindowHeight() {
            var height = window.innerHeight;
            //var header_h = $(".header").height();
            var footer_h = $("#footer").height();

            $("#body_content").css("min-height", function () {
                return height - (footer_h + 50);
            });
        }
    </script>


</body>

</html>