@if ($fish)
<div class="card col-lg-2 shadow @if($fish->isRed) red-fish @endif" style="width: 18rem;">
    <a class="fish-link" href="{{ route('fishes.item', ["name" => $fish->name]) }}">
        <img class="card-img-top" src="{{asset('storage').'/'.$fish['img']}}" alt="{{$fish['name']}}">
        <div class="card-body">
            <h4>{{$fish['name']}}</h4>
        </div>
    </a>
</div>
@endif
{{--<div class="card col-lg-2 shadow" style="width: 18rem;">--}}
{{--        <img class="card-img-top" src="storage/fishes/fish1.jpg" alt="Card image cap">--}}
{{--        <div class="card-body">--}}
{{--            <h4>Барабуля</h4>--}}
{{--        </div>--}}
{{--</div>--}}
