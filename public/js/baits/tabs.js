// $(function () {
//     // $('#jqxTabs').jqxTabs({ theme:"darkblue"});
//
//
//
//
// })


$(function() {
    $('div.icon-tab').click(function() {
        $(this).addClass('active').siblings().removeClass('active');
        setDisplay(450);
    });

    function setDisplay(time) {
        $('div.icon-tab').each(function(rang) {
            $('.item').eq(rang).css('display', 'none');

            if($(this).hasClass('active')){
                $('.item').eq(rang).fadeIn(time);
            }
        });
    }

    //Disable the animation on page load
    setDisplay(0);
});
