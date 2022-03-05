mapboxgl.accessToken =
  "pk.eyJ1IjoiYmhhbmRhcmlpNyIsImEiOiJjbDBlNDRnOTcwZml2M2ZvNm83bm53eHpyIn0.qIuD7fbqXnwZEc_GMqO-cA";
const map = new mapboxgl.Map({
  container: "map",
  style: "mapbox://styles/mapbox/streets-v11", 
  center: [78.96, 20.56], 
  zoom: 5, 
});

map.addControl(new mapboxgl.NavigationControl());

map.addControl(
  new mapboxgl.GeolocateControl({
    positionOptions: {
      enableHighAccuracy: true,
    },
    trackUserLocation: true,
    showUserHeading: true,
  })
);


var geoJson = {
  type: "FeatureCollection",
  features: [
    {
      type: "Feature",
      geometry: {
        type: "Point",
        coordinates: [77.36, 28.57],
      },
      properties: {
        id: "1",
        name: "yash",
        status: "Available",
        address: "sector 50",
        price:'15rs/Kwh'
      },
    },
    {
      type: "Feature",
      geometry: {
        type: "Point",
        coordinates: [77.39,28.56 ],
      },
      properties: {
        id: "2",
        name: "yash",
        status: "Available",
        address: "sector 77",
        price:'15rs/Kwh'
      },
    },
    {
      type: "Feature",
      geometry: {
        type: "Point",
        coordinates: [77.38,28.56 ],
      },
      properties: {
        id: "3",
        name: "yash",
        status: "Available",
        address: "sector 78",
        price:'15rs/Kwh'
      },
    },
    {
      type: "Feature",
      geometry: {
        type: "Point",
        coordinates: [77.36,28.58],
      },
      properties: {
        id: "4",
        name: "yash",
        status: "Available",
        address: "sector 34",
        price:'15rs/Kwh'
      },
    },
    {
      type: "Feature",
      geometry: {
        type: "Point",
        coordinates: [77.38,28.56],
      },
      properties: {
        id: "5",
        name: "yash",
        status: "Available",
        address: "sector 76",
        price:'15rs/Kwh'
      },
    },
    {
      type: "Feature",
      geometry: {
        type: "Point",
        coordinates: [81.00,26.78],
      },
      properties: {
        id: "6",
        name: "yash",
        status: "Available",
        address: "golf city",
        price:'15rs/Kwh'
      },
    },
    {
      type: "Feature",
      geometry: {
        type: "Point",
        coordinates: [77.3863,28.5641],
      },
      properties: {
        id: "7",
        name: "yash",
        status: "Available",
        address: "mahagun moderne",
        price:'15rs/Kwh'
      },
    },
  ],
};

geoJson.features.forEach(function(marker){
    const format = `
                    <h1>Owner: ${marker.properties.name}</h1>
                    <h2>Status:<span style="color: green;" > ${marker.properties.status}</span></h2>
                    <h3>Address:${marker.properties.address}</h3>
                    <h3>Price: ${marker.properties.price}</h3>
                  
    `;

     new mapboxgl.Marker()
    .setLngLat(marker.geometry.coordinates)
    .addTo(map).setPopup(new mapboxgl.Popup().setHTML(format));
})


