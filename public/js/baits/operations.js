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

    var name = $("#name");
    var img = $("#img");
    var type = $("#type");
    var desc = $("#desc")


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


    $(".btn-add").click(function () {
        $("#modal_form .modal-title").text("Добавить наживку");
        $("#formAddBite").attr("action", "baits/store");
        $("#formMethod").val('post');
        modal_form.show();
    });


    function setFields(card, nam) {
        var item = card.closest(".item");
        var t = item.data("category");
        var d = card.find(".card-desc").text().trim();
        name.val(nam);
        desc.val(d);
        type.val(t);
    }

    $(".btn-edit").click(function (e) {
        e.preventDefault();
        var form = $("#modal_form .modal-title");
        form.text("Изменить наживку");
        var nam = $(this).text();
        var card = $(this).closest(".card-body");
        setFields(card, nam);
        $("#formAddBite").attr("action", "baits/update");
        $("#formMethod").val('put');
        $("#form_oldname").val($("#name").val());
        modal_form.show();
    });

    $(".btn-remove").click(function(){
        modal_delete.show();
        var category = $(this).closest(".item").data("category");
        $("#delBiteType").val(category);
        var id = $(this).data("id");
        $("#delBiteId").val(id);
    });

    $("#modalBtnCancel").click(function () {
        $('#formAddBite')[0].reset();
        $('#formAddBite').removeClass("was-validated");
        modal_form.hide();
    });


    // $("#formAddBite").submit(function(e){
    //     e.preventDefault();
        // if (isFormValidate() && $("#modal_form .modal-title").text() === "Добавление маршрута")
        //     addRoute();
        // if (isFormValidate() && $("#modal_form .modal-title").text() === "Редактирование маршрута")
        //     editRouteInfo(editId);
    // })
});
