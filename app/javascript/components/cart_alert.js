// import swal from 'sweetalert';
//
// const swalButtons = document.querySelectorAll(".delete-item");
// console.log(swalButtons);
//
// function bindSweetAlertButton(e) {
//   const form = this;
//   console.log(form)
//   e.preventDefault();
//   swal({
//     title: "Êtes-vous sûr?",
//     text: "#{order_item.produit.nom}",
//     icon: "warning",
//     buttons: true,
//     dangerMode: true,
//     closeOnClickOutside: false,
//   }).then(function(isConfirm) {
//     if (isConfirm) {
//       swal({
//         title: 'Supprimé!',
//         text: 'Le produit a été sorti du panier!',
//         icon: 'success'
//       }).then(function() {
//         form.submit();
//       });
//     } else {
//       swal("Annulé", " Votre produit est sain et sauf :)", "error");
//     }
//   });
// };
//
//
// swalButtons.forEach(button => button.addEventListener('click', bindSweetAlertButton));
