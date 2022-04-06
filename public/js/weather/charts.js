$(function () {
    // $('#formCoords').submit(function () {
    //     let coorX = $("#coorX").val();
    //     let coorY = $("#coorY").val();
    //     $(this).attr('action', `weather/${coorX}&${coorY}`);
    // });




    if ($(".T-chart").length){
        buildChartTemperatures();
        buildChartPressures();
    }


    function reformatDate(date) {
        var options = {month: 'short', day: 'numeric'};
        var day = new Date(date);

        return day.toLocaleDateString("ru-RU", options);
    }

    function buildChartPressures() {
        var arrX = [];
        var arrY = [];

        var i = 0;
        $(".pressure").each(function () {
            var arr = $(this).text().split(":");
            arrX[i] = reformatDate(arr[0]);
            arrY[i] = arr[1];
            i++;
        });

        const ctx = document.getElementById('chartPressures');
        const labels = arrX;
        const data = {
            labels: labels,
            datasets: [{
                label: 'Давление (мм.рт.ст.)',
                data: arrY,
                fill: false,
                backgroundColor: 'rgb(255,255,255)',
                borderColor: 'rgb(0,255,37)',
                tension: 0.1
            }]
        };
        const config = {
            type: 'line',
            data: data,
            options: {
                responsive: true,
                maintainAspectRatio: false,
                layout: {
                    padding: 20
                },
            },
        };
        const myChart = new Chart(ctx, config);
    }

    function buildChartTemperatures() {
        var arrX = [];
        var arrY = [];


        var i = 0;
        $(".temp").each(function () {
            var arr = $(this).text().split(":");
            arrX[i] = reformatDate(arr[0]);
            arrY[i] = arr[1];
            i++;
        });

        const ctx = document.getElementById('chartTemperatures');
        const labels = arrX;
        const data = {
            labels: labels,
            datasets: [{
                label: "Температура (°С)",
                data: arrY,
                fill: false,
                backgroundColor: 'rgb(255,255,255)',
                borderColor: 'rgb(255,0,0)',
                tension: 0.1
            }]
        };
        const config = {
            type: 'line',
            data: data,
            options: {
                responsive: true,
                maintainAspectRatio: false,
                layout: {
                    padding: 20
                },
                scales: {
                    y: {
                        ticks: {
                            // Include a dollar sign in the ticks
                            callback: function(value, index, values) {
                                if (value>0) return '+' + value + '°';
                                else return value+'°';
                            }
                        }
                    }
                }
            },
        };
        const myChart = new Chart(ctx, config);
    }
});
