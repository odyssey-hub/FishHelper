@extends('layouts.user.layout')

@section('links')
    <link href="https://code.jquery.com/ui/1.12.1/themes/flick/jquery-ui.css" rel="stylesheet">
    <link rel="stylesheet" href="{{asset("css/locations_catalog/catalog.css")}}">
    <link rel="stylesheet" href="{{asset("css/locations_catalog/reds.css")}}">
@endsection

@section('scripts')
    <script src="https://code.jquery.com/ui/1.12.0/jquery-ui.min.js"
            integrity="sha256-eGE6blurk5sHj+rmkfsGYeKyZx3M4bG+ZlFyA7Kns7E=" crossorigin="anonymous"></script>
    <script src="{{asset("js/locations_catalog/autocomplete.js")}}"></script>
@endsection

@section('title', "Справочник водоёмов")


@section('content')
    <div class="filter">
        <form id="formFilter1" method="GET" action="{{route("locations")}}">
        <div class="row">
            <div class="col-lg-1"></div>
            <div class="col-lg-5 filter-input">
                <div class="searchbox input-group">
                    <input name="locationName" id="searchLocation" type="search" class="form-control rounded" placeholder="Введите название водоёма..." aria-label="Search"
                           aria-describedby="search-addon"
                           value="{{request()["locationName"]}}"/>
                    <button type="submit" class="btn btn-outline-primary">Поиск</button>
                </div>
            </div>
        </div>
        </form>
        <form id="formFilter2" method="GET" action="{{route("locations")}}">
        <div class="row mt-4">
            <div class="col-lg-1"></div>
            <div class="col-lg-2 filter-input">
                <select name="locationType" class="form-select" aria-label="Пример выбора по умолчанию">
                    <option value="Все типы" @if(request()["locationType"] == "Все типы") selected @endif>Все типы</option>
                    @foreach($types as $type)
                        <option value="{{$type->name}}" @if(request()["locationType"] == $type->name) selected @endif>{{$type->name}}</option>
                    @endforeach
                </select>
            </div>
            <div class="col-lg-4 filter-input" style="margin-left: 2rem">
                <div class="subjectbox input-group" >
                    <input name="subject" id="subject" type="text" class="form-control rounded" placeholder="Введите субъект..."
                    value="{{request()["subject"]}}"/>
                </div>
            </div>
            <div class="col-lg-2 filter-input">
                <div class="form-check mt-2">
                    <input name="reds" class="form-check-input" type="checkbox" id="checkReds" @if(request()["reds"] == "on") checked @endif>
                    <label class="form-check-label" for="checkReds" style="color:#212529">
                        Ловля запрещена
                    </label>
                </div>
            </div>
            <div class="col-lg-1">
                <button type="submit" class="btn btn-primary">Фильтрация</button>
            </div>
        </div>
        </form>
    </div>
    <div class="cards mt-5">
        <section class="light">
            <div class="container py-2">
                @foreach($locations as $location)
                @include('locations_catalog.card', ["location"=>$location])
                @endforeach
            </div>
        </section>
    </div>

    @if(count($locations) == 0)
        <div class="container">
            <div class="alert alert-danger" role="alert">
                Ничего не найдено
            </div>
        </div>
    @endif

    <div class="d-flex justify-content-center mt-5">
        {{$locations->links()}}
    </div>

{{--    <div class="new_pagination mt-5">--}}
{{--        <nav aria-label="Пример навигации по страницам" class="text-xs-center">--}}
{{--            <ul class="pagination" style="background: #f3f5f7">--}}
{{--                <li class="page-item">--}}
{{--                    <a class="page-link" href="#" aria-label="Предыдущая">--}}
{{--                        <span aria-hidden="true">&laquo;</span>--}}
{{--                    </a>--}}
{{--                </li>--}}
{{--                <li class="page-item"><a class="page-link" href="#">1</a></li>--}}
{{--                <li class="page-item"><a class="page-link" href="#">2</a></li>--}}
{{--                <li class="page-item"><a class="page-link" href="#">3</a></li>--}}
{{--                <li class="page-item">--}}
{{--                    <a class="page-link" href="#" aria-label="Следующая">--}}
{{--                        <span aria-hidden="true">&raquo;</span>--}}
{{--                    </a>--}}
{{--                </li>--}}
{{--            </ul>--}}
{{--        </nav>--}}
@endsection
