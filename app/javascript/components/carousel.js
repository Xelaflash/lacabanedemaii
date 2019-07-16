$('.owl-carousel').owlCarousel({
  loop: true,
  autoplay: true,
  center: true,
  margin: 5,
  autoplayTimeout: 3000,
  autoplayHoverPause: true,
  responsive: {
    0: {
      items: 1,
    },
    800: {
      items: 2,
    },
    1000: {
      items: 3
    }
  }
});
