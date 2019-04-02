const current = document.location.pathname.split('/')[2];
const navs = document.querySelectorAll('.tab');

Array.from(navs).forEach((el) => {
  const truncatedHref = el.href.split('/')[4];
  if (truncatedHref === current) {
    el.classList.add('tab-active');
  }
});
