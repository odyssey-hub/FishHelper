var myMap;
// Дождёмся загрузки API и готовности DOM.
ymaps.ready(init);


function init () {
    const coorX = $("#map").data("coorx");
    const coorY = $("#map").data("coory");
    const name = $(".location-name").text();

    locationMark = new ymaps.Placemark([coorX, coorY], {
            hintContent: name,
            balloonContent: name
        }, {
            // Опции.
            // Необходимо указать данный тип макета.
            iconLayout: 'default#image',
            // Своё изображение иконки метки.
            iconImageHref: 'http://afish/img/water.png',
            // Размеры метки.
            iconImageSize: [30, 42],
            // Смещение левого верхнего угла иконки относительно
            // её "ножки" (точки привязки).
            iconImageOffset: [-5, -38]
    });


    myMap = new ymaps.Map('map', {
        // При инициализации карты обязательно нужно указать
        // её центр и коэффициент масштабирования.
        center: [coorX, coorY],
        zoom: 10,
        controls: ['zoomControl', 'typeSelector', 'fullscreenControl', 'routeButtonControl'],
        // Тип покрытия карты: "Гибрид".
        // type: 'yandex#hybrid',
    }, {
        buttonMaxWidth: 300,
    });

    myMap.geoObjects.add(locationMark)
}
