$(function () {
    $('.bannerPoster .slider').slick({
        dots: false,
        infinite: true,
        speed: 500,
        fade: true,
        cssEase: 'linear'
    });

    $('.bannerPoster .close-btn').click(function () {
        $('.bannerPoster').removeClass('active');
    });


    $('.bannerPage .slider').slick({
        dots: false,
        fade: true,
        pauseOnHover: false,
        arrows: true,
        infinite: true,
        autoplay: true,
        autoplaySpeed: 4000,
        speed: 500,
        slidesToShow: 1,
        adaptiveHeight: false,
        prevArrow: $('#left_btn'),
        nextArrow: $('#right_btn')
    });

    $('#pause_btn').on('click', function () {
        $('.bannerPage .slider').slick('slickPause');
        $(this).addClass('active');
        $('#play_btn').removeClass('active');
    });

    $('#play_btn').on('click', function () {
        $('.bannerPage .slider').slick('slickPlay');
        $(this).addClass('active');
        $('#pause_btn').removeClass('active');
    });

    $('#resizeBig_btn').click(function(){
        $('.bannerPage').addClass('full');
        $(this).addClass('active');
        $('#resizeSmall_btn').removeClass('active');
    });
    $('#resizeSmall_btn').click(function(){
        $('.bannerPage').removeClass('full');
        $(this).addClass('active');
        $('#resizeBig_btn').removeClass('active');
    });
});