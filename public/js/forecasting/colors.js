$(function () {
        $(".card-location").each(function () {
            var value =  +$(this).find(".quality-value").text();
            if (value >= 80 && value <=100){
                setColor($(this),"green", "Отличный клев");
            }
            else if (value >= 60 && value <= 79){
                setColor($(this),"limegreen", "Хороший клев");
            }
            else if (value >= 40 && value <=59) {
                setColor($(this),"orange", "Средний клев");
            }
            else if (value >= 20 && value <=39) {
                setColor($(this),"red", "Плохой клев");
            }
            else {
                setColor($(this),"darkred", "Нет клева");
            }

        });

        function setColor(element,color, label){
            element.find(".card-header").css("background",color);
            element.find(".progress-bar").css("background",color);
            element.find(".progress-bar2").css("border-color",color);
            element.find(".progress-value").css("color",color);
            element.find(".percent").css("color",color);
            element.find(".quality-label").css("color", color);
            element.find(".quality-label").text(label);
            element.find(".btn-show-map").css("background", color);
        }

});
