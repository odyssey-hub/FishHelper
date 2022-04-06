<div class="card my-4 shadow rounded" data-id="{{$catch->id}}">
    <div class="row no-gutters">
        <div class="col-md-4">
{{--            https://images.pexels.com/photos/45910/goldfish-carassius-fish-golden-45910.jpeg?cs=srgb&dl=pexels-pixabay-45910.jpg&fm=jpg--}}
            <img  @isset($catch->img) src="{{asset('storage').'/'.$catch->img}}" @endisset
                  @empty($catch->img) src="{{asset('storage').'/no_img/catch.jpg'}}" @endempty
                  alt="{{$catch->fish}}" title="{{$catch->fish}}" class="card-img h-100" />
        </div>
        <div class="col-md-8">
            <div class="card-body">
                <div class="d-flex justify-content-between">
                    <h5 class="card-title">
                        {{$catch->name}}</h5>
                    <div class="btn-remove">
                        <i id="btnDelCatch" class="fas fa-times" style="color:darkred"></i>
                    </div>
                </div>

                <p class="card-text">
                    <i>Отметка:</i> <span class="card-mark">{{$catch->mark}}</span>
                </p>
                <p class="card-text">
                    <i>Локация:</i> <span class="card-location">{{$catch->location}}</span>
                </p>
                <p class="card-text">
                    <i>Вид рыбы:</i> <span class="card-fish">{{$catch->fish}}</span>
                </p>
                @isset($catch->weight)
                <p class="card-text">
                    <i>Вес рыбы:</i> <span class="card-weight">{{$catch->weight}}</span>кг
                </p>
                @endisset
                @isset($catch->bite)
                <p class="card-text">
                    <i>Наживка:</i> <span class="card-bait">{{$catch->bite}}</span>
                </p>
                @endisset
                <div class="mt-5">
                    <div class="d-flex justify-content-between">
                        <div>
                            <p class="card-text float-right">
                                <small class="text-muted"> <i class="fa fa-clock-o"></i> <span class="card-date">{{$catch->date}}</span></small>
                            </p>
                        </div>
                        <div>
                            <i class="btnEditCatch fas fa-edit" style="font-size: 1.3rem"></i>
                        </div>
                    </div>
                </div>
{{--                <button class="btn btn-primary btn-block">--}}
{{--                    <i class="fa fa-newspaper-o pr-2"></i> Read more--}}
{{--                </button>--}}
            </div>
        </div>
    </div>
</div>
