var placeSearch, autocomplete;
var componentForm = {
  street_number: 'short_name',
  route: 'long_name',
  locality: 'long_name',
  postal_code: 'short_name',
  country: 'long_name'
};

document.addEventListener("DOMContentLoaded", function() {
  var delivAddress = document.getElementById('autocomplete');
  if (delivAddress) {
    var options = {
      types: ['geocode'],
    };
    var autocomplete = new google.maps.places.Autocomplete(delivAddress, options);
    google.maps.event.addDomListener(delivAddress, 'keydown', function(e) {
      if (e.key === "Enter") {
        e.preventDefault(); // Do not submit the form on Enter.
      }
    });
  };
  autocomplete.addListener('place_changed', fillInAddress);

  function fillInAddress() {
    // Get the place details from the autocomplete object.
    var place = autocomplete.getPlace();
    for (var component in componentForm) {
      document.getElementById(component).value = '';
      document.getElementById(component).disabled = false;
    }
    // Get each component of the address from the place details
    // and fill the corresponding field on the form.
    for (var i = 0; i < place.address_components.length; i++) {
      var addressType = place.address_components[i].types[0];
      if (componentForm[addressType]) {
        var val = place.address_components[i][componentForm[addressType]];
        document.getElementById(addressType).value = val;
      };
    }
  };
});
