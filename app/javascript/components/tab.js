const current = document.location.pathname.split('/')[2];
const navs = document.querySelectorAll('.tab');

Array.from(navs).forEach(function(el) {
  truncatedHref = el.href.split('/')[4];

  if (truncatedHref === current) {
    el.classList.add('active');
  }
});
