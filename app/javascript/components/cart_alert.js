import swal from 'sweetalert';

const swalButtons = document.querySelectorAll(".delete-item");

function bindSweetAlertButton(e) {
  const productName = (this.querySelector('[data-name]'));
  const form = this;
  e.preventDefault();
  swal({
    title: `Effacer ${productName.dataset.name} ?`,
    text: "Êtes-vous sûr de vouloir retirer ce produit de votre panier?",
    icon: "warning",
    buttons: true,
    dangerMode: true,
    closeOnClickOutside: false,
  }).then((isConfirm) => {
    if (isConfirm) {
      swal({
        title: 'Supprimé!',
        text: 'Le produit a été sorti du panier!',
        icon: 'success'
      }).then(() => {
        form.submit();
      });
    } else {
      swal("Annulé", " Votre produit est sain et sauf :)", "error");
    }
  });
}

swalButtons.forEach(button => button.addEventListener('click', bindSweetAlertButton));
