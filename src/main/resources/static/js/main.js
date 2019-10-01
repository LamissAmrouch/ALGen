jQuery(document).ready(function( $ ) {


    $( ".signUp" ).click(function() {
      console.log($( "#tab2" ));

        $( "#tab1-tab" ).removeClass("active");
        $( "#tab2-tab" ).addClass("active");
        $( ".tab2" ).removeClass("hide");
        $( ".tab1" ).addClass("hide");
    });
    $( ".lgn" ).click(function() {
        $( "#tab2-tab" ).removeClass("active");
        $( "#tab1-tab" ).addClass("active");
        $( ".tab1" ).removeClass("hide");
        $( ".tab2" ).addClass("hide");
    });
    // Back to top button
    $(window).scroll(function() {
        if ($(this).scrollTop() > 100) {
            $('.back-to-top').fadeIn('slow');
        } else {
            $('.back-to-top').fadeOut('slow');
        }
    });
    $('.back-to-top').click(function(){
        $('html, body').animate({scrollTop : 0},1500, 'easeInOutExpo');
        return false;
    });

    // Initiate the wowjs animation library
    new WOW().init();

    // Initiate superfish on nav menu
    $('.nav-menu').superfish({
        animation: {
            opacity: 'show'
        },
        speed: 400
    });

    // Mobile Navigation
    if ($('#nav-menu-container').length) {
        var $mobile_nav = $('#nav-menu-container').clone().prop({
            id: 'mobile-nav'
        });
        $mobile_nav.find('> ul').attr({
            'class': '',
            'id': ''
        });
        $('body').append($mobile_nav);
        $('body').prepend('<button type="button" id="mobile-nav-toggle"><i class="fa fa-bars"></i></button>');
        $('body').append('<div id="mobile-body-overly"></div>');
        $('#mobile-nav').find('.menu-has-children').prepend('<i class="fa fa-chevron-down"></i>');

        $(document).on('click', '.menu-has-children i', function(e) {
            $(this).next().toggleClass('menu-item-active');
            $(this).nextAll('ul').eq(0).slideToggle();
            $(this).toggleClass("fa-chevron-up fa-chevron-down");
        });

        $(document).on('click', '#mobile-nav-toggle', function(e) {
            $('body').toggleClass('mobile-nav-active');
            $('#mobile-nav-toggle i').toggleClass('fa-times fa-bars');
            $('#mobile-body-overly').toggle();
        });

        $(document).click(function(e) {
            var container = $("#mobile-nav, #mobile-nav-toggle");
            if (!container.is(e.target) && container.has(e.target).length === 0) {
                if ($('body').hasClass('mobile-nav-active')) {
                    $('body').removeClass('mobile-nav-active');
                    $('#mobile-nav-toggle i').toggleClass('fa-times fa-bars');
                    $('#mobile-body-overly').fadeOut();
                }
            }
        });
    } else if ($("#mobile-nav, #mobile-nav-toggle").length) {
        $("#mobile-nav, #mobile-nav-toggle").hide();
    }

    // Smooth scroll for the menu and links with .scrollto classes
    $('.nav-menu a, #mobile-nav a, .scrollto').on('click', function() {
        if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') && location.hostname == this.hostname) {
            var target = $(this.hash);
            if (target.length) {
                var top_space = 0;

                if ($('#header').length) {
                    top_space = $('#header').outerHeight();

                    if( ! $('#header').hasClass('header-fixed') ) {
                        top_space = top_space - 20;
                    }
                }

                $('html, body').animate({
                    scrollTop: target.offset().top - top_space
                }, 1500, 'easeInOutExpo');

                if ($(this).parents('.nav-menu').length) {
                    $('.nav-menu .menu-active').removeClass('menu-active');
                    $(this).closest('li').addClass('menu-active');
                }

                if ($('body').hasClass('mobile-nav-active')) {
                    $('body').removeClass('mobile-nav-active');
                    $('#mobile-nav-toggle i').toggleClass('fa-times fa-bars');
                    $('#mobile-body-overly').fadeOut();
                }
                return false;
            }
        }
    });

    // Header scroll class
    $(window).scroll(function() {
        console.log($(this).scrollTop())
        $('#div1').removeClass('land_head_div_active');
        $('#div2').removeClass('land_head_div_active');
        $('#div3').removeClass('land_head_div_active');

        $('#div4').removeClass('land_head_div_active');
        $('#div5').removeClass('land_head_div_active');
        $('#div6').removeClass('land_head_div_active');
        $('#p1').removeClass('land_head_p_active');
        $('#p2').removeClass('land_head_p_active');
        $('#p3').removeClass('land_head_p_active');
        $('#p4').removeClass('land_head_p_active');
        $('#p5').removeClass('land_head_p_active');
        $('#p6').removeClass('land_head_p_active');
        if($(this).scrollTop() < 600 )
        {
            $('#div1').addClass('land_head_div_active');
            $('#p1').addClass('land_head_p_active');
        }
        if($(this).scrollTop() >= 600 & $(this).scrollTop() < 1245)
        {
            $('#div2').addClass('land_head_div_active');
            $('#p2').addClass('land_head_p_active');
        }
        if($(this).scrollTop() >= 1245 & $(this).scrollTop() < 1981)
        {
            $('#div3').addClass('land_head_div_active');
            $('#p3').addClass('land_head_p_active');
        }
        if($(this).scrollTop() >= 1981 & $(this).scrollTop() < 3645)
        {
            $('#div4').addClass('land_head_div_active');
            $('#p4').addClass('land_head_p_active');
        }
        if($(this).scrollTop() >= 3645 & $(this).scrollTop() < 4058)
        {
            $('#div5').addClass('land_head_div_active');
            $('#p5').addClass('land_head_p_active');
        }
        if($(this).scrollTop() >=4058 )
        {
            $('#div6').addClass('land_head_div_active');
            $('#p6').addClass('land_head_p_active');
        }
        if ($(this).scrollTop() > 100) {
            $('#header').addClass('header-scrolled');
        } else {
            $('#header').addClass('header-scrolled');
        }
    });

    // Intro carousel
    var introCarousel = $(".carousel");
    var introCarouselIndicators = $(".carousel-indicators");
    introCarousel.find(".carousel-inner").children(".carousel-item").each(function(index) {
        (index === 0) ?
            introCarouselIndicators.append("<li data-target='#introCarousel' data-slide-to='" + index + "' class='active'></li>") :
            introCarouselIndicators.append("<li data-target='#introCarousel' data-slide-to='" + index + "'></li>");
    });

    $(".carousel").swipe({
        swipe: function(event, direction, distance, duration, fingerCount, fingerData) {
            if (direction == 'left') $(this).carousel('next');
            if (direction == 'right') $(this).carousel('prev');
        },
        allowPageScroll:"vertical"
    });

    // Skills section
    $('#skills').waypoint(function() {
        $('.progress .progress-bar').each(function() {
            $(this).css("width", $(this).attr("aria-valuenow") + '%');
        });
    }, { offset: '80%'} );

    // jQuery counterUp (used in Facts section)
    $('[data-toggle="counter-up"]').counterUp({
        delay: 10,
        time: 1000
    });

    // Porfolio isotope and filter
    var portfolioIsotope = $('.portfolio-container').isotope({
        itemSelector: '.portfolio-item',
        layoutMode: 'fitRows'
    });

    $('#portfolio-flters li').on( 'click', function() {
        $("#portfolio-flters li").removeClass('filter-active');
        $(this).addClass('filter-active');

        portfolioIsotope.isotope({ filter: $(this).data('filter') });
    });

    // Clients carousel (uses the Owl Carousel library)
    $(".clients-carousel").owlCarousel({
        autoplay: true,
        dots: true,
        loop: true,
        responsive: { 0: { items: 2 }, 768: { items: 4 }, 900: { items: 6 }
        }
    });

    // Testimonials carousel (uses the Owl Carousel library)
    $(".testimonials-carousel").owlCarousel({
        autoplay: true,
        dots: true,
        loop: true,
        items: 1
    });

    $(".linkHome").attr("href",window.location.protocol+"//"+window.location.hostname+":"+window.location.port)
    $("#linkAccueil").attr("href",window.location.protocol+"//"+window.location.hostname+":"+window.location.port+"#intro")
    $(".details").attr("href",window.location.protocol+"//"+window.location.hostname+":"+window.location.port+"#about")
    $("#linkContact").attr("href",window.location.protocol+"//"+window.location.hostname+":"+window.location.port+"#contact")
    $("#linkFooter").attr("href",window.location.protocol+"//"+window.location.hostname+":"+window.location.port+"#footer")


});
