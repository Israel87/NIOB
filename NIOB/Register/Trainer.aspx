<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Trainer.aspx.cs" Inherits="NIOB.Register.Trainer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>NIOB - Register</title>
    <link href="Content/Site.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/bootstrap-responsive.min.css" rel="stylesheet" />
    <link href="Content/preview.min.css" rel="stylesheet" />
    <link href="Content/font-awesome.min.css" rel="stylesheet" />

    <link href='http://fonts.googleapis.com/css?family=PT+Sans:400,700' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />

      <script src="Scripts/jquery-1.10.2.min.js"></script>
   <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/main.js"></script>
    
</head>

<body>
    <center>
     <div class="logo">
           
            <img  src="images/logo.jpeg" width="200px" height="150px" />
            
           <h1 class="greentext">Welcome to the Nigeria Institute of Building</h1>
        </div>
        <h3 class="greentext">Trainer Registration</h3><br />
    </center>
    <div class="container">
        
        <div class="row-fluid" id="demo-1">
            <div class="span10 offset1">
                <div class="tabbable custom-tabs tabs-animated  flat flat-all hide-label-980 shadow track-url auto-scroll">
                    <ul class="nav nav-tabs" id="mytabs">
                        <li class="mytabs_li" id="tab_perInfo" runat="server"><a href="#" id="tab_panel1" data-toggle="tab" class="active"><i class="fa fa-user _icon"></i><span>&nbsp;&nbsp;Personal Data</span></a></li>
                        <li class="mytabs_li" id="tab2"><a href="#" id="tab_panel2" class="tabs"><i class="fa fa-users _icon"></i><span>&nbsp;&nbsp;Education</span></a></li>
                        <li class="mytabs_li" id="tab3"><a href="#" id="tab_panel3" class="tabs"><i class="fa fa-address-card-o _icon"></i><span>&nbsp;&nbsp;Current Job</span></a></li>
                        <li class="mytabs_li" id="tab4"><a href="#" id="tab_panel4" class="tabs"><i class="fa fa-diamond _icon"></i><span>&nbsp;&nbsp;Previous Jobs</span></a></li>
                        <li class="mytabs_li" id="tab5"><a href="#" id="tab_panel6" class="tabs"><i class="fa fa-diamond _icon"></i><span>&nbsp;&nbsp;Payment</span></a></li>
                        <li class="mytabs_li" id="tab_summary" runat="server"><a href="#" id="tab_panel5"><i class="fa fa-folder-o _icon"></i><span>&nbsp;&nbsp;Summary</span></a></li>
                    </ul>
                    <form runat="server" method="post">
                    <div class="tab-content">
                        <div class="tab-pane active" id="panel1">
                            <div class="row-fluid">
                                <div class="span5">
                                    <br />
                                    <h4>Personal Data</h4>
                                    <br />
                                    <label id="lbl_title">Title <span style="color: red; font-style: italic; text-align: right">*</span></label>

                                    <select class="input-block-level" id="title" name="gender" runat="server" required="required">
                                        <option></option>
                                        <option value="MR">Mr</option>
                                        <option value="MRS">Mrs</option>
                                        <option value="MISS">Miss</option>
                                        <option value="MASTER">Master</option>
                                    </select>
                                    <label id="username">Username<span style="color: red; font-style: italic; text-align: right">*</span> </label>
                                    <input type="text" name="username" id="Text1" class="input-block-level" runat="server" required="required"/>
                                    
                                    <label id="lbl_password1">Password<span style="color: red; font-style: italic; text-align: right">*</span> </label>
                                    <input type="password" name="surname" id="password" class="input-block-level" runat="server" required="required"/>
                                    
                                    <label id="lbl_confirmpassword">Confirm Password<span style="color: red; font-style: italic; text-align: right">*</span> </label>
                                    <input type="password" name="confirmpassword" id="confpassword" class="input-block-level" runat="server" required="required"/>

                                    <label id="lbl_firstname">First Name<span style="color: red; font-style: italic; text-align: right">*</span> </label>
                                    <input type="text" name="firstname" id="firstname" class="input-block-level" runat="server" style="text-transform:uppercase;" required="required" />
                                    <label id="lbl_middlename">Middle Name </label>
                                    <input type="text" name="middleName" id="middlename" class="input-block-level" runat="server" style="text-transform:uppercase;" />
                                    <label id="lbl_dob">Date of Birth<span style="color: red; font-style: italic; text-align: right">*</span></label>
                                    <input type="date" name="dob" id="dob" class="input-block-level" required="required" />
                                    <input type="text" name="dob_copy" id="dob_copy" class="input-block-level" required="required" style="display: none;" />
                                    
                                    <label id="lbl_phoneNo">Mobile Phone<span style="color: red; font-style: italic; text-align: right">*</span> </label>
                                    <input type="text" name="phoneNo" id="Text2" maxlength="14" minlength="11" class="input-block-level _numberInput" runat="server" required="required"/>
                                  
                                    <label>State of Origin </label>
                                    <select class="input-block-level" id="Select1" name="_stateOfOrigin" runat="server" >
                                            <option>ABUJA FCT</option>
                                            <option>ABIA</option>
                                            <option>ADAMAWA</option>
                                            <option>AKWA IBOM</option>
                                            <option>ANAMBRA</option>
                                            <option>BAUCHI</option>
                                            <option>BAYELSA</option>
                                            <option>BENUE</option>
                                            <option>BORNO</option>
                                            <option>CROSS RIVER</option>
                                            <option>DELTA</option>
                                            <option>EBONYI</option>
                                            <option>EDO</option>
                                            <option>EKITI</option>
                                            <option>ENUGU</option>
                                            <option>GOMBE</option>
                                            <option>IMO</option>
                                            <option>JIGAWA</option>
                                            <option>KADUNA</option>
                                            <option>KANO</option>
                                            <option>KATSINA</option>
                                            <option>KEBBI</option>
                                            <option>KOGI</option>
                                            <option>KWARA</option>
                                            <option>LAGOS</option>
                                            <option>NASSARAWA</option>
                                            <option>NIGER</option>
                                            <option>OGUN</option>
                                            <option>ONDO</option>
                                            <option>OSUN</option>
                                            <option>OYO</option>
                                            <option>PLATEAU</option>
                                            <option>RIVERS</option>
                                            <option>SOKOTO</option>
                                            <option>TARABA</option>
                                            <option>YOBE</option>
                                            <option>ZAMFARA</option>
                                    </select>


                                   
                                </div>
                                <div class="span5">
                                    <div class="hide_space">   
                                         <br />
                                        <h4>&nbsp;</h4>
                                        <br />
                                    </div>

                                    <label>Email <span style="color: red; font-style: italic; text-align: right">*</span></label>
                                    <input type="email" class="input-block-level" name="email" id="email" runat="server" required/>
                                    
                                    <label>Address </label>
                                    <textarea class="input-block-level" name="houseAddress" id="houseAddress" rows="4" style="margin-bottom: 15px; text-transform:uppercase; resize: none;" runat="server" ></textarea>
                                    </div>
                                <div class="span2">
                                    <div class="hide_space">   
                                         <br />
                                        <h4>&nbsp;</h4>
                                        <br />
                                    </div>
                                    <label id="lbl_photo">Photograph <span style="color: red; font-style: italic; text-align: right">*</span></label>
                                    <center>                                               
                                        <img id="blahh" runat="server" style="height: 100px; width: 100px;  margin-top: 15px" />
                                    </center>
                                    <br />
                                    <input type="file" name="selectedFile" id="selectedFile" style="display: none;" accept="image/jpg, image/jpeg" multiple="multiple" runat="server" required="required"/>
                                    <input type="button" class="btn btn-success btn-lg" value="Upload Photo" onclick="document.getElementById('selectedFile').click();" style="width: 100%"/>
                                </div>
                            </div> 
                            <br />
                             
                            <div class="row-fluid">
                                <center>
                                    <label id="error_lbl"> </label>
                                     <asp:LinkButton ID="panel1nextbtn" CssClass="btn btn-default btn-lg" runat="server" >Next&nbsp;<i class="fa fa-chevron-right"></i></asp:LinkButton>
                                 </center>
                            </div>
                        </div>

                        <div class="tab-pane" id="panel2">
                            <div class="row-fluid">
                                <div class="span6">
                                    <br />
                                    <h4>Education</h4>
                                    <br />
                                    <label>Primary School</label>
                                    <input type="text" name="prysch" id="prysch" class="input-block-level" runat="server" style="text-transform:uppercase;"/>
                                    <label>Secondary School</label>
                                    <textarea class="input-block-level" name="secsch" id="secsch" rows="4" style="margin-bottom: 15px; text-transform:uppercase; resize: none;" runat="server"></textarea>
                                    <label>Secondary School Certificate </label>
                                    <select class="input-block-level" id="secschcert" name="secschcert" runat="server" ></select>
                                    <label>Technical/NVQ </label>
                                    <input type="text" name="techncal" id="technical"  maxlength="14" minlength="11"  class="input-block-level _numberInput" runat="server" />
                                    <label>Tertiary </label>
                                    <input type="text" name="tertiary" id="tertiary"  maxlength="14" minlength="11"  class="input-block-level _numberInput" runat="server" />
                                    <label>Tertiary Cert </label>
                                    <select class="input-block-level" id="Select2" name="secschcert" runat="server" ></select>
                                  <label>Name of Trade Association </label>
                                    <input type="text" name="tradeass" id="tradeass"  maxlength="14" minlength="11"  class="input-block-level _numberInput" runat="server" />
                                   <label>Position Held </label>
                                    <input type="text" name="tertiary" id="Text3"  maxlength="14" minlength="11"  class="input-block-level _numberInput" runat="server" />
                                       <label id="lbl_doa">Date Admitted<span style="color: red; font-style: italic; text-align: right">*</span></label>
                                    <input type="date" name="dob" id="doa" class="input-block-level" required="required" />
                                    
                                    <br />
                                </div>
                            </div>
                            <br />
                            <div class="row-fluid">
                                <center>
                                    <asp:LinkButton ID="panel2backbtn" CssClass="btn btn-default btn-lg" runat="server" ><i class="fa fa-chevron-left"></i>&nbsp;Back</asp:LinkButton>
                                    <asp:LinkButton ID="panel2nextbtn" CssClass="btn btn-default btn-lg" runat="server">Next&nbsp;<i class="fa fa-chevron-right"></i></asp:LinkButton> 
                                </center>
                            </div>
                        </div>

                        <div class="tab-pane" id="panel3">
                            <div class="row-fluid">
                                <div class="span6">
                                    <br />
                                    <h4>Current Job </h4>
                                    <br />
                                    <label>Title/Designation </label>
                                    <select class="input-block-level" id="titledesgination" name="titledesgination" runat="server" ></select>
                                    <label id="lbl_noe">Name of Employer/Name of Project</label>
                                    <input type="text" name="noe" id="noe" class="input-block-level" runat="server" disabled="disabled"/>
                                    <label>Scope of Responsibility  </label>
                                    <input type="text" name="sor" id="sor" class="input-block-level" runat="server" style="text-transform:uppercase;"/>
                                    <label>Date of Commencemnent</label>
                                    <input type="text" name="doc" id="doc" class="input-block-level" runat="server" style="text-transform:uppercase;"/>
                                    <label>Address </label>
                                    <input type="text" name="jobaddress" id="jobaddress" class="input-block-level" runat="server" style="text-transform:uppercase;" />
                                    
                                     </div>
                                
                            </div>
                            <br />
                            <div class="row-fluid">
                                <center>
                                    <asp:LinkButton ID="panel3backbtn" CssClass="btn btn-default btn-lg" runat="server" ><i class="fa fa-chevron-left"></i>&nbsp;Back</asp:LinkButton>
                                    <asp:LinkButton ID="panel3nextbtn" CssClass="btn btn-default btn-lg" runat="server">Next&nbsp;<i class="fa fa-chevron-right"></i></asp:LinkButton> 
                                </center>
                            </div>

                        </div>

                        <div id="panel4" class="tab-pane">
                            <div class="row-fluid">
                                <div class="span6">
                                    <br />
                                        <h4>Previous Jobs</h4>
                                    <br />
                                     <label id="lbl_noe2">Name of Employer/Project Name</label>
                                    <input type="text" name="noe2" id="noe2" class="input-block-level" runat="server" disabled="disabled"/>
                                    
                                     <label>Duration</label>
                                    <input type="date" name="duration" id="duration" class="input-block-level _numberInput" runat="server" />
                                </div>
                                <div class="span6">
                                    <div class="hide_space">   
                                        <br />
                                            <h4>&nbsp;</h4>
                                        <br />
                                    </div>
                                    
                                    </div>
                            </div>
                            <br />
                            <div class="row-fluid">
                                <center>
                                    <asp:LinkButton ID="panel4backbtn" CssClass="btn btn-default btn-lg" runat="server" ><i class="fa fa-chevron-left"></i>&nbsp;Back</asp:LinkButton>
                                    <asp:LinkButton ID="panel4nextbtn" CssClass="btn btn-default btn-lg" runat="server" >Preview&nbsp;<i class="fa fa-chevron-right"></i></asp:LinkButton> 
                                </center>
                            </div>
                        </div>
                          <div id="panel6" class="tab-pane">
                            <div class="row-fluid">
                                <div class="span6">
                                    <br />
                                        <h4>Payment</h4>
                                    <br />
                                     <label id="lbl_niobreg">NIOB Registration</label>
                                    <select class="input-block-level" id="niobreg" name="niobreg" runat="server" ></select>
                                    
                                      <label id="lbl_nonrefund">Non-Refundable Registration Fee</label>
                                    <select class="input-block-level" id="nonrefund" name="nonrefund" runat="server" ></select>
                                     
                                    <label id="lbl_otherpayment">Other Payment</label>
                                    <select class="input-block-level" id="otherpayment" name="otherpayment" runat="server" ></select>
                                     
                               
                                     </div>
                                <div class="span6">
                                    <div class="hide_space">   
                                        <br />
                                            <h4>&nbsp;</h4>
                                        <br />
                                    </div>
                                    
                                    </div>
                            </div>
                            <br />
                            <div class="row-fluid">
                                <center>
                                    <asp:LinkButton ID="LinkButton1" CssClass="btn btn-default btn-lg" runat="server" ><i class="fa fa-chevron-left"></i>&nbsp;Back</asp:LinkButton>
                                    <asp:LinkButton ID="LinkButton2" CssClass="btn btn-default btn-lg" runat="server" >Preview&nbsp;<i class="fa fa-chevron-right"></i></asp:LinkButton> 
                                </center>
                            </div>
                        </div>

                        <div class="tab-pane" id="summary">
                            <br /><br />
                             <div class="row-fluid">
                                <div class="span4">
                                <table class="panel-body" style="width:90%; margin-left: 10px;">
                                    <tr>
                                        <td style="width:40%"><label style="text-align: right; margin-right: 15px;">Title&nbsp;</label></td>
                                        <td>
                                            <label id="title_summary" style="color: brown; text-transform:uppercase;" runat="server"></label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width:40%"><label style="text-align: right; margin-right: 15px;">Surname&nbsp;</label></td>
                                        <td>
                                            <label id="sn_summary" style="color: brown; text-transform:uppercase;" runat="server"></label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width:40%"><label style="text-align: right; margin-right: 15px;">Firstname&nbsp;</label></td>
                                        <td>
                                            <label id="fn_summary" style="color: brown; text-transform:uppercase;" runat="server"></label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width:40%"><label style="text-align: right; margin-right: 15px;">Middlename&nbsp;</label></td>
                                        <td>
                                            <label id="mn_summary" style="color: brown; text-transform:uppercase;" runat="server"></label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width:40%"><label style="text-align: right; margin-right: 15px;">BVN&nbsp;</label></td>
                                        <td>
                                            <label id="bvn_summary" style="color: brown; text-transform:uppercase;" runat="server"></label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width:40%"><label style="text-align: right; margin-right: 15px;">Email&nbsp;</label></td>
                                        <td>
                                            <label id="email_summary" style="color: brown;" runat="server"></label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width:40%"><label style="text-align: right; margin-right: 15px;">Phone&nbsp;</label></td>
                                        <td>
                                            <label id="phone_summary" style="color: brown; text-transform:uppercase;" runat="server"></label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width:40%"><label style="text-align: right; margin-right: 15px;">NOK Name&nbsp;</label></td>
                                        <td>
                                            <label id="nokName_summary" style="color: brown; text-transform:uppercase;" runat="server"></label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width:40%"><label style="text-align: right; margin-right: 15px;">NOK Phone&nbsp;</label></td>
                                        <td>
                                            <label id="nokPhone_summary" style="color: brown; text-transform:uppercase;" runat="server"></label>
                                        </td>
                                    </tr>                                 

                                </table>
                                </div>
                                <div class="span6">
                                    <table class="panel-body" style="width:90%; margin-left: 10px;">
                                    <tr>
                                        <td style="width:40%"><label style="text-align: right; margin-right: 15px;">B.Type&nbsp;</label></td>
                                        <td>
                                            <label id="bizType_summary" style="color: brown; text-transform:uppercase;" runat="server"></label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width:40%"><label style="text-align: right; margin-right: 15px;">B.Name&nbsp;</label></td>
                                        <td>
                                            <label id="bizName_summary" style="color: brown; text-transform:uppercase;" runat="server"></label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width:40%"><label style="text-align: right; margin-right: 15px;">RC No&nbsp;</label></td>
                                        <td>
                                            <label id="RCN_summary" style="color: brown; text-transform:uppercase;" runat="server"></label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width:40%"><label style="text-align: right; margin-right: 15px;">Shop No&nbsp;</label></td>
                                        <td>
                                            <label id="shopNo_summary" style="color: brown; text-transform:uppercase;" runat="server"></label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width:40%"><label style="text-align: right; margin-right: 15px;">Plaza&nbsp;</label></td>
                                        <td>
                                            <label id="plaza_summary" style="color: brown; text-transform:uppercase;" runat="server"></label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width:40%"><label style="text-align: right; margin-right: 15px;">Address&nbsp;</label></td>
                                        <td>
                                            <label id="shopaddress_summary" style="color: brown; text-transform:uppercase;" runat="server"></label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width:40%"><label style="text-align: right; margin-right: 15px;">Street&nbsp;</label></td>
                                        <td>
                                            <label id="street_summary" style="color: brown; text-transform:uppercase;" runat="server"></label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width:40%"><label style="text-align: right; margin-right: 15px;">Email&nbsp;</label></td>
                                        <td>
                                            <label id="bizEmail_summary" style="color: brown;" runat="server"></label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width:40%"><label style="text-align: right; margin-right: 15px;">Website&nbsp;</label></td>
                                        <td>
                                            <label id="website_summary" style="color: brown;" runat="server"></label>
                                        </td>
                                    </tr>

                                </table>
                                </div>
                                 <center>
                                    <div class="span2">
                                         <img id="_img_summary" runat="server" style="height: 100px; width: 100px;  margin-top: 15px" />
                                    </div>
                                 </center>
                                
                            </div>
                            <br />
                            <div class="row-fluid">
                                <center>
                                    <asp:LinkButton ID="panel5backbtn" CssClass="btn btn-default btn-lg" runat="server" ><i class='fa fa-chevron-left'></i>&nbsp;Back</asp:LinkButton>  
                                    <asp:LinkButton ID="save" CssClass="btn btn-default btn-lg" runat="server" >Submit&nbsp;<i class='fa fa-check'></i></asp:LinkButton>  
                                </center>
                            </div>
                        </div>
                    </div>
                  </form>
                </div>
            </div>
        </div>
    </div>
</center>
    <div class="footer">
        <div class="container">
            <center>
                <p id="footer">&copy; 2017 - Powered by Chams Plc  <img src="images/chams.jpg" style="margin-bottom: 2px" /></p>
            </center>
        </div>
    </div>

    <script src="Scripts/jquery-1.10.2.min.js"></script>

   <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/tabs-addon.js"></script>

    <script type="text/javascript">

        $(function () {
            $("a[href^='#demo']").click(function (evt) {
                evt.preventDefault();
                var scroll_to = $($(this).attr("href")).offset().top;
                $("html,body").animate({ scrollTop: scroll_to - 80 }, 600);
            });
            $("a[href^='#bg']").click(function (evt) {
                evt.preventDefault();
                $("body").removeClass("light").removeClass("dark").addClass($(this).data("class")).css("background-image", "url('bgs/" + $(this).data("file") + "')");
                console.log($(this).data("file"));
            });
            $("a[href^='#color']").click(function (evt) {
                evt.preventDefault();
                var elm = $(".tabbable");
                elm.removeClass("grey").removeClass("dark").removeClass("dark-input").addClass($(this).data("class"));
                if (elm.hasClass("dark dark-input")) {
                    $(".btn", elm).addClass("btn-inverse");
                }
                else {
                    $(".btn", elm).removeClass("btn-inverse");
                }
            });
            $(".color-swatch div").each(function () {
                $(this).css("background-color", $(this).data("color"));
            });
            $(".color-swatch div").click(function (evt) {
                evt.stopPropagation();
                $("body").removeClass("light").removeClass("dark").addClass($(this).data("class")).css("background-color", $(this).data("color"));
            });

            $("a[href='#']").click(function (evt) {
                evt.preventDefault();
            });

            $("a[data-toggle='popover']").popover({
                trigger: "hover", html: true, placement: "top"
            });


        });

    </script>
</body>

</html>