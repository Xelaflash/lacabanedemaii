/*Scroll to top when arrow up clicked BEGIN*/
$(window).scroll(function () {
  var height = $(window).scrollTop();
  if (height > 300) {
    $('.back_to_top').fadeIn();
  } else {
    $('.back_to_top').fadeOut();
  }
});
$(document).ready(function () {
  $(".back_to_top").click(function (event) {
    event.preventDefault();
    $("html, body").animate({
      scrollTop: 0
    }, "slow");
    return false;
  });

});
/*Scroll to top when arrow up clicked END*/
