<!Doctype html>
<html>
<head>
<title>
Home
</title>
<link rel=stylesheet href="stylesheet.css" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script
src="http://maps.googleapis.com/maps/api/js">
</script>

<script>
var myCenter=new google.maps.LatLng(30.350243,76.360243);

function initialize()
{
var mapProp = {
  center:myCenter,
  zoom:5,
  mapTypeId:google.maps.MapTypeId.ROADMAP
  };

var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);

var marker=new google.maps.Marker({
  position:myCenter,
  });

marker.setMap(map);

var infowindow = new google.maps.InfoWindow({
  content:"Thapar University, Patiala"
  });

infowindow.open(map,marker);
}

google.maps.event.addDomListener(window, 'load', initialize);
</script>

</head>

<body>
	<div>
	<h1  > <img src="thapar.jpg" style="float:left;margin-top:3px; margin-left:30px; width:100px;height:120px;border: 3px solid #000; box-shadow: 0 0 40px #fff;">Online Attendance Management System</h1>
</div>
<nav>

    
    <a href="facultylogin.jsp" style="margin-right: 10px; margin-left: 200px;">faculty Login</a>
    <a href="studentlogin.jsp" style="margin-right: 10px; margin-left: 50px;">student Login</a>
    <a href="guardianlogin.jsp" style="margin-right: 10px; margin-left: 50px;"> Guardian Login </a>
    
</nav>

<br/>

    <marquee behavior="alternate" scrolldelay="200" style="padding: 15px; border: 3px solid #000; border-radius: 10px;" >
        <p style="font-size: 34px; color: #fff;">
            ONLINE ATTENDANCE MANAGEMENT SYSTEM
        </p>
        
    </marquee> 
<br/><br>
<div id="googleMap" style="width:100%;height:180px;border: 1px solid #333; border-radius: 18px;" ></div>


<div class="clear">
</div>
<br/>
<!--<center>
<footer >
&copy Amandeep Dhiman
</footer>
</center>-->
</body>
</html>