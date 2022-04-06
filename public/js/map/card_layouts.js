function getCardFishLayout(name,fish,weight, date, img){
    let layout = `
<div class="card my-4 shadow rounded">
    <div class="row no-gutters">
        <div class="col-md-4">
            <img src="/storage/${img}" alt="Bootstrap Tamil cyberdude"
                 class="card-img h-100" />
        </div>
        <div class="col-md-8">
            <div class="card-body">
                <h5 class="card-title">
                    ${name}</h5>
                <p class="card-text">
                    <i>Вид рыбы:</i> ${fish}
                </p>
                <p class="card-text">
                    <i>Вес рыбы:</i> ${weight}кг
                </p>
                <p class="card-text float-right">
                    <small class="text-muted"> <i class="fa fa-clock-o"></i> ${date}</small>
                </p>
            </div>
        </div>
    </div>
</div>
`;
    return layout;
}

function getCardLocationFishLayoutBeta(name, img){
    let layout = `<div class="card col-lg-2 shadow" style="width: 18rem;">
    <a class="fish-link" href="{{ route('tmpfish') }}">
        <img class="card-img-top" src="{{asset('storage').'/'.$fish['img']}}" alt="{{$fish['name']}}">
        <div class="card-body">
            <h4>{{$fish['name']}}</h4>
        </div>
    </a>
</div>`
}

function getCardLocationFishLayout(name, img){
//     let layout = `<div class="card col-lg-2 shadow m-auto" style="width: 18rem;">
//     <img class="card-img-top img-fluid" src="/storage/${img}" alt="${name}" title="${name}">
//     <div class="card-body">
//         <h4>${name}</h4>
//     </div>
// </div>`
    let layout = `<div class="card my-2 shadow rounded">
    <div class="row no-gutters">
        <div class="col-md-4">
            <img src="/storage/${img}" alt="${name}" title="${name}"
                 class="card-img h-100" />
        </div>
        <div class="col-md-8">
            <div class="card-body">
                <h3 class="card-title">
                    ${name}</h3>
            </div>
        </div>
    </div>
</div>`;
    return layout;
}


export {getCardFishLayout, getCardLocationFishLayout};
