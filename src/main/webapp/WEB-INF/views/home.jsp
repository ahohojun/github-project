<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>BoomBoxLogin1</title>
	<script src="https://apis.google.com/js/platform.js" async defer></script>
	<meta name = "google-signin-client_id"content = "748459812572-00ii9sdgdhr4hb5kcmp62bvsf0pv5q45.apps.googleusercontent.com">
	
	<script type="text/javascript">


function onSignIn(googleUser) {
	  var profile = googleUser.getBasicProfile();
	  console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
	  console.log('Name: ' + profile.getName());
	  console.log('Image URL: ' + profile.getImageUrl());
	  console.log('Email: ' + profile.getEmail()); // This is null if the 'email' scope is not present.
	}
function signOut() {
    var auth2 = gapi.auth2.getAuthInstance();
    auth2.signOut().then(function () {
      console.log('User signed out.');
    });
    auth2.disconnect
  }
</script>
	<style type="text/css">
	.g-signin2{
	margin-left: 950px;
	margin-top: 700px;
}
	#bgvideo {
     position: fixed;
     top: 0px;
     left: 0px;
     min-width: 100%;
     min-height: 100%;
     width: auto;
     height: autopx;
     z-index: -1000;
     overflow: hidden;
}
	</style>
</head>


<body>

<video id="bgvideo"  preload="auto" autoplay="autoplay" loop="loop" muted="muted" volume="0">
<source src="/resources/video/video1.mp4">

</video>

<div class="g-signin2" data-onsuccess="onSignIn"></div>
<a href="#" onclick="signOut();">Sign out</a>



</body>
</html>
