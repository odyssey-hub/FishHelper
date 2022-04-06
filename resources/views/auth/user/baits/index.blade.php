@extends('layouts.user.layout')

@section('links')
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@mdi/font@6.5.95/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="css/baits/tabs.css">
    <link rel="stylesheet" href="css/baits/index.css">
{{--    <link rel="stylesheet" href="css/jqTheme/jqx.darkblue.css">--}}
{{--<link rel="stylesheet" href="https://jqwidgets.com/public/jqwidgets/styles/jqx.darkblue.css">--}}
@endsection

@section('scripts')
{{--    <script src="js/jqWidgets/jqxcore.js"></script>--}}
{{--    <script src="js/jqWidgets/jqxbuttons.js"></script>--}}
{{--    <script src="js/jqWidgets/jqxtabs.js"></script>--}}
{{--    <script src="https://jqwidgets.com/public/jqwidgets/jqx-all.js"></script>--}}
    <script src="js/baits/tabs.js"></script>
    <script src="js/baits/operations.js"></script>

@endsection

@section('title', "Насадки и наживки")


@section('content')
    <div class="container p-3">
        <div class="row">
            <div class="icon-tab col-xs-12 col-sm-2 col-sm-offset-3 @if(!session("category") || session("category") == "Воблеры") active @endif">
                <span class="fas fa-fish"></span>
                <span class="icon-label">Воблеры</span>
            </div>
            <div class="icon-tab col-xs-12 col-sm-2 @if(session("category") == "Блесны") active @endif">
                <span class="fas fa-anchor"></span>
                <span class="icon-label">Блесны</span>
            </div>
            <div class="icon-tab col-xs-12 col-sm-2 @if(session("category") == "Поролоновые") active @endif">
                <span class="fas fa-certificate"></span>
                <span class="icon-label">Поролоновые</span>
            </div>
            <div class="icon-tab col-xs-12 col-sm-2 col-sm-offset-3 @if(session("category") == "Мягкие") active @endif">
                <span class="fas fa-spider"></span>
                <span class="icon-label">Мягкие</span>
            </div>
            <div class="icon-tab col-xs-12 col-sm-2  @if(session("category") == "Животные") active @endif">
                <span class="fas fa-bug"></span>
                <span class="icon-label">Животные</span>
            </div>
            <div class="icon-tab col-xs-12 col-sm-2 @if(session("category") == "Растительные") active @endif">
                <span class="fas fa-seedling"></span>
                <span class="icon-label">Растительные</span>
            </div>
        </div>
    </div>

    <!-- Your elements -->
    <div class="container">
        <div class="item col-sm-12 col-sm-offset-1" data-category="Воблеры">
                <div>
                   <button class="btn btn-primary btn-success btn-add"> <i class="fas fa-plus"></i> Добавить новую наживку</button>
                </div>
                <div class="row pb-5 mb-4">
                    @foreach($bites as $bite)
                    @if ($bite->type == "Воблеры")
                    @include("auth.user.baits.card", ["bite"=>$bite])
                    @endif
                    @endforeach
                </div>
        </div>
        <div class="item col-sm-12 col-sm-offset-1" data-category="Блесны">
            <div>
                <button class="btn btn-primary btn-success btn-add"> <i class="fas fa-plus"></i> Добавить новую наживку</button>
            </div>
            <div class="row pb-5 mb-4">
                @foreach($bites as $bite)
                @if ($bite->type == "Блесны")
                        @include("auth.user.baits.card", ["bite"=>$bite])
                @endif
                @endforeach
            </div>
        </div>
        <div class="item col-sm-12 col-sm-offset-1" data-category="Поролоновые">
            <div>
                <button class="btn btn-primary btn-success btn-add"> <i class="fas fa-plus"></i> Добавить новую наживку</button>
            </div>
            <div class="row pb-5 mb-4">
                @foreach($bites as $bite)
                @if ($bite->type == "Поролоновые")
                        @include("auth.user.baits.card", ["bite"=>$bite])
                @endif
                @endforeach
            </div>
        </div>
        <div class="item col-sm-12 col-sm-offset-1" data-category="Мягкие">
            <div>
                <button class="btn btn-primary btn-success btn-add"> <i class="fas fa-plus"></i> Добавить новую наживку</button>
            </div>
            <div class="row pb-5 mb-4">
                @foreach($bites as $bite)
                @if ($bite->type == "Мягкие")
                        @include("auth.user.baits.card", ["bite"=>$bite])
                @endif
                @endforeach
            </div>
        </div>
        <div class="item col-sm-12 col-sm-offset-1" data-category="Животные">
            <div>
                <button class="btn btn-primary btn-success btn-add"> <i class="fas fa-plus"></i> Добавить новую наживку</button>
            </div>
            <div class="row pb-5 mb-4">
                @foreach($bites as $bite)
                @if ($bite->type == "Животные")
                        @include("auth.user.baits.card", ["bite"=>$bite])
                @endif
                @endforeach
            </div>
        </div>
        <div class="item col-sm-12 col-sm-offset-1" data-category="Растительные">
            <div>
                <button class="btn btn-primary btn-success btn-add"> <i class="fas fa-plus"></i> Добавить новую наживку</button>
            </div>
            <div class="row pb-5 mb-4">
                @foreach($bites as $bite)
                @if ($bite->type == "Растительные")
                        @include("auth.user.baits.card", ["bite"=>$bite])
                @endif
                @endforeach
            </div>
        </div>
    </div>
    @include("auth.user.baits.modals")



{{--    <div class="container p-3">--}}
{{--        --}}


{{--        <!-- First Row [Prosucts]-->--}}
{{--        <h2 class="font-weight-bold mb-2">From the Shop</h2>--}}
{{--        <p class="font-italic text-muted mb-4">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.</p>--}}

{{--        <div class="row pb-5 mb-4">--}}
{{--            @include("auth.user.baits.card")--}}
{{--            @include("auth.user.baits.card")--}}
{{--            @include("auth.user.baits.card")--}}
{{--            @include("auth.user.baits.card")--}}

{{--            @include("auth.user.baits.card")--}}
{{--            @include("auth.user.baits.card")--}}

{{--            @include("auth.user.baits.card")--}}
{{--            @include("auth.user.baits.card")--}}
{{--            @include("auth.user.baits.card")--}}

{{--        </div>--}}

{{--    </div>--}}


@endsection
