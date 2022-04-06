@extends('layouts.user.layout')

@section('links')
    <link href="https://code.jquery.com/ui/1.12.1/themes/flick/jquery-ui.css" rel="stylesheet">
    <link rel="stylesheet" href="{{asset("css/fish_catalog/catalog.css")}}">
@endsection

@section("scripts")
    <script src="https://code.jquery.com/ui/1.12.0/jquery-ui.min.js"
            integrity="sha256-eGE6blurk5sHj+rmkfsGYeKyZx3M4bG+ZlFyA7Kns7E=" crossorigin="anonymous"></script>
    <script src="{{asset("js/fish_catalog/autocomplete.js")}}"></script>
    <script src="{{asset("js/fish_catalog/filter.js")}}"></script>
@endsection

@section('title', "Справочник рыб")


    @section("content")
        <div class="filter">
            <form name="formFilter" id="formFilter" method="GET" action="{{route("fishes")}}">
            <div class="row">
                <div class="col-lg-1 filter-input"></div>
                <div class="col-lg-4 col-11 filter-input">
                    <div class="searchbox input-group">
                        <input id="searchFish" name="fishName" type="search" class="form-control rounded" placeholder="Введите название рыбы..." aria-label="Search"
                               aria-describedby="search-addon"
                        value="{{request()["fishName"]}}" />
                        <button type="submit" class="btn btn-outline-primary">Поиск</button>
                    </div>
                </div>
                <div class="col-lg-2 col-8 filter-input">
                    <select id="filterType" name="filterType" class="form-select" aria-label="Пример выбора по умолчанию">
                        <option value="Все рыбы" @if(request()["filterType"] == "Все рыбы") selected @endif>Все рыбы</option>
                        <option value="Морские" @if(request()["filterType"] == "Морские") selected @endif>Морские</option>
                        <option value="Пресноводные" @if(request()["filterType"] == "Пресноводные") selected @endif>Пресноводные</option>
                        <option value="Проходные" @if(request()["filterType"] == "Проходные") selected @endif>Проходные</option>
                        <option value="Речные" @if(request()["filterType"] == "Речные") selected @endif>Речные</option>
                        <option value="Частиковые" @if(request()["filterType"] == "Частиковые") selected @endif>Частиковые</option>
                    </select>
                </div>
                <div class="col-lg-2 col-5 filter-input">
                    <div class="form-check mt-2">
                        <input name="reds" class="form-check-input" type="checkbox" id="checkReds" @if(request()["reds"] == "on") checked @endif>
                        <label class="form-check-label" for="checkReds">
                            Красные виды
                        </label>
                    </div>
                </div>
            </div>
            </form>
        </div>
{{--        <div class="fish-grid mt-5">--}}
{{--            <div class="card-group">--}}
{{--                    @include('fish_catalog.card', ['fish'=> $fishes[0]])--}}
{{--            </div>--}}
{{--        </div>--}}


        <div class="fish-grid mt-5">
            <div class="row">
                <div class="col-lg-1"></div>
                @isset($fishes[0]) @include('fish_catalog.card', ['fish'=> $fishes[0]]) @endisset
                @isset($fishes[1]) @include('fish_catalog.card', ['fish'=> $fishes[1]]) @endisset
                @isset($fishes[2]) @include('fish_catalog.card', ['fish'=> $fishes[2]]) @endisset
                @isset($fishes[3]) @include('fish_catalog.card', ['fish'=> $fishes[3]]) @endisset
                <div class="col-lg-1"></div>
            </div>
            <div class="row mt-4">
                <div class="col-lg-1"></div>
                @isset($fishes[4]) @include('fish_catalog.card', ['fish'=> $fishes[4]]) @endisset
                @isset($fishes[5]) @include('fish_catalog.card', ['fish'=> $fishes[5]]) @endisset
                @isset($fishes[6]) @include('fish_catalog.card', ['fish'=> $fishes[6]]) @endisset
                @isset($fishes[7]) @include('fish_catalog.card', ['fish'=> $fishes[7]]) @endisset
                <div class="col-lg-1"></div>
            </div>
            <div class="row mt-4">
                <div class="col-lg-1"></div>
                @isset($fishes[8]) @include('fish_catalog.card', ['fish'=> $fishes[8]]) @endisset
                @isset($fishes[9]) @include('fish_catalog.card', ['fish'=> $fishes[9]]) @endisset
                @isset($fishes[10]) @include('fish_catalog.card', ['fish'=> $fishes[10]]) @endisset
                @isset($fishes[11]) @include('fish_catalog.card', ['fish'=> $fishes[11]]) @endisset
                <div class="col-lg-1"></div>
            </div>
        </div>

        @if(count($fishes) == 0)
            <div class="container">
                <div class="alert alert-danger" role="alert">
                    Ничего не найдено
                </div>
            </div>
        @endif

{{--        <div class="new_pagination mt-5">--}}
{{--            <nav aria-label="Пример навигации по страницам" class="text-xs-center">--}}
{{--                <ul class="pagination" style="background: #f3f5f7">--}}
{{--                    <li class="page-item">--}}
{{--                        <a class="page-link" href="#" aria-label="Предыдущая">--}}
{{--                            <span aria-hidden="true">&laquo;</span>--}}
{{--                        </a>--}}
{{--                    </li>--}}
{{--                    <li class="page-item"><a class="page-link" href="#">1</a></li>--}}
{{--                    <li class="page-item"><a class="page-link" href="#">2</a></li>--}}
{{--                    <li class="page-item"><a class="page-link" href="#">3</a></li>--}}
{{--                    <li class="page-item">--}}
{{--                        <a class="page-link" href="#" aria-label="Следующая">--}}
{{--                            <span aria-hidden="true">&raquo;</span>--}}
{{--                        </a>--}}
{{--                    </li>--}}
{{--                </ul>--}}
{{--            </nav>--}}
{{--        </div>--}}
        <div class="d-flex justify-content-center mt-5">
            {{$fishes->links()}}
        </div>

    @endsection
