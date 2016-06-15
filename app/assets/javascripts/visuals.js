//////////////////////////////////////////////////////////////////////////////////////////
//Initialize iLightbox
//////////////////////////////////////////////////////////////////////////////////////////
$('#ilightbox').iLightBox();

//////////////////////////////////////////////////////////////////////////////////////////
//Scrolling
//////////////////////////////////////////////////////////////////////////////////////////
jQuery(document).ready(function ($){
  jQuery('a.scroll-link').click(function(){
    jQuery.scrollTo( $(this).attr("href"), {
      duration: 1000,
      easing:'easeInOutExpo'      
    });
    return false;
  });

  jQuery('.waypoint-1').waypoint(function() {
    jQuery(".hidden-element-1").addClass("visible-element");
  }, { offset: '75%' });

  jQuery('.waypoint-2').waypoint(function() {
    jQuery(".hidden-element-2").addClass("visible-element");
  }, { offset: '75%' });
  
  jQuery('.waypoint-3').waypoint(function() {
    jQuery(".hidden-element-3").addClass("visible-element");
  }, { offset: '75%' });
  
  jQuery('.waypoint-4').waypoint(function() {
    jQuery(".hidden-element-4").addClass("visible-element");
  }, { offset: '75%' });

  jQuery('.waypoint-5').waypoint(function() {
    jQuery(".hidden-element-5").addClass("visible-element");
  }, { offset: '75%' });
});

/////////////////////////////////////////////////////////////////////////////////////////
//Detect iPhone, iPod, iPad and remove or ativate parallax
//////////////////////////////////////////////////////////////////////////////////////////
var isMobile = {
  Android: function() {
    return navigator.userAgent.match(/Android/i);
  },
  BlackBerry: function() {
    return navigator.userAgent.match(/BlackBerry/i);
  },
  iOS: function() {
    return navigator.userAgent.match(/iPhone|iPad|iPod/i);
  },
  Opera: function() {
    return navigator.userAgent.match(/Opera Mini/i);
  },
  Windows: function() {
    return navigator.userAgent.match(/IEMobile/i);
  },
  any: function() {
    return (isMobile.Android() || isMobile.BlackBerry() || isMobile.iOS() || isMobile.Opera() || isMobile.Windows());
  }
};

$(window).bind('load', function () {
  parallaxInit();
  hoverVideoInit();
});

//////////////////////////////////////////////////////////////////////////////////////////
//Paralax initializer
//////////////////////////////////////////////////////////////////////////////////////////
function parallaxInit() {
  if (!isMobile.any()) {
    // Need to select pictures individually because .parallax only works with
    // the first element it finds per page.
    // The main picture on each page.
    $('.bg-fixed').parallax("50%", 0.5);
    // The mid image on each page.
    $('.bg-fixed[class*="-mid"]').parallax("50%", 0.5);
    $('.bg-fixed[class*="-bottom"]').parallax("50%", 0.5);
  } else { // Disable parallax on mobile devices.
    $('.bg-fixed').addClass("bg-scroll");
  }
}

//////////////////////////////////////////////////////////////////////////////////////////
//HTML5 video loader
//////////////////////////////////////////////////////////////////////////////////////////
function hoverVideoInit() {
  if (!isMobile.any()) {
    $('#hover-instruction').show();
    var loadedVideos = false;
    $(window).scroll(function(){
      if(!loadedVideos){
        $('.hover-play-video').load();
        loadedVideos = true;
      }
    });

    $('.hover-play-video').hover(playVideo, pauseVideo);

    function playVideo(e) { 
      this.play(); 
    }

    function pauseVideo(e) {
      this.pause(); 
    }
  } else {
    $('.hover-play-video').hide();
    $('.excursion-still-image').show();
  }
}
//////////////////////////////////////////////////////////////////////////////////////////
//Hide menu after clic on mobile 
//////////////////////////////////////////////////////////////////////////////////////////
jQuery(document).ready(function ($){
  jQuery('a.scroll-link').on('click',function(){
    jQuery('.nav-collapse').collapse('hide');
  })
});

//////////////////////////////////////////////////////////////////////////////////////////
//Accordion sections for FAQ page
//////////////////////////////////////////////////////////////////////////////////////////
$(function() {
  $('#accordion').accordion({collapsible: true, active: false, heightStyle: "content"});
  $('#accordion2').accordion({collapsible: true, active: false, heightStyle: "content"});
  $('#accordion3').accordion({collapsible: true, active: false, heightStyle: "content"});
  $('#accordion4').accordion({collapsible: true, active: false, heightStyle: "content"});
  $('#accordion5').accordion({collapsible: true, active: false, heightStyle: "content"});
  $('#accordion6').accordion({collapsible: true, active: false, heightStyle: "content"});
  $('#accordion7').accordion({collapsible: true, active: false, heightStyle: "content"});

});