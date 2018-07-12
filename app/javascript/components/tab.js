const current = document.location.pathname.split('/')[2];
const navs = document.querySelectorAll('.tab');

Array.from(navs).forEach(function(el) {
  if (el.id === current) {
    el.classList.add('active');
  }
});




