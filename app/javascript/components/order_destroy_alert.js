import swal from 'sweetalert';

const swalButtonsDestroy = document.querySelectorAll(".delete-order");
function bindSweetAlertButtonDestroy(e) {
  const formDestroy = this;
  e.preventDefault();
  swal({
    title: `Effacer cette commande?`,
    text: "Êtes-vous sûr de vouloir effacer la commande en cours ? 😱 😱",
    icon: "warning",
    buttons: true,
    dangerMode: true,
    closeOnClickOutside: false,
  }).then((isConfirm) => {
    if (isConfirm) {
      swal({
        title: 'Supprimé!',
        text: 'La commande a été supprimée avec succès! 😥',
        icon: 'success'
      }).then(() => {
        formDestroy.submit();
      });
    } else {
      swal("Annulé", " Votre commande est toujours en vie 🤗", "error");
    }
  });
}
swalButtonsDestroy.forEach(button => button.addEventListener('click', bindSweetAlertButtonDestroy));
