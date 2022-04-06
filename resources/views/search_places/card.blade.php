<!-- Card Start -->
<div class="card shadow" data-coorx="{{$location->coorX}}" data-coory="{{$location->coorY}}">
    <div class="row ">
        <div class="col-md-8 px-3">
            <div class="card-block px-6">
                <h4 class="card-title">{{$location->name}}   (<i>№{{$loop->index+1}}</i>) @if($loop->index+1 <= 3)<span class="badge badge-primary">Рекомендовано</span>@endif</h4>
                @if(request()->filled("fish"))
                    <p class="card-text">Количество уловов по виду "{{request()["fish"]}}":   <b>{{$location->count}}</b></p>
                    <p class="card-text">Средний вес уловов: <b>{{round($location->weight,2)}}кг</b></p>
{{--                    <p class="card-text">{{substr($location->description, 0, 290)."..."}}</p>--}}
                @else
                    <p class="card-text">Количество уловов:   <b>{{$location->count}}</b></p>
                    <p class="card-text">{{substr($location->description, 0, 360)."..."}}</p>
                @endif

                <br>
                <button class="mt-auto btn btn-primary btnOpenMap">Посмотреть на карте</button>
            </div>
        </div>
        <!-- Carousel start -->
        <div class="col-md-4">
            <img class="d-block img-fluid" src="{{asset("storage/".$location->img)}}" alt="{{$location->name}}" title="{{$location->name}}">
        </div>
        <!-- End of carousel -->
    </div>
</div>
<!-- End of card -->
