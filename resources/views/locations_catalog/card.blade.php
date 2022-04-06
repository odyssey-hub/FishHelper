@if (!$location->isRed)
<article class="postcard light blue">
    <a class="postcard__img_link" href="{{ route('locations.item', ["id"=> $location->id]) }}">
        <img class="postcard__img" src="{{asset('storage/'.$location->img)}}" alt="Image Title" />
    </a>
    <div class="postcard__text t-dark">
        <h1 class="postcard__title blue"><a href="{{ route('locations.item', ["id"=> $location->id]) }}"> {{$location->name}}</a></h1>
        <div class="postcard__subtitle small">
            {{$location->type}}
        </div>
        <div class="postcard__bar"></div>
        <div class="postcard__preview-txt">
            {{$location->description}}</div>
        <ul class="postcard__tagbox">
            <li class="tag__item"><i class="fa-brands mr-2"></i>{{$location->type}}</li>
            <li class="tag__item"><i class="fa-solid fa-house-building mr-2"></i>{{$location->subject}}</li>
            <li class="tag__item play blue"> <i class="fa-solid fa-s mr-2"></i>{{$location->square}} км<sup>2</sup></li>
        </ul>
    </div>
</article>
@else
    <article class="postcard light red">
        <a class="postcard__img_link" href="{{route('locations.item', ["id"=> $location->id]) }}">
            <img class="postcard__img" src="{{asset('storage/'.$location->img)}}" alt="Image Title" />
        </a>
        <div class="postcard__text t-dark">
            <h1 class="postcard__title red"><a href="{{ route('locations.item', ["id"=> $location->id]) }}"> {{$location->name}}</a></h1>
            <div class="postcard__subtitle small">
                {{$location->type}}
            </div>
            <div class="postcard__bar"></div>
            <div class="postcard__preview-txt">
                {{substr($location->description, 0, 450)."..."}}</div>
            <ul class="postcard__tagbox">
                <li class="tag__item"><i class="fa-brands mr-2"></i>{{$location->type}}</li>
                <li class="tag__item"><i class="fa-solid fa-house-building mr-2"></i>{{$location->subject}}</li>
                <li class="tag__item"> <i class="fa-solid fa-s mr-2"></i>{{$location->square}} км<sup>2</sup></li>
            </ul>
        </div>
    </article>
@endif

{{--Lorem ipsum dolor sit amet consectetur adipisicing elit. Eligendi, fugiat asperiores inventore beatae accusamus odit minima enim, commodi--}}
{{--quia, doloribus eius! Ducimus nemo accusantium maiores velit corrupti tempora reiciendis molestiae repellat vero. Eveniet ipsam adipisci illo--}}
{{--iusto quibusdam, sunt neque nulla unde ipsum dolores nobis enim quidem excepturi, illum quos!--}}
