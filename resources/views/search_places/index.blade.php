@extends('layouts.user.layout')

@section('links')
    <link href="https://code.jquery.com/ui/1.12.1/themes/flick/jquery-ui.css" rel="stylesheet">
    <link rel="stylesheet" href="{{asset("css/search/search_places.css")}}">
@endsection

@section("scripts")
    <script src="https://code.jquery.com/ui/1.12.0/jquery-ui.min.js"
            integrity="sha256-eGE6blurk5sHj+rmkfsGYeKyZx3M4bG+ZlFyA7Kns7E=" crossorigin="anonymous"></script>
    <script src="{{asset("js/search/autocomplete.js")}}"></script>
    @isset($locations)
        <script src="https://api-maps.yandex.ru/2.1/?lang=ru_RU&amp;apikey=5baa014e-f93b-4f23-9fae-7f17f7e710d2"
                type="text/javascript"></script>
        <script src="{{asset("js/search/map.js")}}"></script>
    @endisset
    @endsection

@section('title', "Поиск мест для рыбной ловли")


@section("content")
        <div class="container py-3">
            <div class="filter">
                <form id="formSearch" method="GET" action="{{route("search")}}">
                <div class="row">
                    <div class="filter-wrap  col-lg-4" >
                        <div class="filter-input input-group text-center">
                            <div class="col-lg-4">
                                <label for="subject">Субъект<span class="text-danger">*</span></label>
                            </div>
                            <div class="col-lg-8 input-wrap">
                                <input id="subject" name="subject" type="text" class="form-control rounded" placeholder="Введите субъект..." required
                                @if(request()["subject"]) value="{{request()["subject"]}}" @endif
                                       @empty($request) value = "{{auth()->user()->subject}}" @endempty/>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="filter-wrap  col-lg-4">
                        <div class="filter-input input-group text-center">
                            <div class="col-lg-4">
                                <label for="fish">Вид рыбы</label>
                            </div>
                            <div class="col-lg-8 input-wrap">
                            <input name="fish" id="fish"  type="text" class="form-control rounded" size="25" placeholder="Введите вид рыбы..."
                            value="{{request()["fish"]}}"/>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="filter-wrap col-lg-4">
                        <div class="row filter-input input-group text-center">
                            <div class="col-lg-4 col-3">
                                <label for="subject">Срок отбора<span class="text-danger">*</span></label>
                            </div>
                            <div class="col-lg-8 col-9 input-wrap select-wrap">
                            <select name="date" class="form-select" aria-label="Пример выбора по умолчанию" required>
                                <option @if(request()["date"]=="За последние 2 недели") selected @endif>За последние 2 недели</option>
                                <option @if(request()["date"]=="За последний месяц") selected @endif>За последний месяц</option>
                                <option @if(request()["date"]=="За последние 3 месяца") selected @endif>За последние 3 месяца</option>
                            </select>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row mt-4">
                    <div class="filter-wrap col-lg-4">
                        <div class="row filter-input input-group text-center">
                            <div class="col-lg-12">
                                <button id="btnSearchPlaces" type="submit" class="btn btn-primary">Поиск мест для рыбной ловли</button>
                            </div>
                        </div>
                    </div>
                </div>
                </form>
            </div>
{{--            <form>--}}
{{--                <div class="mb-3">--}}
{{--                    <label for="exampleInputEmail1" class="form-label">Субъект</label>--}}
{{--                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">--}}
{{--                    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>--}}
{{--                </div>--}}
{{--                <div class="mb-3">--}}
{{--                    <label for="exampleInputPassword1" class="form-label">Password</label>--}}
{{--                    <input type="text" class="form-control" id="exampleInputPassword1">--}}
{{--                </div>--}}
{{--                <button type="submit" class="btn btn-primary">Submit</button>--}}
{{--            </form>--}}


            @isset($locations)

            <div class="cards mt-5">
                <h4 style="padding-left: 5rem"><i>Количество результатов: <b>243</b></i></h4>
                @foreach($locations as $location)
                    @includeWhen($location->count,"search_places.card", ["location"=>$location])
                @endforeach
            </div>

                @if(count($locations) == 0)
                    <div class="container">
                        <div class="alert alert-danger" role="alert">
                            Ничего не найдено. Попробуйте повысить срок отбора
                        </div>
                    </div>
                @endif



                <div class="d-flex justify-content-center mt-5">
                    <ul class="pagination">
                        <li class="page-item disabled" aria-disabled="true" aria-label="« Назад">
                            <span class="page-link" aria-hidden="true">‹</span>
                        </li>
                        <li class="page-item active" aria-current="page"><span class="page-link">1</span></li>
                        <li class="page-item"><a class="page-link" href="http://afish/journal?page=2">2</a></li>
                        <li class="page-item"><a class="page-link" href="http://afish/journal?page=3">3</a></li>
                        <li class="page-item"><a class="page-link" href="http://afish/journal?page=4">4</a></li>
                        <li class="page-item"><a class="page-link" href="http://afish/journal?page=5">5</a></li>
                        <li class="page-item"><a class="page-link" href="http://afish/journal?page=6">6</a></li>
                        <li class="page-item"><a class="page-link" href="http://afish/journal?page=7">7</a></li>
                        <li class="page-item"><a class="page-link" href="http://afish/journal?page=8">8</a></li>
                        <li class="page-item"><a class="page-link" href="http://afish/journal?page=9">9</a></li>
                        <li class="page-item"><a class="page-link" href="http://afish/journal?page=10">10</a></li>
                        <li class="page-item disabled" aria-disabled="true"><span class="page-link">...</span></li
                        <li class="page-item"><a class="page-link" href="http://afish/journal?page=1002">24</a></li>
                        <li class="page-item"><a class="page-link" href="http://afish/journal?page=1003">25</a></li>
                        <li class="page-item">
                            <a class="page-link" href="http://afish/journal?page=2" rel="next" aria-label="Вперёд »">›</a>
                        </li>
                    </ul>
                </div>
{{--                <div class="d-flex justify-content-center mt-5">--}}
{{--                    {{$locations->links()}}--}}
{{--                </div>--}}

            @endisset
        </div>


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








{{--<div class="container">--}}
{{--    <div class="card mb-3" style="max-width: 540px;">--}}
{{--        <div class="row g-0">--}}
{{--            <div class="col-md-4">--}}
{{--                <img--}}
{{--                    src="https://mdbootstrap.com/wp-content/uploads/2020/06/vertical.jpg"--}}
{{--                    alt="..."--}}
{{--                    class="img-fluid rounded-start"--}}
{{--                />--}}
{{--            </div>--}}
{{--            <div class="col-md-8">--}}
{{--                <div class="card-body">--}}
{{--                    <h5 class="card-title">Card title</h5>--}}
{{--                    <p class="card-text">--}}
{{--                        This is a wider card with supporting text below as a natural lead-in to--}}
{{--                        additional content. This content is a little bit longer.--}}
{{--                    </p>--}}
{{--                    <p class="card-text">--}}
{{--                        <small class="text-muted">Last updated 3 mins ago</small>--}}
{{--                    </p>--}}
{{--                </div>--}}
{{--            </div>--}}
{{--        </div>--}}
{{--    </div>--}}
{{--</div>--}}



@endsection
