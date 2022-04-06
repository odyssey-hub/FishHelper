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
    setAutocomplete("#subject", "/autocomplete/subjects");
    setAutocomplete("#fish", "/autocomplete/fishes_not_red");
});
