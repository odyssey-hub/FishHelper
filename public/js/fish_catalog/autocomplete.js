$(function(){
    function setAutocomplete(tag, url, sendData = null)
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
                data: {
                    data: sendData
                },
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
        });

        $(tag).focus(function () {
            if (!elementsWasGetted) {
                getAllElements();
            }
        })
    }
    setAutocomplete("#searchFish", "autocomplete/fishes");
});
