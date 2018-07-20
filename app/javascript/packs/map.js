import GMaps from 'gmaps/gmaps.js';
import { autocomplete } from '../components/autocomplete';

const mapElement = document.getElementById('map'); {
  var store = {lat: 44.741486, lng: -1.09817};
  var map = new google.maps.Map(document.getElementById('map'), {
    zoom: 15,
    center: store
    });
  var marker = new google.maps.Marker({
    position: store,
    map: map
  });
}

autocomplete();
