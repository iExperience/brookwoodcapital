var nav = $(".navbar");
var stickMenu = function() {
  if (nav.offset().top > 0) {
    nav.addClass("nav-white");
  } else {
    nav.removeClass("nav-white");
  }
}

$(window).scroll(function() {
  stickMenu();
});

$(document).ready(function() {
  // Top nav changing color on scroll. 
  stickMenu();

  // Mobile nav.
  // Toggle button.
  $(".mobile-nav-toggle").click(function() {
    $(".mobile-nav-js").toggleClass("mobile-nav-active");
    $("body,html").toggleClass("mobile-nav-active");
  });
  // Close nav on body click.
  $(".mobile-wrapper").click(function() {
    if ($(this).hasClass("mobile-nav-active")) {
      $(".mobile-nav-js").removeClass("mobile-nav-active");
    }
  });
  // Course dropdown
  $(".mobile-nav-course-toggle").click(function() {
    $(".mobile-nav-courses").slideToggle("fast");
  });

  // NOTE (rafi): Leaving apply-bar code in case we use in the future.
  setTimeout(function() {
    $(".apply-bar").slideDown("fast"); // Somehow, this makes it slide up.
  }, 7000);
});

