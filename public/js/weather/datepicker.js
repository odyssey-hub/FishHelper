$(function () {
    $( "#datepicker" ).datepicker({
        minDate: "0",
        maxDate: "+7D",
    });

    $("#datepicker").change(function (e) {
        let date = $(this).val();
        console.log(date);
        $.get("/weather/date", {date: date}, function(data){
            console.log(data);
            let weather = JSON.parse(data);
            console.log(weather);
            $("#tmpMorn").text(weather.tmp_morn);
            $("#tmpDay").text(weather.tmp_day);
            $("#tmpEve").text(weather.tmp_eve);
            $("#tmpNight").text(weather.tmp_night);
            $("#wPressure").text(weather.pressure);
            $("#wWindSpeed").text(weather.wind_speed);
            $("#wWindDir").text(weather.wind_direction);
            $("#wHumid").text(weather.humidity);
            $("#wClouds").text(weather.clouds);
            $("#wUvi").text(weather.uvi);
        });
    })
});
