<form  name="formFilter" id="formFilter" method="GET" action="{{route("journal")}}" autocomplete="off">
    <div class="card">
        <article class="card-group-item">
            <header class="card-header">
                <h5 class="title">Сортировка</h5>
            </header>
            <div class="filter-content">
                <div class="card-body">
                    <div class="row mb-3">
                        <label for="sortField" class="col-sm-3 col-form-label">Поле</label>
                        <div class="col-sm-9">
                            <select name="sortField" id="sortField" class="form-select" aria-label="Default select example">
                                <option value="date" selected>По дате</option>
                                <option value="locations.name">По локации</option>
                                <option value="fish.name">По виду рыбы</option>
                                <option value="fish_catches.weight">По весу улова</option>
                            </select>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="sortOrder" class="col-sm-3 col-form-label">Порядок</label>
                        <div class="col-sm-9">
                            <select name="sortOrder" id="sortOrder" class="form-select" aria-label="Default select example">
                                <option value="desc" selected>По убыванию</option>
                                <option value="asc">По возрастанию</option>
                            </select>
                        </div>

                    </div>
                </div> <!-- card-body.// -->
            </div>
        </article> <!-- card-group-item.// -->

        <article class="card-group-item">
            <header class="card-header">
                <h5 class="title">Дата</h5>
            </header>
            <div class="filter-content">
                <div class="card-body">
                    <div class="row mb-3">
                        <label for="date_start" class="col-sm-3 col-form-label">С</label>
                        <div class="col-sm-9">
                            <input type="text" name="date_start" id="date_start" class="form-control rounded datepicker" size="25"
                                   placeholder="Выберите дату начала..." value="{{request()["date_start"]}}"/>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="date_end" class="col-sm-3 col-form-label">По</label>
                        <div class="col-sm-9">
                            <input type="text" name="date_end" id="date_end" class="form-control rounded datepicker" size="25"
                                   placeholder="Выберите дату окончания..." value="{{request()["date_end"]}}"/>
                        </div>
                    </div>
                </div> <!-- card-body.// -->
            </div>
        </article> <!-- card-group-item.// -->

        <article class="card-group-item">
            <header class="card-header">
                <h5 class="title">Вид рыбы</h5>
            </header>
            <div class="filter-content">
                <div class="card-body">
                    <div class="row mb-3">
                        <label for="filter_fish" class="col-sm-3 col-form-label">Вид</label>
                        <div class="col-sm-9">
                            <input type="text" name="fish" id="filter_fish" class="form-control rounded" size="25"
                                   placeholder="Введите название рыбы..." value="{{request()["fish"]}}"/>
                        </div>
                    </div>
                </div> <!-- card-body.// -->
            </div>
        </article> <!-- card-group-item.// -->

        <article class="card-group-item">
            <header class="card-header">
                <h5 class="title">Локация</h5>
            </header>
            <div class="filter-content">
                <div class="card-body">
                    <div class="row mb-3">
                        <label for="filter_location" class="col-sm-3 col-form-label">Локация</label>
                        <div class="col-sm-9">
                            <input type="text" name="location" id="filter_location" class="form-control rounded" size="25"
                                   placeholder="Введите локацию..." value="{{request()["location"]}}"/>
                        </div>
                    </div>
                </div> <!-- card-body.// -->
            </div>
        </article> <!-- card-group-item.// -->

        <article class="card-group-item">
            <header class="card-header">
                <h5 class="title">Вес улова</h5>
            </header>
            <div class="filter-content">
                <div class="card-body">
                    <div class="row mb-3">
                        <label for="weight_min" class="col-sm-3 col-form-label">Мин.</label>
                        <div class="col-sm-9">
                            <input type="number" name="weight_min" id="weight_min" class="form-control rounded" size="25"
                                   placeholder="Введите число..." value="{{request()["weight_min"]}}"/>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="weight_max" class="col-sm-3 col-form-label">Макс.</label>
                        <div class="col-sm-9">
                            <input type="number" name="weight_max" id="weight_max" class="form-control rounded" size="25"
                                   placeholder="Введите число..." value="{{request()["weight_max"]}}"/>
                        </div>
                    </div>
                </div> <!-- card-body.// -->
            </div>
        </article> <!-- card-group-item.// -->

    </div> <!-- card.// -->
{{--    <div class="row mt-3">--}}
{{--        <div class="col-lg-4"></div>--}}
{{--        <div class="col-lg-8">--}}
{{--            <button class="btn btn-primary">Фильтрация по заданным полям</button>--}}
{{--        </div>--}}
{{--    </div>--}}

    <div class="mt-3">
        <div class="d-flex justify-content-evenly">
            <div><button type="submit" class="btn btn-primary">Фильтрация</button></div>
            <div><a href="{{route("journal")}}" class="btn btn-danger">Сброс</a></div>
        </div>


    </div>
</form>
