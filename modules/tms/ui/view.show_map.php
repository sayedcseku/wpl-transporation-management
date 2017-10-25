

 <!DOCTYPE html>
<html>
  <head>
    <style>
       #map {
        height: 400px;
        width: 80%;
       }
       html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }

    </style>
  </head>
  <body>
    <h3>My Google Maps Demo</h3>
    <div id="map"></div>
    <script>
      function initMap() {
        var uluru = {lat: 22.8456, lng: 89.5403};
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 4,
          center: uluru
        });
        var marker = new google.maps.Marker({
          position: uluru,
          map: map
        });
      }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDSkHuzebJBmI8V8QKVLdaWxs_1zTn5sJ8&callback=initMap">
    </script>
  </body>
</html>
