@extends('layouts.user.layout')

@section('links')
    <link href="https://code.jquery.com/ui/1.12.1/themes/flick/jquery-ui.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/jquery-ui-timepicker-addon/1.6.3/jquery-ui-timepicker-addon.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/journal/index.css">
@endsection

@section('scripts')
    <script src="https://code.jquery.com/ui/1.12.0/jquery-ui.min.js"
            integrity="sha256-eGE6blurk5sHj+rmkfsGYeKyZx3M4bG+ZlFyA7Kns7E=" crossorigin="anonymous"></script>
    <script src={{asset("js/journal/autocomplete.js")}}></script>
    <script type="text/javascript" src="{{asset("js/forecasting/datepicker-ru.js")}}"></script>
    <script type="text/javascript" src="{{asset("js/forecasting/timepicker-ru.js")}}"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-ui-timepicker-addon/1.6.3/jquery-ui-timepicker-addon.min.js"></script>
    <script src="{{asset("js/journal/timepicker.js")}}"></script>
    <script src="{{asset("js/journal/operations.js")}}"></script>
@endsection

@section('title', "Журнал уловов")


@section('content')
        <div class="search row">
            <div class="col-lg-3">
{{--                <button type="button" class="btn btn-primary">Фильтрация</button>--}}
            </div>
            <div class="col-lg-5">
                <form name="formSearch" id="formSearch" action="{{route("journal")}}" method="GET">
                <div class="searchbox input-group">
                    <input id="searchName" name="catchName" type="search" class="form-control rounded" placeholder="Введите название улова..." aria-label="Search"
                           aria-describedby="search-addon"
                           @if (session("updated_record"))
                           value="{{session("updated_record")}}"
                           @else
                           value="{{request()["catchName"]}}"
                           @endif/>
                    <button type="submit" class="btn btn-outline-primary">Поиск</button>
                </div>
                </form>
            </div>
            <div class="col-lg-4">
                <button class="btn btn-success" id="btnAddCatch"><i class="fas fa-plus"></i> Добавить улов</button>
            </div>
        </div>
        <div class="list-items row">
            <div class="sidebar col-lg-3 mt-4">
            @include("auth.user.journal.sidebar")
            </div>
            <div class="cards col-lg-9">
                @if(session("add_success"))
                    <div class="container container-alert mt-5">
                        <div class="alert alert-success" role="alert">
                            Запись успешно добавлена
                        </div>
                    </div>
                @endif
                @if(session("del_success"))
                <div class="container container-alert mt-5">
                    <div class="alert alert-success" role="alert">
                        Запись успешно удалена
                    </div>
                </div>
                @elseif (session("updated_record"))
                    <div class="container container-alert mt-5">
                        <div class="alert alert-success" role="alert">
                            Запись успешно изменена
                        </div>
                    </div>
                @endif

                @foreach($catches as $catch)
                @include("auth.user.journal.card", ["catch"=>$catch])
                @endforeach
                    @if(count($catches) == 0)
                        <div class="container container-alert mt-5">
                            <div class="alert alert-danger" role="alert">
                                Ничего не найдено
                            </div>
                        </div>
                    @endif
            </div>
        </div>



        <div class="d-flex justify-content-center mt-5">
            {{$catches->links()}}
        </div>



        @include("auth.user.journal.modals")
@endsection
