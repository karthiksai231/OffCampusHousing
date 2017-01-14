<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  
    <title>Neighbourhood <code>setTimeout()</code></title>
    <style>
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
      #map {
        height: 100%;
      }
      #floating-panel {
        position: absolute;
        top: 47px;
        left: 29%;
        z-index: 5;
        background-color: #fff;
        border: 1px solid #999;
        text-align: center;
        font-family: 'Roboto','sans-serif';
        line-height: 30px;
        padding-left: 10px;
            padding-right: 5px;
            padding-top: 5px;
            padding-bottom: 5px;
        }
      #floating-panel {
        margin-left: -52px;
      }
      #map-canvas {
      height: 100%;
      width: 100%;
    }
    </style>
  </head>
  <body>


       <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">Star Properties</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">

        <li class="active" ><a id="Login" href="AboutUs.aspx">About Us</a></li>
            <li ><a href="ContactPage.aspx">Contact Us</a></li>
        <li><a href="FloorPlans.aspx">Floor Plans</a></li>
          <li><a href="GMaps.aspx">Neighbourhood</a></li>
          <li><a href="Gallery.aspx">Gallery</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="RegistrationPage.aspx"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="LoginPage.aspx"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>


    <div id="floating-panel">
      <button id="drop" class="btn btn-primary" onclick="drop()">Neighbourhood</button>
        <input id="address" type="text" value="Dallas,Tx">
      <input id="submit" type="button" class="btn btn-primary" value="Search">
        <input id="submit1" type="button" class="btn btn-primary" value="Directions" />
    </div>
   
    <div id="map"></div>
    <script>

      // If you're adding a number of markers, you may want to drop them on the map
      // consecutively rather than all at once. This example shows how to use
      // window.setTimeout() to space your markers' animation.
        

        //Hotels
      var neighborhoods = [
        { lat: 32.923601, lng: -96.954504 },
        { lat: 32.9216698, lng: -96.9560657 },
        //{ lat: 32.9230747, lng: -96.9536517 },//India Bazar
        //{lat: 52.517, lng: 13.394}
      ];
        //Grocery
      var neighborhoods1 = [
           { lat: 32.9230747, lng: -96.9536517 },  //IB
      { lat: 32.8311958, lng: -96.9797166 } //Dollar General
      ];

        //Schools
      var neighborhoods2 = [
        { lat: 32.9267180, lng: -96.9529850 },
      { lat: 32.9287270, lng: -96.9591630 }
      ];


      //Hospitals
      var neighborhoods3 = [
        { lat: 32.9125590, lng: -96.9519003 },
      { lat: 32.9018337, lng: -96.9574396 }
      ];

      var markers = [];
      var map;
      var panaroma;
      var geopos;
      var pos;
      var pos1;
      var lat, long;

        //init start

      function initMap() {
          var labels = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
          var labelIndex = 0;
        map = new google.maps.Map(document.getElementById('map'), {
          zoom: 12,
          center: {lat: 52.520, lng: 13.410}
        });

         //pos1 = new google.maps.LatLng(33.2460160, -95.9078400);
       //pos1 = new google.maps.LatLng(lat, long);
        
        //markerB = new google.maps.Marker({
        //    position: pos1,
        //    map: map
        //});

        //  //SteetView start


        //panorama = new google.maps.StreetViewPanorama(
        //  document.getElementById('street-view'),
        //  {
        //      position: { lat: 37.869260, lng: -122.254811 },
        //      pov: { heading: 165, pitch: 0 },
        //      zoom: 1
        //  });


        //  //Street View End


// Start Marker

       // var infoWindow = new google.maps.InfoWindow({ map: map });

          // Try HTML5 geolocation.
        if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(function (position) {
                //var
                    pos = {
                    lat: position.coords.latitude,
                    lng: position.coords.longitude
                };

                //infoWindow.setPosition(pos);

                var marker = new google.maps.Marker({
                    position: pos,
                    label: labels[labelIndex++ % labels.length],
                    map: map
                });
                //google.maps.event.addListener(marker, 'click', function (event) {
                //    this.setMap(null);
                //});
                //markers.push(marker);

                //infoWindow.setContent('Location found.');
                map.setCenter(pos);

                //Info
                var cString = 'Your Location' + '<br/>' + '<a href="AboutUs.aspx">Star Properties</a>';
                var infowindow = new google.maps.InfoWindow({ content: cString });
                marker.addListener('click',function(){
                    infowindow.open(map,marker);
            });

            }, function () {
                handleLocationError(true, infoWindow, map.getCenter());
            });
        } else {
            // Browser doesn't support Geolocation
            handleLocationError(false, infoWindow, map.getCenter());
        }

          //END Marker

          //Start GeoCode
          

        var geocoder = new google.maps.Geocoder();

        document.getElementById('submit').addEventListener('click', function () {
            geocodeAddress(geocoder, map);
        });

          //End GeoCode


  //      map = new google.maps.Map(document.getElementById('map-canvas'), myOptions),
  //        // Instantiate a directions service.
  //directionsService = new google.maps.DirectionsService,
  //directionsDisplay = new google.maps.DirectionsRenderer({
  //    map: map
  //})
        document.getElementById('submit1').addEventListener('click', function () {
            displayRoute()
            //calculateAndDisplayRoute(directionsService, directionsDisplay, pos)
        });


      }
        //init end

      function geocodeAddress(geocoder, resultsMap) {
          var address = document.getElementById('address').value;
          geocoder.geocode({ 'address': address }, function (results, status) {
              if (status === google.maps.GeocoderStatus.OK) {
                  lat = results[0].geometry.location.lat();
                  long = results[0].geometry.location.lng();
                  geopos= resultsMap.setCenter(results[0].geometry.location);
                  var marker= new google.maps.Marker({
                      map: resultsMap,
                      position: results[0].geometry.location



                  });
                  google.maps.event.addListener(marker, 'click', function (event) {
                      this.setMap(null);
                  });
                  markers.push(marker);

              }
              else {
                  alert('Geocode was not successful for the following reason: ' + status);
              }
          });
         

      }

        //Direction start



      //function calculateAndDisplayRoute(directionsService, directionsDisplay, pos) {
      //    directionsService.route({
      //        origin: pos,
      //        destination: geopos,
      //        travelMode: google.maps.TravelMode.DRIVING
      //    }, function (response, status) {
      //        if (status == google.maps.DirectionsStatus.OK) {
      //            directionsDisplay.setDirections(response);
      //        } else {
      //            window.alert('Directions request failed due to ' + status);
      //        }
      //    });
      //}


        //Direction End

      function displayRoute() {
          pos1 = new google.maps.LatLng(lat, long);


          var directionsDisplay = new google.maps.DirectionsRenderer();// also, constructor can get "DirectionsRendererOptions" object
          directionsDisplay.setMap(map); // map should be already initialized.

          var request = {
              origin: pos,
              destination: pos1,
              travelMode: google.maps.TravelMode.DRIVING
          };
          var directionsService = new google.maps.DirectionsService();
          directionsService.route(request, function (response, status) {
              if (status == google.maps.DirectionsStatus.OK) {
                  directionsDisplay.setDirections(response);
              }
          });
        

      }


      function drop() {
         
        clearMarkers();
        for (var i = 0; i < neighborhoods.length; i++) {
          addMarkerWithTimeout(neighborhoods[i], i * 200);
        }

        for (var i = 0; i < neighborhoods1.length; i++) {
            addMarkerWithTimeout1(neighborhoods1[i], i * 200);
        }
        for (var i = 0; i < neighborhoods2.length; i++) {
            addMarkerWithTimeout2(neighborhoods2[i], i * 200);
        }
        for (var i = 0; i < neighborhoods3.length; i++) {
            addMarkerWithTimeout3(neighborhoods3[i], i * 200);
        }
      }

      function addMarkerWithTimeout(position, timeout) {
          var labels = 'R';
         
        window.setTimeout(function() {
          markers.push(new google.maps.Marker({
              position: position,
              label: labels,
            map: map,
            animation: google.maps.Animation.DROP
          }));
        }, timeout);
      }


      function addMarkerWithTimeout1(position, timeout) {
          var labels = 'G';

          window.setTimeout(function () {
              markers.push(new google.maps.Marker({
                  position: position,
                  label: labels,
                  map: map,
                  animation: google.maps.Animation.DROP
              }));
          }, timeout);
      }

      function addMarkerWithTimeout2(position, timeout) {
          var labels = 'S';

          window.setTimeout(function () {
              markers.push(new google.maps.Marker({
                  position: position,
                  label: labels,
                  map: map,
                  animation: google.maps.Animation.DROP
              }));
          }, timeout);
      }

      function addMarkerWithTimeout3(position, timeout) {
          var labels = 'H';

          window.setTimeout(function () {
              markers.push(new google.maps.Marker({
                  position: position,
                  label: labels,
                  map: map,
                  animation: google.maps.Animation.DROP
              }));
          }, timeout);
      }

      function clearMarkers() {
        for (var i = 0; i < markers.length; i++) {
          markers[i].setMap(null);
        }
        markers = [];
      }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB3ICESMwG6HnR753zHQxB6P_ry3kBwV1E&callback=initMap">
    </script>
  </body>
</html>