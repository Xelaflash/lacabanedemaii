import swal from 'sweetalert';

const swalButtons = document.querySelectorAll(".delete-item");
function bindSweetAlertButton(e) {
  const productName = (this.querySelector('[data-name]'));
  const form = this;
  console.log(form);
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


const swalButtonsQuant = document.querySelectorAll(".edit_order_item");
function bindSweetAlertButtonQuant(event) {
  const formQ = this;

  event.preventDefault();
  swal({
    title: `Modifier la Quantité ?`,
    text: "Êtes-vous sûr de vouloir changer la quantité de ce produit?",
    icon: "warning",
    buttons: true,
    dangerMode: true,
    closeOnClickOutside: false,
  }).then((isConfirm) => {
    if (isConfirm) {
      swal({
        title: 'Quantité modifié!',
        text: 'La quantité de produit a été modifié avec succès!',
        icon: 'success'
      }).then(() => {
        formQ.submit();
      });
    } else {
      swal("Annulé", " Rien n'a été modifié", "error");
    }

  });
}

swalButtonsQuant.forEach(buttonQuant => buttonQuant.addEventListener('submit', bindSweetAlertButtonQuant));
