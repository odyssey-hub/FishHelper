function setAutocomplete(tag, url, forFilter=false, forSearch = false)
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

    if (!forFilter) {
        $(tag).autocomplete( "option", "appendTo", "#formAddCatch" );
    } else if (!forSearch) {
        $(tag).autocomplete( "option", "appendTo", "#formFilter" );
    }


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


    setAutocomplete("#catch_fish", 'autocomplete/fishes_not_red');
    setAutocomplete("#searchName", "autocomplete/user/catches", true,true);
    setAutocomplete("#catch_mark", 'autocomplete/user/marks');
    setAutocomplete("#catch_bait", 'autocomplete/user/baits');
    setAutocomplete("#filter_fish", 'autocomplete/user/fishes', true);
    setAutocomplete("#filter_location", 'autocomplete/user/locations', true);

});
