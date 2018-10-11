import swal from 'sweetalert';

const swalButtonsDestroy = document.querySelectorAll(".btn-danger");
console.log(swalButtonsDestroy);
function bindSweetAlertButtonDestroy(e) {
  const form = this;
  e.preventDefault();
  swal({
    title: `Effacer cette commande?`,
    text: "Êtes-vous sûr de vouloir effacer la commande en cours?",
    icon: "warning",
    buttons: true,
    dangerMode: true,
    closeOnClickOutside: false,
  }).then((isConfirm) => {
    if (isConfirm) {
      swal({
        title: 'Supprimé!',
        text: 'Le commande a été supprimé avec succès!',
        icon: 'success'
      }).then(() => {
        form.submit();
      });
    } else {
      swal("Annulé", " Votre produit est sain et sauf :)", "error");
    }
  });
}
swalButtonsDestroy.forEach(button => button.addEventListener('click', bindSweetAlertButtonDestroy));
