<div class="container mt-5">
    <div class="modal fade" id="modal_form">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Добавление улова</h5>
                    <button type="button" class="btn-close btn-close-white text-reset" data-bs-dismiss="modal"></button>
                </div>
                <form id="formAddCatch" enctype="multipart/form-data" method="POST" name="formAddCatch" action="{{route("journal.store")}}"
                      class="needs-validation" novalidate autocomplete="off">
                    @csrf
                    @method("PUT")

                    <input type="hidden" name="id" id="catchId" value="0">
                    <div class="modal-body">
                        <div class="mb-3">
                            <label class="form-label required" for="catch_name">Название улова<span class="star-required">*</span></label>
                            <input class="form-control" type="text" name="name" id="catch_name" minlength="3"
                                   maxlength="30" placeholder="Введите название улова" required>
                            <div class="valid-feedback">
                                Все хорошо!
                            </div>
                            <div class="invalid-feedback">
                                Укажите название улова (до 30 символов)
                            </div>
                        </div>

                        <div class="mb-3">
                            <label class="form-label required" for="catch_date">Дата<span class="star-required">*</span></label>
                            <input class="form-control datepicker" type="text" name="date" id="catch_date" maxlength="255"
                                   placeholder="Укажите дату и время" required>
                            <div class="valid-feedback">
                                Все хорошо!
                            </div>
                            <div class="invalid-feedback">
                                Укажите дату(дд.мм.гггг) и время (чч.мм)
                            </div>
                        </div>


                        <div class="mb-3">
                            <label class="form-label required" for="catch_fish">Вид рыбы<span class="star-required">*</span></label>
                            <input class="form-control" type="text" name="fish" id="catch_fish" minlength="3"
                                   maxlength="30" placeholder="Введите вид рыбы" required>
                            <div class="valid-feedback">
                                Все хорошо!
                            </div>
                            <div class="invalid-feedback">
                                Укажите вид рыбы (до 50 символов)
                            </div>
                        </div>


                        <div class="mb-3 ">
                            <label class="form-label required" for="catch_mark">Отметка<span class="star-required">*</span></label>
                            <input class="form-control" type="text" name="mark" id="catch_mark" maxlength="255"
                                   placeholder="Введите название отметки" required>
                            <div class="valid-feedback">
                                Все хорошо!
                            </div>
                            <div class="invalid-feedback">
                                Укажите название отметки
                            </div>
                        </div>

                        <div class="mb-3 d-none">
                            <label class="form-label required" for="catch_location">Водоем<span class="star-required">*</span></label>
                            <input class="form-control" type="text" id="catch_location" maxlength="255"
                                   placeholder="Водоем, в котором находится отмтека">
                            <div class="valid-feedback">
                                Все хорошо!
                            </div>
                            <div class="invalid-feedback">
                                Укажите водоем
                            </div>
                        </div>

                        <div class="mb-3 ">
                            <label class="form-label required" for="catch_weight">Вес улова(кг)</label>
                            <input class="form-control" type="number" name="weight" id="catch_weight"
                                   placeholder="5,4" min="0" max="20" step="0.01">
                            <div class="valid-feedback">
                                Все хорошо!
                            </div>
                            <div class="invalid-feedback">
                                Должно быть числом
                            </div>
                        </div>

                        <div class="mb-3">
                            <label class="form-label required" for="catch_bait">Наживка</label>
{{--                            <select class="form-select" id="catch_location" aria-label="Default select example">--}}
{{--                                <option selected>Нет</option>--}}
{{--                                <optgroup label="Группа 1">--}}
{{--                                    <option value="Наживка">Опарыш</option>--}}
{{--                                    <option value="2">Two</option>--}}
{{--                                    <option value="3">Three--}}
{{--                                </optgroup>--}}
{{--                            </select>--}}
                            <input class="form-control" type="text" name="bite" id="catch_bait" maxlength="255"
                                   placeholder="Укажите наживку">
                            <div class="valid-feedback">
                                Все хорошо!
                            </div>
                            <div class="invalid-feedback">
                                У вас нет такой наживки
                            </div>
                        </div>




                        <div class="mb-3 ">
                            <label class="form-label required" for="catch_img">Изображение</label>
                            <input class="form-control" type="file" name="img" id="catch_img"
                                   placeholder="Выберите файл" accept=".jpg,.jpeg,.png">
                            <div class="valid-feedback">
                                Все хорошо!
                            </div>
                            <div class="invalid-feedback">
                                Неверный формат файла (только jpg, png)
                            </div>
                        </div>

                        <div class="mb-3 d-none">
                            <label class="form-label required" for="catch_desc">Заметка</label>
                            <textarea class="form-control"  id="catch_desc" cols="30"
                                      placeholder="Введите заметку" maxlength="250"></textarea>
                            <div class="valid-feedback">
                                Все хорошо!
                            </div>
                            <div class="invalid-feedback">
                                Укажите заметку (до 250 символов)
                            </div>
                        </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-primary" id="modalBtnAdd">Принять</button>
                        <button type="button" class="btn btn-danger" id="modalBtnCancel" data-bs-dismiss="modal" aria-label="Close">Отмена
                        </button>
                    </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>


<div class="modal fade" id="modal_delete" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
     aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="staticBackdropLabel">Подтверждение удаления</h5>
                <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal"
                        aria-label="Close"></button>
            </div>
            <div class="modal-body text-center">
                Вы точно хотите удалить данную запись ?
            </div>
            <div class="modal-footer modal-footer-delete justify-content-around">
                <form method="POST" action="{{route("journal.destroy")}}" >
                    @csrf
                    @method("DELETE")
                    <input  id="delCatchId" name="id" type="hidden" value="0">
                    <button type="button" class="btn btn-primary" data-bs-dismiss="modal">Нет</button>
                    <button type="submit" class="btn btn-danger" id="modalBtnDelConfirm">Да</button>
                </form>

            </div>
        </div>
    </div>
</div>

