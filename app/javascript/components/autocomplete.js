let autocomplete;
const componentForm = {
  street_number: 'short_name',
  route: 'long_name',
  locality: 'long_name',
  postal_code: 'short_name',
  country: 'long_name'
};

document.addEventListener("DOMContentLoaded", () => {
  const delivAddress = document.getElementById('autocomplete');
  if (delivAddress) {
    const options = {
      types: ['geocode'],
    };
    autocomplete = new google.maps.places.Autocomplete(delivAddress, options);
    google.maps.event.addDomListener(delivAddress, 'keydown', (e) => {
      if (e.key === "Enter") {
        e.preventDefault(); // Do not submit the form on Enter.
      }
    });
  }

  function fillInAddress() {
    // Get the place details from the autocomplete object.
    const place = autocomplete.getPlace();
    for (const component in componentForm) {
      document.getElementById(component).value = '';
      document.getElementById(component).disabled = false;
    }
    // Get each component of the address from the place details
    // and fill the corresponding field on the form.
    for (let i = 0; i < place.address_components.length; i++) {
      const addressType = place.address_components[i].types[0];
      if (componentForm[addressType]) {
        const val = place.address_components[i][componentForm[addressType]];
        document.getElementById(addressType).value = val;
      }
    }
  }
  if(autocomplete) {
    autocomplete.addListener('place_changed', fillInAddress);
  }
});

export { fillInAddress };
