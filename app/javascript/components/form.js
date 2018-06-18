  document.addEventListener('click', (event) => {
      document.querySelector('select[name="order_item[quantity]"]').onchange=changeEventHandler;
    });

      function changeEventHandler(event2) {
        const newQuantity = event2.target.value;
        alert('You have change the quantity to ' + event.target.value);
        console.log(newQuantity);

        const submit = document.getElementById('submit-form');
        submit.click();
      };


