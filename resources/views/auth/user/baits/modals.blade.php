<div class="container mt-5">
    <div class="modal fade" id="modal_form">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Добавление наживки</h5>
                    <button type="button" class="btn-close btn-close-white text-reset" data-bs-dismiss="modal"></button>
                </div>
                <form id="formAddBite" method="POST" action="{{route("baits.store")}}" enctype="multipart/form-data" class="needs-validation" novalidate>
                    @csrf
                    <input id="formMethod" type="hidden" name="_method" value="put"/>
                    <div class="modal-body">
                        <div class="mb-3">
                            <input id="form_oldname" type="hidden" name="oldname" value="none">
                            <label class="form-label required" for="name">Название<span class="star-required">*</span></label>
                            <input class="form-control" type="text" name="name" id="name" minlength="3"
                                   maxlength="30" placeholder="Введите название наживки" required>
                            <div class="valid-feedback">
                                Все хорошо!
                            </div>
                            <div class="invalid-feedback">
                                Укажите название наживки (до 30 символов)
                            </div>
                        </div>

                        <div class="mb-3">
                            <label class="form-label required" for="desc">Заметка</label>
                            <input class="form-control" type="text" name="description" id="desc" minlength="3"
                                   maxlength="50" placeholder="Введите заметку">
                            <div class="valid-feedback">
                                Все хорошо!
                            </div>
                            <div class="invalid-feedback">
                                Заметка должна быть не больше 50 символов
                            </div>
                        </div>

                        <div class="mb-3">
                            <label class="form-label required" for="type">Категория<span class="star-required">*</span></label>

                            <select class="form-select" id="type" name="type" aria-label="Default select example" required>
                                <option selected>Воблеры</option>
                                <option>Блесны</option>
                                <option>Поролоновые</option>
                                <option>Мягкие</option>
                                <option>Животные</option>
                                <option>Растительные</option>
                            </select>
                            <div class="valid-feedback">
                                Все хорошо!
                            </div>
                            <div class="invalid-feedback">
                                У вас нет такой наживки
                            </div>
                        </div>

                        <div class="mb-3 ">
                            <label class="form-label required" for="img">Изображение</label>
                            <input class="form-control" type="file" name="img" id="img"
                                   placeholder="Выберите файл" accept=".jpg,.jpeg,.png">
                            <div class="valid-feedback">
                                Все хорошо!
                            </div>
                            <div class="invalid-feedback">
                                Неверный формат файла (только jpg, png)
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
                Вы точно хотите удалить данную наживку ?
            </div>
            <div class="modal-footer modal-footer-delete justify-content-around">
                <button type="button" class="btn btn-primary" data-bs-dismiss="modal">Нет</button>
                <form action="{{route("baits.destroy")}}" method="POST">
                    @csrf
                @method('DELETE')
                    <input name="id" id="delBiteId" type="hidden" value="0">
                    <input name="type" id="delBiteType" type="hidden" value="0">
                <button type="submit" class="btn btn-danger" id="modalBtnDelConfirm">Да</button>
                </form>
            </div>
        </div>
    </div>
</div>
