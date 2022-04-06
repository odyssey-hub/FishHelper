<div class="col-lg-3 col-md-6 mb-4 mb-lg-0 mt-3">
    <!-- Card-->
    <div class="card rounded shadow-sm border-0">
        <div class="card-body p-4">
            <img @isset($bite->img) src="{{asset('storage').'/'.$bite->img}}" @endisset
                 @empty($bite->img) src="{{asset('storage').'/no_img/bite.jpg'}}" @endempty
            alt="{{$bite->name}}" title="{{$bite->name}}" class="img-fluid d-block mx-auto mb-3">
            <h5 class="card-title"> <a href="#" class="btn-edit text-dark">{{$bite->name}}</a></h5>
            <p class="small text-muted font-italic card-desc">
                @if($bite->description){{$bite->description}}
                @else {{$bite->name}}
                @endif
            </p>
            <div class="d-flex justify-content-between">
                <div><p class="mb-0"><i>{{$bite->catch_num}} уловов</i></p></div>
               <div class="btn-remove" data-id="{{$bite->id}}"><i id="btnDelCatch" class="fas fa-times" style="color:darkred"></i></div>
            </div>

        </div>
    </div>
</div>

{{--https://avatars.mds.yandex.net/i?id=1a19b462c9554232713ccff29c95a8d9-5234808-images-thumbs&n=13&exp=1--}}
