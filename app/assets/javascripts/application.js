// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(function() {

  /* load Google streetview */
  // var city = $('p#city').text();
  // var key = "AIzaSyC5DTeCGA1dhDobWegR-EpbdM0PWG1O_Xc";
  // var url_google= "https://maps.googleapis.com/maps/api/streetview?size=600x400&location=" + city + "&key=" + key ;
  // $('#restaurant_map').append('<img class="map" src="' + url_google + '">');
});

/*Raty ratings */
$('.review-rating').raty({
  readOnly:true,
  score: function(){
    return $(this).attr('data-score');
  },
  path: '/assets/'
});

$('#rating-form').raty({
  scoreName: 'review[ratings]',
  path: '/assets/'
});

  /* Geocoding */
function initMap(){
  var map = new google.maps.Map(document.getElementById('map'));

  var city = $('p#city').text();
  var geocoder = new google.maps.Geocoder();
  var marker = new google.maps.Marker();
  geocoder.geocode(
    { address: city,
      componentRestrictions: {locality: 'Toronto'}
    }, function(results, status){

      if (status == google.maps.GeocoderStatus.OK){
        map.setCenter(results[0].geometry.location);
        map.setZoom(15);
      }

      marker = new google.maps.Marker({
        position: results[0].geometry.location,
        map: map
      });
  });

}


/* Using Lat and Lng for Map*/
// function initMap() {
//   var uluru = {lat: -25.363, lng: 131.044};
//   var map = new google.maps.Map(document.getElementById('map'), {
//     zoom: 4,
//     center: uluru
//   });
//   var marker = new google.maps.Marker({
//     position: uluru,
//     map: map
//   });
//
//   var infowindow = new google.maps.InfoWindow({
//     content: 'Uluru'
//   });
//
//   marker.addListener('click', function(){
//     infowindow.open(map, marker);
//   });
// }
