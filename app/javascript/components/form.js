const fields = document.querySelectorAll("#order_item_quantity");

fields.forEach((field) => {
  field.addEventListener("change", updateQuantity);
});

function updateQuantity(event) {
  const newQuantity = event.target.value;
  alert('You have change the quantity to ' + event.target.value);
  const submit = document.getElementById('submit-form');
  submit.click();
};



