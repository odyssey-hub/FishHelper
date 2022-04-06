@extends('layouts.user.layout')

@section('links')
    <link href="{{asset("css/fish_catalog/item.css")}}" rel="stylesheet">
@endsection

@section('scripts')
    <script src="{{asset("js/fish_catalog/slider.js")}}"></script>
    @endsection

@section('title', "Просмотр рыбы")

@section("content")
    @isset($fish)

    <div class="container shadow">
        <div class="title text-center">
            <h1>{{$fish->fish_name}}</h1>
        </div>
        @isset($fish->latin)
        <div class="fish-names">
            <p><b>Латинское название:</b> {{$fish->latin}}</p>
            <p><b>Другие названия:</b> {{$fish->other_names}}</p>
        </div>
        @endisset
        <div class="fish-slider">
            <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-indicators">
                    @for ($i = 0; $i < count($fish->images); $i++)
                        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="{{$i}}" aria-label="Slide {{$i+1}}"
                                @if(!$i) class="active" aria-current="true" @endif></button>
                    @endfor
                </div>
                <div class="carousel-inner">
                    @foreach($fish->images as $image)
                    <div class="carousel-item @if($loop->first) active @endif">
                        <img src="{{asset("storage/".$image->img)}}" class="d-block w-100" alt="{{$fish->fish_name}}" title="{{$fish->fish_name}}">
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
        <div class="biological mt-4">
            <p><b>Семейство:</b> {{$fish->family}}</p>
            <p><b>Род:</b> {{$fish->genus}}</p>
            <p><b>Тип:</b> {{$fish->type}}</p>
            <p><b>Образ жизни:</b> {{$fish->lifestyle}}</p>
            <p><b>Тип питания:</b> {{$fish->food_type}}</p>
            <p><b>Ареал обитания:</b> {{$fish->area}}</p>
        </div>
        @isset($fish->appereance)
        <div class="appereance mt-4">
            <h5><b>Внешний вид:</b></h5>
            {{$fish->appereance}}
        </div>
        @endisset
        @isset($fish->habita)
        <div class="habitat mt-3">
            <h5><b>Среда обитания:</b></h5>
            {{$fish->habitat}}
        </div>
        @endisset
        @if(!$fish->isRed)
        @isset($fish->food_features)
        <div class="food mt-3">
            <h5><b>Особенности питания:</b></h5>
            {{$fish->food_features}}
        </div>
            @endisset
            @isset($fish->reproduction)
        <div class="breeding mt-3">
            <h5><b>Размножение:</b></h5>
            {{$fish->reproduction}}
        </div>
            @endisset
        @isset($fish->catches)
        <div class="catching mt-3">
            <h5><b>Способы ловли:</b></h5>
            {{$fish->catches}}
        </div>
        @endisset
        @isset($fish->baits)
        <div class="bites mt-3">
            <h5><b>Насадки:</b></h5>
            {{$fish->baits}}
        </div>
            @endisset
        @endif
    </div>
    @endisset
    @empty($fish)
        <div class="container shadow">
            <h3>Извините, информации пока нет</h3>
        </div>
    @endempty
@endsection
