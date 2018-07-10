// const toggleActive = (event) => {
//   event.currentTarget.classList.add('active');
// };

// const bindToggleActiveTab = (element) => {
//   element.addEventListener('click', toggleActive);
// };

// document.querySelectorAll('.tab').forEach(bindToggleActiveTab);



(function() {

  // const adress = window.location.href;
  // console.log(adress);

    const nav = document.querySelector('.tab');
    console.log(nav);

    const ref = nav.href.split('/')[4];
    console.log(ref);


    const current = document.location.pathname.split('/')[2];
    console.log(current);

    if(ref == current) {
        nav.classList.add("active");
      }
})();
