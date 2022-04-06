$(function () {
    var forms = document.querySelectorAll('.needs-validation');
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
    var catch_name = $("#catch_name");
    var catch_date = $("#catch_date");
    var catch_weight = $("#catch_weight");
    var catch_location = $("#catch_location");
    var catch_mark = $("#catch_mark");
    var catch_fish = $("#catch_fish");
    var catch_bite = $("#catch_bait");

    function isFormValidate() {
        var wasValid = true;
        $(".invalid-feedback").each(function () {
            if ($(this).css("display") != "none") wasValid = false;
        })
        return wasValid;
    }

    var modal_form = new bootstrap.Modal(document.getElementById('modal_form'), {
        keyboard: false
    });

    var modal_delete = new bootstrap.Modal(document.getElementById('modal_delete'), {
        keyboard: false
    });

    $("#btnAddCatch").click(function () {
        $('#formAddCatch')[0].reset();
        $("#modal_form .modal-title").text("Добавить улов");
        $("#formAddCatch").attr("action", "journal/store");
        modal_form.show();
    });



    function setFields(card) {
        var name = card.find(".card-title").text().trim();
        var date = card.find(".card-date").text().trim();
        var weight = card.find(".card-weight").text().trim();
        var fish =  card.find(".card-fish").text().trim();
        var mark =  card.find(".card-mark").text().trim();
        var location = card.find(".card-location").text().trim();
        var bait = card.find(".card-bait").text().trim();
        catch_name.val(name);
        catch_date.val(date);
        catch_weight.val(weight);
        catch_fish.val(fish);
        catch_mark.val(mark);
        catch_location.val(location);
        catch_bite.val(bait);
    }

    $(".btnEditCatch").click(function () {
        var form = $("#modal_form .modal-title");
        form.text("Изменить улов");
        var card = $(this).closest(".card-body");
        setFields(card);
        $("#formAddCatch").attr("action", "journal/update");
        $("#catchId").val($(this).closest(".card").data("id"));
        modal_form.show();
    });

    $(".btn-remove").click(function(){
        $("#delCatchId").val($(this).closest(".card").data("id"));
        modal_delete.show();
    });

    $("#modalBtnCancel").click(function () {
        $('#formAddCatch')[0].reset();
        $('#formAddCatch').removeClass("was-validated");
        modal_form.hide();
    });

    // $("#formAddCatch").submit(function(e){
    //     e.preventDefault();
        // if (isFormValidate() && $("#modal_form .modal-title").text() === "Добавление маршрута")
        //     addRoute();
        // if (isFormValidate() && $("#modal_form .modal-title").text() === "Редактирование маршрута")
        //     editRouteInfo(editId);
    // })

});
