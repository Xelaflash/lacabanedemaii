$(document).ready(function() {
  $(window).scroll(function() {
    if ($(window).scrollTop() > 300) {
      $('#navbar').addClass("scrolled");
    } else {
      $('#navbar').removeClass("scrolled");
    };
  });
});
