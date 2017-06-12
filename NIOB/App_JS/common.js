$(function () {

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



//validate number input cotrol
$(function () {
    $('._numberInput').on('keydown', function (e) { -1 !== $.inArray(e.keyCode, [46, 8, 9, 27, 13, 110, 190]) || /65|67|86|88/.test(e.keyCode) && (!0 === e.ctrlKey || !0 === e.metaKey) || 35 <= e.keyCode && 40 >= e.keyCode || (e.shiftKey || 48 > e.keyCode || 57 < e.keyCode) && (96 > e.keyCode || 105 < e.keyCode) && e.preventDefault() });
})

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
})
