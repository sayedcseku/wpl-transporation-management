alert('yo');
function showUser(str) {
   if (str == "") {
       document.getElementById("txtHint").innerHTML = "";
       return;
   } else {
       if (window.XMLHttpRequest) {
           // code for IE7+, Firefox, Chrome, Opera, Safari
           xmlhttp = new XMLHttpRequest();
       } else {
           // code for IE6, IE5
           xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
       }
       xmlhttp.onreadystatechange = function() {
           if (this.readyState == 4 && this.status == 200) {
               document.getElementById("txtHint").innerHTML = this.responseText;
           }
       };
       xmlhttp.open("GET","transport_route.php?q="+str,true);
       xmlhttp.send();
   }

   function initMap() {
     var uluru = {lat: -25.363, lng: 131.044};
     var map = new google.maps.Map(document.getElementById('map'), {
       zoom: 4,
       center: uluru
     });
     var marker = new google.maps.Marker({
       position: uluru,
       map: map
     });
   }
