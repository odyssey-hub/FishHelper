<div class="container">
    <footer class="d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top">
        <p class="col-md-4 mb-0 text-muted">&copy; 2022 FishCompany, Inc</p>

        <a href="/" class="col-md-4 d-flex align-items-center justify-content-center mb-3 mb-md-0 me-md-auto link-dark text-decoration-none">
            <div style="text-align: center;">
                <i class="fas fa-fish fa-3x"></i>
            </div>
        </a>

        <ul class="nav col-md-4 justify-content-end">
            <li class="nav-item"><a href="{{route("fishes")}}" class="nav-link px-2 text-muted">Виды рыб</a></li>
            <li class="nav-item"><a href="{{route("locations")}}" class="nav-link px-2 text-muted">Водоёмы</a></li>
            @auth
            <li class="nav-item"><a href="{{route("map")}}" class="nav-link px-2 text-muted">Моя карта</a></li>
            <li class="nav-item"><a href="{{route("journal")}}" class="nav-link px-2 text-muted">Дневник</a></li>
            <li class="nav-item"><a href="{{route("baits")}}" class="nav-link px-2 text-muted">Наживки</a></li>
            <li class="nav-item"><a href="{{route("search")}}" class="nav-link px-2 text-muted">Поиск мест</a></li>
            <li class="nav-item"><a href="{{route("forecast")}}" class="nav-link px-2 text-muted">Прогноз клева</a></li>
                <li class="nav-item"><a href="{{route("weather")}}" class="nav-link px-2 text-muted">Погода</a></li>
                @endauth
        </ul>
    </footer>
</div>
