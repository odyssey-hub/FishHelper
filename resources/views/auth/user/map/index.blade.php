@extends('layouts.user.layout')

@section('meta')
    <meta name="csrf-token" content="{{ csrf_token() }}" >
@endsection

@section('links')
    <link href="https://code.jquery.com/ui/1.12.1/themes/flick/jquery-ui.css" rel="stylesheet">
    <link rel="stylesheet" href="css/map/index.css">
@endsection

@section('scripts')
    <script src="https://code.jquery.com/ui/1.12.0/jquery-ui.min.js"
            integrity="sha256-eGE6blurk5sHj+rmkfsGYeKyZx3M4bG+ZlFyA7Kns7E=" crossorigin="anonymous"></script>
    <script src="https://api-maps.yandex.ru/2.1/?lang=ru_RU&amp;apikey=5baa014e-f93b-4f23-9fae-7f17f7e710d2"
            type="text/javascript"></script>

    <script src="{{asset('js/map/preload.js')}}"></script>
    <script src="{{asset("js/map/autocomplete.js")}}" type="text/javascript"></script>


    <script>
        window.fishMarks = @json($marks);
        window.waterMarks = @json($locations);
    </script>
    <script type="module" src="{{asset("js/map/card_layouts.js")}}"></script>
    <script type="module" src="{{asset("js/map/map.js")}}"></script>
@endsection

@section('title', "Моя карта")


@section('content')

    <div class="instruction">
        <button class="btn btn-warning" type="button" data-bs-toggle="collapse" data-bs-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
            Инструкция
        </button>
    </div>
    <div class="collapse" id="collapseExample">
        <div class="card card-body">
            1)Для добавления метки нажмите на кнопку "Добавить метку" (в левом верхнем углу карты) и выберите то место, куда хотите поставить метку. Для выхода из режима добавления метки еще раз нажмите
            на кнопку "Добавить метку".
            В открывшемся окне укажите уникальное название
            метки, водоем метки и по желанию можете указать заметку. При успешном добавлении выведется соответствующее сообщение.<br/>
            2)При выборе отметки отображаются все принадлежащие ей уловы.<br/>
            3)Для изменения данных отметки выберите нужную отметку и нажмите кнопку "Изменить" (в правом верхнем углу карты).<br/>
            4)Для удаления отметки выберите нужную отметку и нажмите кнопку "Удалить" (в правом верхнем углу карты).<br/>
        </div>
    </div>

    <div>
        <div id="map"></div>
    </div>

    <div class="panel" style="display:none;">
        <h4 class="text-center">Уловы</h4>
        <div class="hr-theme-slash-2">
            <div class="hr-line"></div>
            <div class="hr-icon"><i class="fas fa-fish" style="color:blue"></i></div>
            <div class="hr-line"></div>
        </div>

        <div class="cards">

        </div>
    </div>


    <div class="container mt-5">
        <div class="modal fade" id="modal_form">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header" style="background-color: #0000b8; color:white">
                        <h5 class="modal-title">Добавление отметки</h5>
                        <button type="button" class="btn-close btn-close-white text-reset" data-bs-dismiss="modal"></button>
                    </div>
                    <form id="formAddPlacemark" class="needs-validation" novalidate>
                        <div class="modal-body">
                            <div class="mb-3">
                                <label class="form-label required" for="name">Название отметки</label>
                                <input class="form-control" type="text" name="name" id="name" minlength="3"
                                       maxlength="30" placeholder="Введите название отметки" required>
                                <div class="valid-feedback">
                                    Все хорошо!
                                </div>
                                <div class="invalid-feedback">
                                    Укажите название отметки
                                </div>
                            </div>
                            <div class="mb-3">
                                <label class="form-label required" for="location">Водоем</label>
                                <input class="form-control" type="text" name="location" id="location" minlength="3"
                                       maxlength="100" placeholder="Введите водоем отметки" required>
                                <div class="valid-feedback">
                                    Все хорошо!
                                </div>
                                <div class="invalid-feedback">
                                    Укажите водоем отметки
                                </div>
                            </div>
                            <div class="mb-3 ">
                                <label class="form-label required" for="desc">Заметка</label>
                                <textarea class="form-control" name="desc" id="desc" cols="30"
                                          placeholder="Можете оставить заметку" maxlength="255"></textarea>
                                <div class="valid-feedback">
                                    Все хорошо!
                                </div>
                                <div class="invalid-feedback">
                                    Укажите заметку
                                </div>
                            </div>

                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-primary" id="modalBtnAdd">Принять</button>
                            <button type="button" class="btn btn-danger" id="modalBtnCancel" data-bs-dismiss="modal" aria-label="Close">Отмена
                            </button>
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
                    Вы точно хотите удалить данную отметку ?
                </div>
                <div class="modal-footer modal-footer-delete justify-content-around">
                    <button type="button" class="btn btn-primary" data-bs-dismiss="modal">Нет</button>
                    <button type="button" class="btn btn-danger" id="modalBtnDelConfirm">Да</button>
                </div>
            </div>
        </div>
    </div>

    <div class="position-fixed bottom-0 end-0 p-3" style="z-index: 11">
        <div id="toastAddConfirm" class="toast hide" role="alert" aria-live="assertive" aria-atomic="true">
            <div class="toast-header bg-success">
                <strong class="me-auto text-light">Успешное добавление</strong>
                <button type="button" class="btn-close btn-close-white" data-bs-dismiss="toast" aria-label="Close"></button>
            </div>
            <div class="toast-body bg-light">
                Метка добавлена на карту
            </div>
        </div>
    </div>

    <div class="position-fixed bottom-0 end-0 p-3" style="z-index: 11">
        <div id="toastEditConfirm" class="toast hide" role="alert" aria-live="assertive" aria-atomic="true">
            <div class="toast-header bg-success">
                <strong class="me-auto text-light">Успешное изменение</strong>
                <button type="button" class="btn-close btn-close-white" data-bs-dismiss="toast" aria-label="Close"></button>
            </div>
            <div class="toast-body bg-light">
                Данные метки изменены
            </div>
        </div>
    </div>

    <div class="position-fixed bottom-0 end-0 p-3" style="z-index: 11">
        <div id="toastDeleteConfirm" class="toast hide" role="alert" aria-live="assertive" aria-atomic="true">
            <div class="toast-header bg-success">
                <strong class="me-auto text-light">Успешное удаление</strong>
                <button type="button" class="btn-close btn-close-white" data-bs-dismiss="toast" aria-label="Close"></button>
            </div>
            <div class="toast-body bg-light">
                Метка успешно удалена
            </div>
        </div>
    </div>


    <div class="text-center">
        <div class="spinner-border text-primary" style="width: 15rem; height: 15rem;" role="status">
            <span class="visually-hidden">Loading...</span>
        </div>
    </div>






@endsection
