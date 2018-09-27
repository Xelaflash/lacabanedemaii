document.addEventListener("DOMContentLoaded", () => {
  const UserAdress = document.getElementById('adresse_user');
  if (UserAdress) {
    const options = {
      types: ['geocode'],
    };
    new google.maps.places.Autocomplete(UserAdress, options);
    google.maps.event.addDomListener(UserAdress, 'keydown', function(e) {
      if (e.key === "Enter") {
        e.preventDefault(); // Do not submit the form on Enter.
      }
    });
  }
});
