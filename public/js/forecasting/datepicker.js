$(function () {
    $( "#datepicker" ).datepicker({
        minDate: "0",
        maxDate: "+7D",
    });
    // $( "#datepicker" ).datepicker( "option", "onSelect", function () {
    //     $("#btnSearchPlaces").();
    // });
    $( "#datepicker" ).datepicker( "option", "onClose", function () {
        $("#btnSearchPlaces").css("opacity", "1");
    });
    $( "#datepicker" ).focus(function () {
        $("#btnSearchPlaces").css("opacity", "0");
    });

    // $( "#datepicker" ).focusout(function () {
    //     $("#btnSearchPlaces").show();
    // });

})
