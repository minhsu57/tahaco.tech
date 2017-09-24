<!-- Google map -->
<div class="">
    <div class="panel-xanh">
        <div id="map" style="width:100%;height:450px; margin-bottom: 20px" class="col-lg-12"></div>
        <script>
            function myMap() {
                var myCenter = new google.maps.LatLng(<?php echo $website->google_map; ?>);
                var mapCanvas = document.getElementById("map");
                var mapOptions = { center: myCenter, zoom: 15, scrollwheel: false, alt: "<?php echo $website->website_name; ?>" };
                var map = new google.maps.Map(mapCanvas, mapOptions);
                var marker = new google.maps.Marker({ position: myCenter });
                marker.setMap(map);

                var infowindow = new google.maps.InfoWindow({
                    content: "<?php echo $website->website_name; ?>"
                });
            }
        </script>
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA28Z3iKdILw1QtJk0P_I-R_hhVDYp6PA8&callback=myMap"></script>
    </div>
</div>
<!-- End google map -->