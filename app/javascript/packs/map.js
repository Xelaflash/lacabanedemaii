// import GMaps from 'gmaps/gmaps.js';

// const mapElement = document.getElementById('map');

// if (mapElement) {
//   const store = { lat: 44.741632, lng: -1.098127 };
//   const map = new GMaps({ el: '#map', zoom: 15, center: store });
//   map.addMarker({ lat: store.lat, lng: store.lng });
// }


const mapElement = document.getElementById('map');

if (mapElement) {
  const store = { lat: 44.741632, lng: -1.098127 };
  const map = new google.maps.Map(document.getElementById('map'), {
    zoom: 15,
    center: store
  });
  const marker = new google.maps.Marker({
    position: store,
    map: map
  });
}
