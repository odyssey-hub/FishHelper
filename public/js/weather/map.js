$(function () {
    $("#location").change(function () {
        let location = $(this).val();
        $.get("/autocomplete/location_coords", {data: location}, function(data){
            let x = data[0].coorX;
            let y = data[0].coorY;
            $("#coorX").val(x);
            $("#coorY").val(y);
        });
    });

    var myMap;
    ymaps.ready(init);

    const modal_map = new bootstrap.Modal(document.getElementById('modal_map'), {
        keyboard: false
    });

    function init () {
        $("#modalBtnOK").click(function () {
            myMap.destroy();
            modal_map.hide();
        });

        function coordsDefinedBehavior(){
            let coorX = $("#coorX").val();
            let coorY = $("#coorY").val();
            let location = $("#location").val();
            let name = "ваша отметка";
            if (location) {
                name = location;
            }
            let locationMark = new ymaps.Placemark([coorX, coorY], {
                hintContent: name,
                balloonContent: name
            }, {
                iconLayout: 'default#image',
                iconImageHref: 'http://afish/img/water.png',
                iconImageSize: [30, 42],
                iconImageOffset: [-5, -38]
            });

            myMap = new ymaps.Map('map', {
                center: [coorX, coorY],
                zoom: 10,
                controls: ['zoomControl', 'typeSelector', 'fullscreenControl', 'routeButtonControl'],
            }, {
                buttonMaxWidth: 300,
            });


            myMap.geoObjects.add(locationMark);
            myMap.events.add("dblclick", function (e) {
                myMap.geoObjects.remove(locationMark);
                let coords = e.get('coords');
                locationMark = new ymaps.Placemark(coords, {
                    hintContent: "Ваша отметка",
                    balloonContent: "Ваша отметка"
                }, {
                    iconLayout: 'default#image',
                    iconImageHref: 'http://afish/img/water.png',
                    iconImageSize: [30, 42],
                    iconImageOffset: [-5, -38]
                });
                myMap.geoObjects.add(locationMark);
                console.log(coords);
                $("#coorX").val(coords[0]);
                $("#coorY").val(coords[1]);
            });
        }

        function noCoordsBehavior(){
            let coorX = 48.772430;
            let coorY = 44.777820;
            myMap = new ymaps.Map('map', {
                center: [coorX, coorY],
                zoom: 10,
                controls: ['zoomControl', 'typeSelector', 'fullscreenControl', 'routeButtonControl'],
            }, {
                buttonMaxWidth: 300,
            });

            let locationMark = new ymaps.Placemark([coorX, coorY], {
                hintContent: "Вы здесь",
                balloonContent: "Вы здесь"
            }, {
                iconLayout: 'default#image',
                iconImageHref: 'http://afish/img/water.png',
                iconImageSize: [30, 42],
                iconImageOffset: [-5, -38]
            });

            myMap.events.add("dblclick", function (e) {
                myMap.geoObjects.remove(locationMark);
                let coords = e.get('coords');
                locationMark = new ymaps.Placemark(coords, {
                    hintContent: "Ваша отметка",
                    balloonContent: "Ваша отметка"
                }, {
                    iconLayout: 'default#image',
                    iconImageHref: 'http://afish/img/water.png',
                    iconImageSize: [30, 42],
                    iconImageOffset: [-5, -38]
                });
                myMap.geoObjects.add(locationMark);
                console.log(coords);
                $("#coorX").val(coords[0]);
                $("#coorY").val(coords[1]);
            });
        }


        $("#btnOpenMap").click(function () {
            let coorX = $("#coorX").val();
            let coorY = $("#coorY").val();
            if (coorX && coorY){
                coordsDefinedBehavior();
            } else {
                noCoordsBehavior();
            }
            modal_map.show();
        });











    }
});
