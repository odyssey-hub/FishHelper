$(function () {
    function setAutocomplete(tag, url, strong = true)
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
        if (strong)
        {
            $(tag).autocomplete({
                source: elements,
                change: function(event,ui){
                    if (!ui.item)
                    {
                        $(this).val('');
                    }
                }
            });
        } else {
            $(tag).autocomplete({
                source: elements,
            });
        }


        $(tag).focus(function () {
            if (!elementsWasGetted) {
                getAllElements();
            }
        })
    }
    setAutocomplete("#searchLocation", "/autocomplete/locations", false);
    setAutocomplete("#subject","/autocomplete/subjects");

});

