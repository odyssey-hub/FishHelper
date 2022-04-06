import {getCardFishLayout, getCardLocationFishLayout} from "./card_layouts.js";

let forms;
let modal_form;
let modal_delete;
let marks;
let coords;
let lastMark;
let toastList;
$(function () {
    forms = document.querySelectorAll('.needs-validation');
    Array.prototype.slice.call(forms)
        .forEach(function (form) {
            form.addEventListener('submit', function (event) {
                if (!form.checkValidity()) {
                    event.preventDefault();
                    event.stopPropagation();
                }
                form.classList.add('was-validated')
            }, false)
        });

    modal_form = new bootstrap.Modal(document.getElementById('modal_form'), {
        keyboard: false
    });

    modal_delete = new bootstrap.Modal(document.getElementById('modal_delete'), {
        keyboard: false
    });

    let toastElList = [].slice.call(document.querySelectorAll('.toast'));
    toastList = toastElList.map(function(toastEl) {
        return new bootstrap.Toast(toastEl)
    });
});


$.ajaxSetup({
    headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    }
});

function isFormValidate() {
    var wasValid = true;
    $(".invalid-feedback").each(function () {
        if ($(this).css("display") !== "none") wasValid = false;
    });
    return wasValid;
}


$("#modalBtnCancel").click(function () {
    $('#formAddPlacemark')[0].reset();
    modal_form.hide();
});

$("#modalBtnDelConfirm").click(function () {
    $.post("/my_map/destroy", {id:lastMark.properties._data.iconCaption}, function () {
        myMap.geoObjects.remove(lastMark);
        modal_delete.hide();
        toastList[2].show();
    })
});

$("#formAddPlacemark").submit(function(e){
    e.preventDefault();
    let name = $("#name").val();
    let desc = $("#desc").val();
    let location = $("#location").val();
    if (isFormValidate() && $("#modal_form .modal-title").text() === "Добавить отметку"){
        $.post('/my_map/store', {name: name, description: desc, location: location, coorX: coords[0], coorY: coords[1]}, function () {
            addFishPlacemark(0, name, desc, 0, coords[0], coords[1]);
            modal_form.hide();

            $('#formAddPlacemark')[0].reset();
            $('#formAddPlacemark').removeClass("was-validated");
            toastList[0].show();
        });


    }
    if (isFormValidate() && $("#modal_form .modal-title").text() === "Изменить отметку") {
        $.post('/my_map/update', {id: lastMark.properties._data.iconCaption, name: name, description: desc, location: location},
            function () {
            lastMark.properties._data.balloonContent = desc;
            lastMark.properties._data.hintContent = name;
            modal_form.hide();

            $('#formAddPlacemark')[0].reset();
            $('#formAddPlacemark').removeClass("was-validated");
                toastList[1].show();
        })


    }

});


function fillForm(id){
    $.get("/my_map/find_mark", {id:id}, function (mark) {
        console.log(mark);
        $("#name").val(mark.name);
        $("#desc").val(mark.description);
        $("#location").val(mark.location);
    });

}


function addWaterPlacemark(id, name,coorX, coorY, isRed){
    let waterPlacemark;
    if (!isRed){
        waterPlacemark = new ymaps.Placemark([coorX, coorY], {
            balloonContent: name,
            hintContent: name,
            iconCaption: id
        }, {
            preset: 'islands#icon',
            iconColor: '#0095b6'
        });
    } else {
        waterPlacemark = new ymaps.Placemark([coorX, coorY], {
            balloonContent: name,
            hintContent: name,
            iconCaption: 0
        }, {
            preset: 'islands#icon',
            iconColor: '#b60008'
        });

        let myCircle = new ymaps.Circle([
            [coorX, coorY],
            2000
        ], {
            hintContent:  "Рыбная ловля запрещена",
        }, {
            fillColor: "#DB709377",
            strokeColor: "#990066",
            strokeOpacity: 0.8,
            strokeWidth: 5
        });

        // Добавляем круг на карту.
        myMap.geoObjects.add(myCircle);
    }

    waterPlacemark.events.add("balloonopen", function () {
        if (isRed) name = "Ловля строго запрещена";
        changePanelToLocations(waterPlacemark.properties._data.iconCaption, name);
        $(".panel").show();
    });

    waterPlacemark.events.add("balloonclose", function () {
        $(".panel").hide();
    });

    myMap.geoObjects.add(waterPlacemark);
}



function addFishPlacemark(id, name, desc, catch_num, coorX, coorY){
    if (!desc.length) desc=name;
    /*fishPlacemark catch_num*/
    let MyIconContentLayout = ymaps.templateLayoutFactory.createClass(
        '<div style="color: black; font-weight: bold;">$[properties.iconContent]</div>'
    );
    let fishPlacemark = new ymaps.Placemark([coorX, coorY], {
        hintContent: name,
        balloonContent: desc,
        iconContent: catch_num,
        iconCaption: id
    }, {
        iconLayout: 'default#imageWithContent',
        iconImageHref: 'img/fish.png',
        iconImageSize: [55, 55],
        iconImageOffset: [-24, -24],
        iconContentOffset: [20, 20],
        iconContentLayout: MyIconContentLayout
    });

    fishPlacemark.events.add("balloonopen", function () {
        changePanelToUsermarks(fishPlacemark.properties._data.iconCaption, name);
        $(".panel").show();
        lastMark = fishPlacemark;
        myMap.controls.add(buttonDel, {float: 'right', floatIndex:2});
        myMap.controls.add(buttonEdit, {float: 'right', floatIndex:1});
        // myMap.cursors.push('arrow');
    });

    fishPlacemark.events.add("balloonclose", function () {
        $(".panel").hide();
        myMap.controls.remove(buttonEdit);
        myMap.controls.remove(buttonDel);
    });
    myMap.geoObjects.add(fishPlacemark);
}

function changePanelToUsermarks(id, name){
    $(".panel").find(".text-center").text("Уловы "+name);
    $(".panel .cards").empty();
    $.get('/my_map/mark_fishes', {id: id}, function (catches) {
        if (catches.length){
            catches.forEach((fcatch)=>{
                let card = getCardFishLayout(fcatch.name, fcatch.fish, fcatch.weight, fcatch.date, fcatch.img);
                $(".panel .cards").append(card);
            })
        } else {
            $(".panel .cards").append("<span>Нет ни одного улова</span>");
        }

    });
}

function changePanelToLocations(id, name){
    $(".panel").find(".text-center").text(name);
    $(".panel .cards").empty();
    $.get('/my_map/locations_fishes', {id: id}, function (fishes) {
        if (fishes.length){
            fishes.forEach((fish)=>{
                let card = getCardLocationFishLayout(fish.name, fish.img);
                $(".panel .cards").append(card);
            })
        } else {
            $(".panel .cards").append("<span>Обитаемые виды рыб неизвестны</span>");
        }

    });
}




function addLocationsPlacemarks(marks) {
    for (let i=0; i<marks.length; i++){
        addWaterPlacemark(marks[i].id, marks[i].name, marks[i].coorX, marks[i].coorY, marks[i].isRed);
    }
}


function addUserPlacemarks(marks) {
    marks.forEach((mark)=> {
        addFishPlacemark(mark.id, mark.name, mark.description, mark.catch_num, mark.coorX, mark.coorY);
    })
}


let myMap;

let buttonEdit;
let buttonDel;
ymaps.ready(init);
function init () {
    /*map buttons*/
    let buttonAdd = new ymaps.control.Button({
        data: { content: "Добавить отметку" }
    });

    let addPlacemarkMode = false;
    buttonAdd.events.add("select", function () {
        myMap.controls.remove(zoomControl);
        myMap.cursors.push('crosshair');
        addPlacemarkMode = true;
    });
    buttonAdd.events.add("deselect", function () {
        // Выключение режима редактирования.
        myMap.controls.add(zoomControl);
        myMap.cursors.push('grab');
        addPlacemarkMode = false;
    });

    buttonEdit = new ymaps.control.Button({
        data: { content: "Изменить отметку"},
        options: {
            selectOnClick: false,
        }
    });
    buttonEdit.events.add('click', function (e) {
        fillForm(lastMark.properties._data.iconCaption);
        modal_form.show();
        $("#modal_form .modal-title").text("Изменить отметку");
    });

    buttonDel = new ymaps.control.Button({
        data: { content: "Удалить отметку"},
        options: {
            selectOnClick: false,
        }
    });
    buttonDel.events.add('click', function (e) {
        modal_delete.show();
    });

    let zoomControl = new ymaps.control.ZoomControl();
    let searchControl = new ymaps.control.SearchControl({
        options: {
            width: 500,
            noPopup: true,
            provider: 'yandex#search'
        }
    });

    /*initialize*/
    // var location = ymaps.geolocation.get();
    myMap = new ymaps.Map('map', {
        center: [48.783684, 44.755021],
        zoom: 10,
        controls: [zoomControl, 'typeSelector', buttonAdd, searchControl, 'fullscreenControl', 'routeButtonControl'],
    }, {
        buttonMaxWidth: 300,
        searchControlProvider: 'yandex#search'
    });



    myMap.events.add("click", function (e) {
        if (addPlacemarkMode) {
            coords = e.get('coords');
            $('#formAddPlacemark')[0].reset();
            $("#modal_form .modal-title").text("Добавить отметку");
            modal_form.show();
        }
    });




    /*add user fish placemarks*/
    marks = window.fishMarks;
    addUserPlacemarks(marks);

    marks = window.waterMarks;
    addLocationsPlacemarks(marks);
}


















// location.then(
//     function(result) {
//         // Добавление местоположения на карту.
//         myMap.geoObjects.add(result.geoObjects)
//     },
//     function(err) {
//         console.log('Ошибка: ' + err)
//     }
// );

