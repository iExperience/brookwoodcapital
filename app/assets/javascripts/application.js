//= require jquery
//= require jquery_ujs
//= require jquery/jquery-ui
//= require jquery/jquery.parallax-1.1.3
//= require jquery/jquery.scrollTo.min
//= require jquery/jquery.easing.1.3
//= require jquery/jquery.mousewheel
//= require jquery/jquery.isotope.min
//= require jquery.slick
//= require bootstrap
//= require waypoints.min
//= require ilightbox.packed
//= require visuals
//= require alumni
//= require nav

$(document).ready(function() {
  $(".testimonial-slider").slick({
    dots: true,
    infinite: true,
    slidesToShow: 1,
    centerMode: true,
    centerPadding: "200px",
    responsive: [
      {
        breakpoint: 1024,
        settings: {
          centerMode: true,
          centerPadding: "150px",
        }
      },
      {
        breakpoint: 768,
        settings: {
          dots: false,
          arrows: false,
          centerMode: true,
          centerPadding: "0px",
        }
      }
    ]
  });
});