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