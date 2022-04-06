@extends('layouts.user.layout')

@section('links')
    {{--    <link rel="stylesheet" href="css/search_places.css">--}}
    <link href="https://code.jquery.com/ui/1.12.1/themes/flick/jquery-ui.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/jquery-ui-timepicker-addon/1.6.3/jquery-ui-timepicker-addon.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/forecasting/progress.css">
    <link rel="stylesheet" href="css/forecasting/forecasting.css">
@endsection

@section('scripts')
    <script src="https://code.jquery.com/ui/1.12.0/jquery-ui.min.js"
            integrity="sha256-eGE6blurk5sHj+rmkfsGYeKyZx3M4bG+ZlFyA7Kns7E=" crossorigin="anonymous"></script>
    <script type="text/javascript" src="{{asset("js/forecasting/datepicker-ru.js")}}"></script>
    <script src="js/forecasting/autocomplete.js"></script>
    <script src="js/forecasting/datepicker.js"></script>
    @isset($locations)
    <script src="https://api-maps.yandex.ru/2.1/?lang=ru_RU&amp;apikey=5baa014e-f93b-4f23-9fae-7f17f7e710d2"
            type="text/javascript"></script>
    <script src="js/forecasting/colors.js"></script>
    <script src="js/forecasting/progress.js"></script>
    <script src="js/search/map.js"></script>
    @endisset
@endsection

@section('title', "Прогноз клева")


@section("content")
    <div class="container py-3">
        <form id="formFilter" method="GET" action="{{route("forecast")}}" autocomplete="off">
        <div class="filter">
            <div class="row">
                <div class="filter-wrap col-lg-4">
                    <div class="filter-input input-group text-center">
                        <div class="col-lg-4">
                            <label for="subject">Субъект<span class="text-danger">*</span></label>
                        </div>
                        <div class="col-lg-8 input-wrap">
                            <input name="subject" id="subject" type="text" class="form-control rounded"
                                   placeholder="Введите субъект..." required
                            @if(request()["subject"]) value="{{request()["subject"]}} @endif"
                                   @empty($request) value = "{{auth()->user()->subject}}" @endempty/>
                        </div>

                    </div>
                </div>
            </div>
            <div class="row mt-3">
                <div class="filter-wrap col-lg-4">
                    <div class="filter-input input-group text-center">
                        <div class="col-lg-4">
                            <label for="fish">Вид рыбы<span class="text-danger">*</span></label>
                        </div>
                        <div class="col-lg-8 input-wrap">
                            <input name="fish" id="fish" type="text" class="form-control rounded" size="25"
                                   placeholder="Введите вид рыбы..." required
                            value="{{request()["fish"]}}"/>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row mt-3">
                <div class="filter-wrap col-lg-4">
                    <div class="row filter-input input-group text-center">
                        <div class="col-lg-4 col-2">
                            <label for="datepicker">Дата<span class="text-danger">*</span></label>
                        </div>
                        <div class="col-lg-8 col-10 input-wrap">
                            <input name="date" id="datepicker" type="text" class="form-control rounded" size="25"
                                   placeholder="Выберите дату..." required
                            value="{{request()["date"]}}"/>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row mt-3">
                <div class="filter-wrap col-lg-4">
                    <div class="row filter-input input-group text-center">
                        <div class="col-lg-4 col-3">
                            <label for="daytime">Время<span class="text-danger">*</span></label>
                        </div>
                        <div class="col-lg-8 col-9 input-wrap">
                            <select name="daytime" class="form-select" aria-label="Пример выбора по умолчанию" required>
                                <option @if(request()["daytime"]=="утро") selected @endif>утро</option>
                                <option @if(request()["daytime"]=="день") selected @endif>день</option>
                                <option @if(request()["daytime"]=="вечер") selected @endif>вечер</option>
                                <option @if(request()["daytime"]=="ночь") selected @endif>ночь</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>


            <div class="row mt-4">
                <div class="filter-wrap col-lg-4">
                    <div class="row filter-input input-group text-center">
                        <div class="col-lg-12">
                            <button id="btnSearchPlaces" type="submit" class="btn btn-primary">Поиск мест для рыбной
                                ловли
                            </button>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        </form>
    </div>


    @isset($locations)
        <div class="container mt-5">
            <div class="card-factors card border-info mb-5">
                    <div class="card-header" style="background-color: #0d6efd; color:white">Лучшие условия клева для рыбы {{request()["fish"]}}</div>
                    <div class="card-body">
                        <h5 class="card-title">{{request()["fish"]}}</h5>
                        <div class="d-sm-flex justify-content-between">
                            @foreach ($factors->chunk(count($factors)/2) as $chunk)
                            <div>
                                @foreach($chunk as $factor)
                                    <p class="card-text"><i>{{$factor->name}}({{$factor->units}})</i>: {{$factor->opt_values}} ({{$factor->weight*100}}% значимости)</p>
                                @endforeach
                            </div>
                            @endforeach
                        </div>

                    </div>
            </div>
        </div>
        @foreach($locations as $location)
        <div class="cards mt-5">
            <div class="container">
                @isset($location->weather)
                @include("fish_forecasting.card", ["location"=>$location, "weather"=>$location->weather])
                @endisset
                @empty($location->weather)
                        @include("fish_forecasting.card", ["location"=>$location])
                    @endempty
            </div>
        </div>
        @endforeach

        @if(count($locations) == 0)
            <div class="container">
                <div class="alert alert-danger" role="alert">
                    Ничего не найдено. Попробуйте изменить параметры.
                </div>
            </div>
        @endif


        <div class="container mt-5">
            <div class="modal fade" id="modal_map">
                <div class="modal-dialog  modal-lg  modal-dialog-centered">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">Местоположение</h5>
                            <button type="button" class="btn-close btn-close-white text-reset" data-bs-dismiss="modal"></button>
                        </div>
                        <div class="modal-body">
                            <div id="map"></div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-primary" id="modalBtnOK">ОК</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    @endisset

@endsection




