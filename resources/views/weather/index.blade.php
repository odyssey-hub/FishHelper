@extends('layouts.user.layout')

@section('links')
    <link href="https://code.jquery.com/ui/1.12.1/themes/flick/jquery-ui.css" rel="stylesheet">
    <link rel="stylesheet" href="{{asset("css/weather/weather.css")}}">
    <link rel="stylesheet" href="{{asset("css/weather/current_weather.css")}}">
@endsection

@section('scripts')
    <script src="https://code.jquery.com/ui/1.12.0/jquery-ui.min.js"
            integrity="sha256-eGE6blurk5sHj+rmkfsGYeKyZx3M4bG+ZlFyA7Kns7E=" crossorigin="anonymous"></script>
    <script type="text/javascript" src="{{asset("js/forecasting/datepicker-ru.js")}}"></script>
    <script src="https://api-maps.yandex.ru/2.1/?lang=ru_RU&amp;apikey=5baa014e-f93b-4f23-9fae-7f17f7e710d2"
            type="text/javascript"></script>
    <script src="{{asset("js/weather/datepicker.js")}}"></script>
    <script src="{{asset("js/weather/autocomplete.js")}}"></script>
    <script src="{{asset("js/weather/map.js")}}"></script>
    @isset($weather)
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.6.0/chart.min.js"></script>
        <script src="{{asset("js/weather/charts.js")}}"></script>
    @endisset
@endsection

@section('title', "Просмотр погоды")


@section("content")
    <div class="container">
        <div class="filter mb-5">
            <form id="formCoords" action="{{route("weather")}}" name="formCoords" method="GET">
            <div class="row">
                <div class="filter-wrap col-lg-4" >
                    <div class="filter-input input-group text-center">
                        <div class="col-lg-4">
                            <label for="subject">Субъект</label>
                        </div>
                        <div class="col-lg-8 input-wrap">
                            <input name="subject" id="subject" type="text" class="form-control rounded" placeholder="Укажите субъект..."
                                   @isset($request) value = "{{$request["subject"]}}" @endisset
                                    @empty($request) value = "{{auth()->user()->subject}}" @endempty/>
                        </div>

                    </div>
                </div>
            </div>
            <div class="row mt-3">
                <div class="filter-wrap col-lg-4">
                    <div class="filter-input input-group text-center">
                        <div class="col-lg-4">
                            <label for="location">Водоем</label>
                        </div>
                        <div class="col-lg-8 input-wrap">
                            <input name="location" id="location"  type="text" class="form-control rounded" size="25" placeholder="Укажите водоем..."
                                   @isset($request) value = "{{$request["location"]}}" @endisset/>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row mt-3">
                <div class="filter-wrap col-lg-4">
                    <div class="filter-input input-group text-center">
                        <div class="col-lg-4">
                            <label for="coorX">Координаты<span class="text-danger">*</span></label>
                        </div>
                        <div class="col-lg-2">
                            <input id="coorX" name="coorX" type="text" class="form-control rounded" size="7" placeholder="X" required
                                   @isset($request) value = "{{$request["coorX"]}}" @endisset/>
                        </div>
                        <div class="col-lg-1"></div>
                        <div class="col-lg-2">
                            <input id="coorY" name="coorY" type="text" class="form-control rounded" size="7" placeholder="Y" required
                                   @isset($request) value = "{{$request["coorY"]}}" @endisset/>
                        </div>
                        <div class="col-lg-2">
                            <button id="btnOpenMap" type="button" class="btn btn-primary">Выбрать</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row mt-4">
                <div class="filter-wrap col-lg-4">
                    <div class="row filter-input input-group">
                        <div class="col-lg-12 text-center">
                            <button id="btnGetWeather" type="submit" class="btn btn-primary">Определить погодные характеристики</button>
                        </div>
                    </div>
                </div>
            </div>
            </form>
        </div>
        {{--            <form>--}}


        <div class="container mt-5">
            <div class="modal fade" id="modal_map">
                <div class="modal-dialog  modal-lg  modal-dialog-centered">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">Выберите место двойным щелчком</h5>
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


        @isset($weather)
        <div class="row">
            <div class="row filter-input input-group text-center">
                <div class="col-lg-5 input-wrap">
                    <input id="datepicker" value="{{date("d.m.y")}}" type="text" class="form-control rounded" size="25"
                           placeholder="Выберите дату..." data-date="{{date("d.m.y")}}"/>
                </div>
            </div>
        </div>
        <div class="card-group mb-5">
{{--            <div class="card card-3 col-lg-8 bg-info">--}}
{{--                <div class="weather-items row">--}}
{{--                    <div class="col">--}}
{{--                        <div class="row row1">{{round($weather->daily[0]->temp->morn)}}&deg;</div>--}}
{{--                        <div class="row row2"><img class="img-fluid"--}}
{{--                                                   alt="{{$weather->daily[0]->weather[0]->description}}"--}}
{{--                                                   title="{{$weather->daily[0]->weather[0]->description}}"--}}
{{--                                                   src="http://openweathermap.org/img/wn/{{$weather->daily[0]->weather[0]->icon}}@4x.png" /></div>--}}
{{--                        <div class="row row3">Утро</div>--}}
{{--                    </div>--}}
{{--                    <div class="col">--}}
{{--                        <div class="row row1">{{round($weather->daily[0]->temp->day)}}&deg;</div>--}}
{{--                        <div class="row row2"><img class="img-fluid" src="https://img.icons8.com/ios/100/000000/sun.png" /></div>--}}
{{--                        <div class="row row3">День</div>--}}
{{--                    </div>--}}
{{--                    <div class="col">--}}
{{--                        <div class="row row1">{{round($weather->daily[0]->temp->eve)}}&deg;</div>--}}
{{--                        <div class="row row2"><img class="img-fluid" src="https://img.icons8.com/windows/100/000000/cloud.png" /></div>--}}
{{--                        <div class="row row3">Вечер</div>--}}
{{--                    </div>--}}
{{--                    <div class="col">--}}
{{--                        <div class="row row1">{{round($weather->daily[0]->temp->night)}}&deg;</div>--}}
{{--                        <div class="row row2"><img class="img-fluid" src="https://img.icons8.com/windows/100/000000/cloud.png" alt="папапапап" title="розовый динозаврик" /></div>--}}
{{--                        <div class="row row3">Ночь</div>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--            </div>--}}
            <div class="weather-details card text-white bg-info col-lg-4">
                <div class="card-body">
                    <h3 class="card-title">Погода</h3>
                    <div class="row">
                        <div class="col-lg-6 text-center">
                            <figure>
                                <p><img
                                    alt="{{$weather->daily[0]->weather[0]->description}}"
                                    title="{{$weather->daily[0]->weather[0]->description}}"
                                    src="http://openweathermap.org/img/wn/{{$weather->daily[0]->weather[0]->icon}}@4x.png" /></p>
                                <figcaption><h5>{{$weather->daily[0]->weather[0]->description}}</h5></figcaption>
                            </figure>
                        </div>
                        <div class="temp-parts col-lg-6">
                            <p class="card-text">Утро: <span id="tmpMorn">{{round($weather->daily[0]->temp->morn)}}</span>&deg;</p>
                            <p class="card-text">День: <span id="tmpDay">{{round($weather->daily[0]->temp->day)}}</span>&deg;</p>
                            <p class="card-text">Вечер: <span id="tmpEve">{{round($weather->daily[0]->temp->eve)}}</span>&deg;</p>
                            <p class="card-text">Ночь: <span id="tmpNight">{{round($weather->daily[0]->temp->night)}}</span>&deg;</p>
                        </div>
                    </div>

                </div>
            </div>

            <div class="weather-details card text-white bg-info col-lg-4">
                <div class="card-body">
                    <h5 class="card-title">Погодные характеристики</h5>
                    <p class="card-text"><i class="fas fa-tachometer-alt"></i> Давление: <span id="wPressure">{{$weather->daily[0]->pressure}}</span> мм.рт.ст.</p>
                    <p class="card-text"><i class="fas fa-wind"></i> Скорость ветра: <span id="wWindSpeed">{{$weather->daily[0]->wind_speed}}</span> м/c</p>
                    <p class="card-text"><i class="fas fa-location-arrow"></i> Направление ветра: <span id="wWindDir">{{$weather->daily[0]->wind_deg}}</span></p>
                    <p class="card-text"><i class="fas fa-cloud"></i> Облачность: <span id="wClouds">{{$weather->daily[0]->clouds}}</span>%</p>
                    <p class="card-text"><i class="fas fa-tint"></i> Влажность: <span id="wHumid">{{$weather->daily[0]->humidity}}</span>%</p>
                    <p class="card-text"><i class="fas fa-sun"></i> УФ-индекс: <span id="wUvi">{{$weather->daily[0]->uvi}}</span></p>
                </div>
            </div>
        </div>
        @endisset

        @isset($temps)
        <div class="T-chart shadow">
            <h3>Динамика температуры</h3>
            <div>
                <canvas id="chartTemperatures" width="800" height="400"></canvas>
            </div>

        </div>
        @endisset
        @isset($pressures)
        <div class="P-chart shadow">
            <h3>Динамика давления</h3>
            <div>
                <canvas id="chartPressures" width="800" height="400"></canvas>
            </div>

        </div>

        @endisset
    </div>


    @isset($temps)
        <ul class="d-none" id="temps">
            @foreach($temps as $date=>$temp)
                <li class="temp">{{$date}}:{{$temp}}</li>
            @endforeach
        </ul>
    @endisset


    @isset($pressures)
    <ul class="d-none" id="pressures">
        @foreach($pressures as $date=>$pressure)
            <li class="pressure">{{$date}}:{{$pressure}}</li>
        @endforeach
    </ul>
    @endisset



@endsection




