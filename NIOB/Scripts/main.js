



$(function () {
    $('#email').on('change', function () {
        if (!(validateEmail($('#email').val()))) {
            $('#error_lbl').html("");
            $('#error_lbl').append('<span style="color: red; font-style: italic; text-align: right">* invalid email format!</span>');
        }
    });
})

function validateEmail(email) {
    var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return re.test(email);
}




function validateInput() {
    if ($('#title').val() == "" || $('#surname').val() == "" || $('#firstname').val() == "" || $('#gender').val() == "" || $('#bvn').val() == "" || $('#phoneNo').val() == "" || $('#dob').val() == "" || $('#blahh').attr('src') == undefined || $('#blahh').attr('src') == '' || $('#surname').val().indexOf(" ") > 0 || $('#firstname').val().indexOf(" ") > 0 || $('#middlename').val().indexOf(" ") > 0) {
        return false
    }
    return true
}

$(function () {
    $('#selectedFile').change(function () {
        readURL(this);
    });
    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#blahh').attr('src', e.target.result);
                $('#_img_summary').attr('src', e.target.result);
            }
            reader.readAsDataURL(input.files[0]);
        }
    }
})
function format_date(str) {
    console.log(str)
    var str_format = parseInt(str.substring(6, str.length - 5).trim());
    var _date = new Date(str_format).toLocaleString();
    return _date;
}



function enableTabToggle() {
    $('#tab_panel1').attr('href', '#panel1');
    $('#tab_panel2').attr('href', '#panel2');
    $('#tab_panel3').attr('href', '#panel3');
    $('#tab_panel4').attr('href', '#panel4');
    $('.tabs').attr('data-toggle', 'tab');
}

function disableTabToggle() {
    $('#tab_perInfo').attr('href', '#');
    $('#tab_panel2').attr('href', '#');
    $('#tab_panel3').attr('href', '#');
    $('#tab_panel4').attr('href', '#');
    $('.tabs').removeAttr('data-toggle');
    $('#tab_panel1').removeAttr('data-toggle');
}

function populateSummary() {
    $('#title_summary').html($('#title').val());
    $('#sn_summary').html($('#surname').val());
    $('#fn_summary').html($('#firstname').val());
    $('#mn_summary').html($('#middlename').val());
    $('#bvn_summary').html($('#bvn').val());
    $('#email_summary').html($('#email').val());
    $('#phone_summary').html($('#phoneNo').val());
    $('#nokName_summary').html($('#nokName').val());
    $('#nokPhone_summary').html($('#nokPhone').val());

    if ($('#businessType').val() == 100) {
        $('#bizType_summary').html($('#businessType_other').val());
    }
    else if ($('#businessType').val() == "") {
        $('#bizType_summary').html("");
    }
    else {
        $('#bizType_summary').html($('#businessType').find(":selected").text());
    }
    if ($('#street').val() == "") {
        $('#street_summary').html("");
    }
    else {
        $('#street_summary').html($('#street').find(":selected").text());
    }

    $('#bizName_summary').html($('#businessName').val());
    $('#RCN_summary').html($('#companyRcNumber').val());
    $('#shopNo_summary').html($('#shopNumber').val());
    $('#plaza_summary').html($('#plaza').val());
    $('#shopaddress_summary').html($('#shopAddress').val());
    $('#website_summary').html($('#pg_website').val());
    $('#bizEmail_summary').html($('#pg_email').val());
}