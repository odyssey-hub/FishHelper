@extends('layouts.user.layout')

@section('links')
    <link href="{{asset("css/locations_catalog/item.css")}}" rel="stylesheet">
@endsection

@section('scripts')
    <script src="{{asset("js/fish_catalog/slider.js")}}"></script>
    <script src="https://api-maps.yandex.ru/2.1/?lang=ru_RU&amp;apikey=5baa014e-f93b-4f23-9fae-7f17f7e710d2"
            type="text/javascript"></script>
    <script src="{{asset("js/locations_catalog/map.js")}}"></script>
@endsection

@section('title', "Просмотр водоема")

@section("content")

    <div class="container shadow">
        <div class="title text-center">
            <h1 class="location-name">{{$location->name}}</h1>
        </div>

        <div class="locations-slider d-none d-sm-block mt-5">
            <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-indicators">
                    @foreach($images as $img)
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="{{$loop->index}}" aria-label="Slide {{$loop->index+1}}"
                            @if($loop->first)aria-current="true" class="active"@endif></button>
                    @endforeach
                </div>
                <div class="carousel-inner">
                    @foreach($images as $img)
                    <div class="carousel-item @if($loop->index == 0) active @endif">
                        <img src="{{asset("storage/".$img->img)}}" class="d-block w-100" alt="{{$location->name}}" title="{{$location->name}}">
                    </div>
                    @endforeach
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </div>
        <div class="general-info mt-4">
            <p><b>Тип:</b> {{$location->type}}</p>
            <p><b>Площадь:</b> <span>{{$location->square}}</span>км<sup>2</sup></p>
            <p><b>Средняя глубина:</b> <span>{{$location->depth}}</span>м</p>
            <p><b>Субъект:</b> {{$location->subject}}</p>
            <p><b>Координаты:</b> {{$location->coorX}}, {{$location->coorY}}</p>
        </div>
        <div class="description mt-4">
            <h5><b>Описание:</b></h5>
            {{$location->description}}
        </div>
        @if(!$location->isRed && count($fishes))
        <div class="fishes mt-3">
            <h5><b>Обитающие виды рыб:</b></h5>
            <div class="cards mt-4">
                @foreach($fishes as $fish)
                    <div class="card mb-3 shadow-sm" style="width: 15rem;">
                        <a class="fish-link" href="{{ route('fishes.item', ["name"=>$fish->name])}}">
                            <img class="card-img-top" src="{{asset('storage/'.$fish->img)}}" alt="{{$fish->name}}" title="{{$fish->name}}">
                            <div class="card-body text-center">
                                <h4>{{$fish->name}}</h4>
                            </div>
                        </a>
                    </div>
                @endforeach
            </div>
        </div>
        @endif
        <div class="placefind mt-3">
            <h5><b>Расположение:</b></h5>
            <div id="map" data-coorx="{{$location->coorX}}" data-coory="{{$location->coorY}}"></div>
        </div>
    </div>


@endsection
