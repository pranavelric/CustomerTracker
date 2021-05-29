console.log("loaded");
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

    //
    // $('a.scrollTo').on('click', function (event) {
    //
    //
    //     if (this.hash !== 0) {
    //         event.preventDefault();
    //         var hash = this.hash;
    //         $('html, body').animate({
    //             scrollTop: $(hash).offset().top
    //         }, 500, function () {
    //             window.location.hash = hash;
    //         });
    //     }
    //
    //
    //
    // });
    //
    //
    //

    new WOW({ mobile: false }).init();







    //preloading screen.
    //
    // $(window).on('load', function (event) {
    //
    //
    //     document.getElementById('preloading').style.opacity = 0;
    //
    //     setTimeout(function () {
    //
    //         document.getElementById('preloading').style.display = 'none';
    //
    //     }, 500)
    //
    //
    // });
    //
    //





    // // back to top
    //
    // var btn = $('#back_to_top');
    // $("body").scroll(function () {
    //     if ($("body").scrollTop() > 300) {
    //         btn.addClass('show_back_to_top');
    //     } else {
    //         btn.removeClass('show_back_to_top');
    //     }
    // });
    // btn.on('click', function (e) {
    //     e.preventDefault();
    //     $('html, body').animate({ scrollTop: 0 }, '300');
    // });
    //
    //
    //


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