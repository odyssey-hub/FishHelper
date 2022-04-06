$(function () {


    $(".progress2").each(function() {
        var value = $(this).attr('data-value');
        var left = $(this).find('.progress-left .progress-bar2');
        var right = $(this).find('.progress-right .progress-bar2');

        if (value > 0) {
            if (value <= 50) {
                right.css("transition-duration","1s");
                right.css('transform', 'rotate(' + percentageToDegrees(value) + 'deg)')
            } else {
                right.css("transition-duration","1s");
                right.css('transform', 'rotate(180deg)');
                left.css("transition-duration", "2s");
                left.css('transform', 'rotate(' + percentageToDegrees(value - 50) + 'deg)')
            }
        }

    })

    function percentageToDegrees(percentage) {

        return percentage / 100 * 360

    }
})
