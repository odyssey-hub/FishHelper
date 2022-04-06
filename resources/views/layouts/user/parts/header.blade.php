<header>
    <nav class="px-3 py-2">
        <div class="container">
            <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
                <a href="/" class="d-flex align-items-center my-2 my-lg-0 me-lg-auto text-white text-decoration-none">
                    {{--                    <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"/></svg>--}}
                    <div style="text-align: center; margin-right: 1.3rem;">
                        <i class="fas fa-fish  fa-3x"></i>
                    </div>
                    <h2>FishHelper</h2>
                </a>

                <ul class="nav col-12 col-lg-auto my-2 justify-content-center my-md-0 text-small">
                    @auth
                    <li>
                        <a href="{{ route('map') }}" class="nav-link @routeactive('map')" >
                            <div style="text-align: center;">
                                <i class="fas fa-map-marker-alt fa-2x"></i>
                            </div>
                            Карта
                        </a>
                    </li>
                    <li>
                        <a href="{{ route('journal') }}" class="nav-link @routeactive('journal')">
                            <div style="text-align: center;">
                                <i class="fas fa-address-book fa-2x"></i>
                            </div>
                            Дневник
                        </a>
                    </li>
                    <li>
                        <a href="{{ route('baits') }}" class="nav-link @routeactive('baits')">
                            <div style="text-align: center;">
                                <i class="fas fa-tools fa-2x"></i>
                            </div>
                            Наживки
                        </a>
                    </li>
                        <li>
                            <a href="{{ route('search') }}" class="nav-link @routeactive('search')">
                                <div style="text-align: center;">
                                    <i class="fas fa-search fa-2x"></i>
                                </div>

                                Поиск мест
                            </a>
                        </li>
                        <li>
                            <a href="{{ route('forecast') }}" class="nav-link @routeactive('forecast')">
                                <div style="text-align: center;">
                                    <i class="fas fa-chart-line fa-2x"></i>
                                </div>
                                Прогноз
                            </a>
                        </li>
                        <li>
                            <a href="{{route("weather")}}" class="nav-link @routeactive('weather')">
                                <div style="text-align: center;">
                                    <i class="fas fa-cloud fa-2x"></i>
                                </div>
                                Погода
                            </a>
                        </li>
                    @endauth
                    <li>
                        <a href="{{ route('fishes') }}" class="nav-link @routeactive("fishes*")">
                            <div style="text-align: center;">
                                <i class="fas fa-book fa-2x"></i>
                            </div>
                            Виды рыб
                        </a>
                    </li>
                    <li>
                        <a href="{{ route('locations') }}" class="nav-link @routeactive('locations*')">
                            <div style="text-align: center;">
                                <i class="fas fa-water fa-2x"></i>
                            </div>
                            Водоёмы
                        </a>
                    </li>



                </ul>
            </div>
        </div>
    </nav>
    <div class="px-3 py-2 border-bottom mb-3">
        <div class="container d-flex flex-wrap justify-content-center">
            <form class="col-12 col-lg-auto mb-2 mb-lg-0 me-lg-auto">
                <input type="search" class="form-control" placeholder="Search..." aria-label="Search" style="display: none">
            </form>

            <div class="text-end">
                @guest
                <a href="{{route("login_form")}}"><button type="button" class="btn btn-light text-dark me-2">Войти</button></a>
                <a href="{{route("register_form")}}"><button type="button" class="btn btn-primary">Регистрация</button></a>
                @endguest
                @auth
                        <span class="text-black mx-5">Вы вошли как {{Auth::user()->name}}</span>
                        <a href="{{route("logout")}}"><button type="button" class="btn btn-primary">Выйти</button></a>
                    @endauth
            </div>
        </div>
    </div>
</header>
