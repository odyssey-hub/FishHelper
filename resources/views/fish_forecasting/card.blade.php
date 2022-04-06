{{--AwesomeCard--}}
<div class="card-location card shadow rounded" data-coorx="{{$location->coorX}}" data-coory="{{$location->coorY}}" >
    <div class="card-header text-white">
        Место #{{$loop->index+1}}
    </div>
    <div class="card-body">
        <div class="row">
            <div class="col-lg-10">
                <h3 class="card-title font-weight-bold">{{$location->name}}</h3>
                <div class="location-factors d-sm-flex justify-content-between">
                    @isset($weather)
                    <div>
                        <p class="card-text @isset($location->plus_factors["Осадки"]) isOn @endif"><i>Погода:</i> {{$weather->weather[0]->description}} </p>
                        <p class="card-text @isset($location->plus_factors["Температура"]) isOn @endif" ><i>Температура:</i>
                         @if(request()["daytime"] == "утро")    {{$weather->temp->morn}}
                            @elseif(request()["daytime"] == "день") {{$weather->temp->day}}
                            @elseif(request()["daytime"] == "вечер") {{$weather->temp->eve}}
                            @elseif(request()["daytime"] == "ночь") {{$weather->temp->night}}
                            @endif
                            °C
                        </p>
                        <p class="card-text @isset($location->plus_factors["Давление"]) isOn @endif"><i>Давление:</i> {{$weather->pressure}} мм.рт.ст.</p>
                        <p class="card-text @isset($location->plus_factors["Сила ветра"]) isOn @endif" ><i>Сила ветра:</i> {{$weather->wind_speed}} м/c</p>

                    </div>
                    <div>
                        <p class="card-text @isset($location->plus_factors["Облачность"]) isOn @endif"><i>Облачность:</i> {{$weather->clouds}}% </p>
                        <p class="card-text @isset($location->plus_factors["Влажность"]) isOn @endif"><i>Влажность:</i> {{$weather->humidity}}% </p>
                        <p class="card-text @isset($location->plus_factors["УФ индекс"]) isOn @endif"><i>УФ индекс:</i> {{$weather->uvi}} </p>
                    </div>
                        <div>
                            <p class="card-text @isset($location->plus_factors["Время суток"]) isOn @endif"><i>Время суток:</i> {{request()["daytime"]}}</p>
                            <p class="card-text @isset($location->plus_factors["Время года"]) isOn @endif"><i>Время года:</i> {{$season}} </p>
                            <p class="card-text @isset($location->plus_factors["Фаза луны"]) isOn @endif"><i>Фаза луны:</i> {{$weather->moon_phase}} </p>
                        </div>
                    @endisset
                </div>
                <div class="mt-2">
                    <button type="button" class="btn btnOpenMap btn-show-map text-white">Показать на карте</button>
                </div>

            </div>
            <div class="col-lg-2 mt-2">
                <div class="progress2 blue mx-0" data-value="{{$location->P}}">
                                    <span class="progress-left">
                                        <span class="progress-bar2"></span>
                                    </span>
                    <span class="progress-right">
                                        <span class="progress-bar2"></span>
                                    </span>
                    <div class="progress-value"><span class="quality-value">{{$location->P}}</span><span class="percent">%</span></div>
                </div>
            </div>
        </div>
    </div>
    <div class="card-footer text-muted">
        <div class="row">
            <div class="col-lg-9 p-0 progress">
                <div class="progress-bar" role="progressbar" style="width: {{$location->P}}%" aria-valuenow="{{$location->P}}" aria-valuemin="0" aria-valuemax="100"></div>
            </div>
            <div class="col-lg-1"></div>
            <div class="col-lg-2">
                <span class="quality-label font-weight-bold">Отличный клев</span>
            </div>
        </div>

    </div>
</div>

