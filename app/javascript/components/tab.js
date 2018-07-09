  const tabs = document.querySelectorAll('.tab');

function tabActive() {
  tabs.classList.add('active');
}

tabs.forEach(tab => tab.addEventListener('click', tabActive));



export { tabActive };
