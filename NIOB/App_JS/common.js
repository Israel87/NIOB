$(function () {
    $(document).ready(function () {
        $('#error_lbl').html("");
    })
    
    //populate lga ddl on state ddl selectchange event
    $(document).ready(function () {
        $('#state').on('change', function () {
            if ($('#state').val() == "") {
                $("#lga").empty();
                return;
            }
            var _stateid = $('#state').val();
            $.ajax({
                type: "POST",
                url: "/Service.asmx/GetLGA",
                data: '{"stateid":"' + _stateid + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                async: true,
                success: function (result) {
                    var data = eval(result.d);//JSON.parse(result.d);
                    $("#lga").empty();
                    var options = $("#lga");
                    options.append($("<option />").val("").text("Select LGA"));
                    $.each(data, function () {
                        options.append($("<option />").val(this.LGAID).text(this.LGANAME));
                    });
                },
                error: function (xhr, status, error) {
                    console.log("error " + error);
                }
            });
        });
    });
});

<<<<<<< HEAD
    //***********add and delete implement on previous employment page
    var count = 0;
    $(".add-button").click(function () {
        if (count >= 4) {
            alert("You cannot add more than 5 entries!!");
            return;
        }
        count++;
        var element = "<div id='previousjobs"+count+"'><div class='col-md-4'><input name='prev_employername' type='text' id='prev_employername" + count + "' class='form-control'><br></div><div class='col-md-3'><input  type='date' name='datefrom' id='datefrom" + count + "' class='form-control' required='required'><br></div><div class='col-md-3'><input type='date' name='dateto' id='dateto" + count + "' class='form-control' required='required'><br></div><div class='col-md-2' style='margin-top:5px;'><a class='btn btn-danger custom-btn delete-button' style='display:inline;' onclick='deleteEntry("+count+")'> × Del </a></div></div>";
        $("#prev_employmentlist").append(element);
    })
});

function deleteEntry(index) {
    if (confirm("Are you sure?")) {
        $("#previousjobs"+index).remove();
    }
}
//**************
//**************validate number input cotrol
=======


//validate number input cotrol
>>>>>>> 45ef3ad9ae91bf1d1ca600900895385497c4e108
$(function () {
    $('._numberInput').on('keydown', function (e) { -1 !== $.inArray(e.keyCode, [46, 8, 9, 27, 13, 110, 190]) || /65|67|86|88/.test(e.keyCode) && (!0 === e.ctrlKey || !0 === e.metaKey) || 35 <= e.keyCode && 40 >= e.keyCode || (e.shiftKey || 48 > e.keyCode || 57 < e.keyCode) && (96 > e.keyCode || 105 < e.keyCode) && e.preventDefault() });
})

<<<<<<< HEAD
//*****************validate email input on change
=======
>>>>>>> 45ef3ad9ae91bf1d1ca600900895385497c4e108
$(function () {
    $('#email').on('change', function () {
        if (!(validateEmail($('#email').val()))) {
            $('#error_lbl').html("");
            $('#error_lbl').append('<span style="color: red; font-style: italic; text-align: right">* invalid email format!</span>');
<<<<<<< HEAD
            $('#lbl_email').css('color', 'red');
=======
>>>>>>> 45ef3ad9ae91bf1d1ca600900895385497c4e108
        }
    });
})

function validateEmail(email) {
    var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return re.test(email);
}
<<<<<<< HEAD
//**********************
//**************validate constraint on submit event
function submitForm_Click() {    
    removeError();

    if ($('#error_lbl').length) $('#error_lbl').html("");

    if ($('#email').val() != "") {
        if (!(validateEmail($('#email').val()))) {
            $('#error_lbl').html("");
            $('#error_lbl').append('<span style="color: red; font-style: italic; text-align: right">* invalid email format!</span>');
            return false;
        }
    }

    if (validateInput()) {
        return true;
    } else if ($('#lastname').val() != "" && $('#firstname').val() != "" && ($('#lastname').val().indexOf(" ") > 0 || $('#firstname').val().indexOf(" ") > 0)) {
        $('#error_lbl').html("");
        $('#error_lbl').append('<span style="color: red; font-style: italic; text-align: right">* field(s) cannot contain whitespace!</span>');
        if ($('#lastname').val().indexOf(" ") > 0) $('#lbl_lastname').css('color', 'red');
        if ($('#firstname').val().indexOf(" ") > 0) $('#lbl_firstname').css('color', 'red');
    }
    else {
        $('#error_lbl').append('<span style="color: red; font-style: italic; text-align: right">* required fields cannot be empty!</span>');

        if ($('#title').val() == "") $('#lbl_title').css('color', 'red');
        if ($('#lastname').val() == "") $('#lbl_lastname').css('color', 'red');
        if ($('#firstname').val() == "") $('#lbl_firstname').css('color', 'red');
        if ($('#phoneNo').val() == "") $('#lbl_phoneNo').css('color', 'red');
        if ($('#dob').val() == "") $('#lbl_dob').css('color', 'red');
        if ($('#email').val() == "") $('#lbl_email').css('color', 'red');
        if ($('#username').val() == "") $('#lbl_username').css('color', 'red');
        if ($('#password').val() == "") $('#lbl_password').css('color', 'red');
        if ($('#confirmpassword').val() == "") $('#lbl_confirmpassword').css('color', 'red');
        if ($('#gender').val() == "") $('#lbl_gender').css('color', 'red');
        if ($('#blahh').attr('src') == undefined || $('#blahh').attr('src') == '') $('#lbl_photo').css('color', 'red');
    }
    $('#mytabs a[href="#tab1"]').tab('show');
    return false;
}

function validateInput() {
    if ($('#title').val() == "" || $('#lastname').val() == "" || $('#firstname').val() == "" || $('#gender').val() == "" || $('#phoneNo').val() == "" || $('#email').val() == "" || $('#username').val() == "" || $('#password').val() == "" || $('#confirmpassword').val() == "" || $('#dob').val() == "" || $('#blahh').attr('src') == undefined || $('#blahh').attr('src') == '' || $('#lastname').val().indexOf(" ") > 0 || $('#firstname').val().indexOf(" ") > 0) {
        return false
    }
    return true
}

$('input, select').change(function () {
    if ($('#error_lbl').length) $('#error_lbl').html("");
    removeError();
})
//remove error on label function
function removeError() {
    $('#lbl_title').css('color', 'black');
    $('#lbl_lastname').css('color', 'black');
    $('#lbl_firstname').css('color', 'black');
    $('#lbl_phoneNo').css('color', 'black');
    $('#lbl_dob').css('color', 'black');
    $('#lbl_photo').css('color', 'black');
    $('#lbl_gender').css('color', 'black');
    $('#lbl_email').css('color', 'black');
    $('#lbl_username').css('color', 'black');
    $('#lbl_password').css('color', 'black');
    $('#lbl_confirmpassword').css('color', 'black');
}
//validate date input
$(function () {
    $('#dob').prop('max', function () {
        return new Date().toJSON().split('T')[0];
    });
    //$("#lga").change(function () {
    //    $("#lga2").val(function () {
    //        return $("#lga").val()
    //    })
    //})

})

//set selected image in picturebox on file select
$(function () {
    $('#photo').change(function () {
        readURL(this);
    });
    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#blahh').attr('src', e.target.result);
                //$('#_img_summary').attr('src', e.target.result);
            }
            reader.readAsDataURL(input.files[0]);
        }
    }
})

//set selected file in certificate upload
$(function () {
    $('#selectedFile4').change(function (e) {
        $('#technicalcertUpload').val( function() {
            return e.target.result;
        })
    });
=======


$(function () {
    $('#submit').click(function (e) {

        if ($('#email').val() != "") {
            if (!(validateEmail($('#email').val()))) {
                $('#error_lbl').html("");
                $('#error_lbl').append('<span style="color: red; font-style: italic; text-align: right">* invalid email format!</span>');
                return;
            }
        }

        if (validateInput()) {
            enableTabToggle();
            $('#mytabs a[href="#panel2"]').tab('show');
        } else if ($('#surname').val().indexOf(" ") > 0 || $('#firstname').val().indexOf(" ") > 0 || $('#middlename').val().indexOf(" ") > 0) {
            $('#error_lbl').html("");
            $('#error_lbl').append('<span style="color: red; font-style: italic; text-align: right">* field(s) cannot contain whitespace!</span>');
            if ($('#surname').val().indexOf(" ") > 0) $('#lbl_surname').css('color', 'red');
            if ($('#firstname').val().indexOf(" ") > 0) $('#lbl_firstname').css('color', 'red');
            if ($('#middlename').val().indexOf(" ") > 0) $('#lbl_middlename').css('color', 'red');
        }
        else {
            $('#error_lbl').append('<span style="color: red; font-style: italic; text-align: right">* required fields cannot be empty!</span>');

            if ($('#title').val() == "") $('#lbl_title').css('color', 'red');
            if ($('#surname').val() == "") $('#lbl_surname').css('color', 'red');
            if ($('#firstname').val() == "") $('#lbl_firstname').css('color', 'red');
            if ($('#bvn').val() == "") $('#lbl_bvn').css('color', 'red');
            if ($('#phoneNo').val() == "") $('#lbl_phoneNo').css('color', 'red');
            if ($('#dob').val() == "") $('#lbl_dob').css('color', 'red');
            if ($('#gender').val() == "") $('#lbl_gender').css('color', 'red');
            if ($('#blahh').attr('src') == undefined || $('#blahh').attr('src') == '') $('#lbl_photo').css('color', 'red');
        }
    })
>>>>>>> 45ef3ad9ae91bf1d1ca600900895385497c4e108
})
