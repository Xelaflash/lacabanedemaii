document.addEventListener("DOMContentLoaded", function() {
  var UserAdress = document.getElementById('adresse_user');
  if (UserAdress) {
    var options = {
      types: ['geocode'],
    };
    var autocomplete = new google.maps.places.Autocomplete(UserAdress, options);
    google.maps.event.addDomListener(UserAdress, 'keydown', function(e) {
      if (e.key === "Enter") {
        e.preventDefault(); // Do not submit the form on Enter.
      }
    });
  };
});
