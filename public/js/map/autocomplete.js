function setAutocomplete(tag, url, forFilter=false)
{
    var elementsWasGetted = false;
    var elements = [];

    function resultToArray(result){
        result.forEach(function (item) {
            elements.push(item.name);
        })
    }

    function getAllElements(){
        $.ajax({
            url: url,
            type: "GET",
            success: function (data) {
                console.log(data);
                resultToArray(data);
                elementsWasGetted= true;
            },
            error: function (msg) {
                alert('Ошибка:'+msg.responseText);
            }
        });
    }

    $(tag).autocomplete({
        source: elements,
        change: function(event,ui){
            if (!ui.item)
            {
                $(this).val('');
            }
        }
    });

    $(tag).autocomplete( "option", "appendTo", "#formAddPlacemark" );

    $(tag).focus(function () {
        if (!elementsWasGetted) {
            getAllElements();
        }
    })
}



$(function () {
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });

    setAutocomplete("#location", '/autocomplete/user/locations_subject');

































    // var data = [
    //     {label:"Цимлянское водохранилище", value:"Цимлянское водохранилище"},
    //     {label:"Волгоградское водохранилище", value:"Волгоградское водохранилище"}
    // ];
    //
    // const field = document.getElementById('location');
    // const ac = new Autocomplete(field, {
    //     data: data,
    //     maximumItems: 5,
    //     // onSelectItem: ({label, value}) => {
    //     //     console.log("user selected:", label, value);
    //     // }
    // });

// later, when you need to change the dataset

    // ac.setData([
    //     {label: 'New York JFK', value: 'JFK'},
    //     {label: 'Moscow SVO', value: 'SVO'},
    // ]);












    // var availableTags = [
    //     "Цимлянское водохранилище",
    //     "Волгоградское водохранилище",
    //     "река Волга",
    //     "река Ахтуба",
    //     "пруд Большой Лиман",
    // ];
    //
    // $("#location").autocomplete({
    //     source: availableTags
    // });

    // $("#location").attr('autocomplete', 'on');
});
