const navBtn = document.getElementById("burger");
const closeBtn = document.getElementById("closebtn");

function openNav() {
  document.getElementById("mySidenav").style.width = "100%";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
}

navBtn.addEventListener("click", openNav);
closeBtn.addEventListener("click", closeNav);
