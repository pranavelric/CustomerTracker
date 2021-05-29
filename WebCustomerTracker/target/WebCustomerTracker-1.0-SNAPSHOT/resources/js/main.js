
$(function () {

    //slideshow
    $(function() {
        $('body').vegas({
            slides: [

                {src: '/WebCustomerTracker_war_exploded/resources/images/slide-1.jpg'},
                {src: '/WebCustomerTracker_war_exploded/resources/images/slide-2.jpg'}

            ],
            timer: false,
            transition: [ 'zoomOut', ]
        });
    });



    new WOW({ mobile: false }).init();



    $(window).scroll(function() {
        if ($(this).scrollTop() > 200) {
            $('.go-top').fadeIn(200);
        } else {
            $('.go-top').fadeOut(200);
        }
    });














});




//preloading screen.

$(window).on('load', function (event) {

    // document.getElementById('preloading').style.opacity = 0;
    //
    // setTimeout(function () {
    //
    //     document.getElementById('preloading').style.display = 'none';
    //
    // }, 500)

    $(".preloader").fadeOut(1000);

});