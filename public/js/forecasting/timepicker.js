$(function () {
    $("#datepicker").datetimepicker();

    $( "#datepicker" ).datepicker( "option", "onClose", function () {
        $("#btnSearchPlaces").css("opacity", "1");
    });
    $( "#datepicker" ).focus(function () {
        $("#btnSearchPlaces").css("opacity", "0");
    });

    var currentdate = new Date();
    var datetime = currentdate.getDate() + "."
        + (currentdate.getMonth()+1)  + "."
        + currentdate.getFullYear() + " "
        + currentdate.getHours() + ":"
        + currentdate.getMinutes() ;
    // + ":"
    // + currentdate.getSeconds();
})
