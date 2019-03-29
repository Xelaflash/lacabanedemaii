import "bootstrap";
import '../components/autocomplete';
import '../components/autocomplete_sign_in';
import '../components/tab';
import '../components/cart_anim';
import '../components/cart_alert';
import '../components/order_destroy_alert';



$(document).ready(function () {

  $('#itemslider').carousel({
    interval: 3000
  });

  $('.carousel-showmanymoveone .item').each(function () {
    var itemToClone = $(this);

    for (var i = 1; i < 6; i++) {
      itemToClone = itemToClone.next();

      if (!itemToClone.length) {
        itemToClone = $(this).siblings(':first');
      }

      itemToClone.children(':first-child').clone()
        .addClass("cloneditem-" + (i))
        .appendTo($(this));
    }
  });
});
