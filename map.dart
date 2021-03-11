import 'package:flutter/material.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'navbar.dart';
import 'package:location/location.dart';
import 'globals.dart' as global;


Future<LatLng> acquireCurrentLocation() async {
  // Initializes the plugin and starts listening for potential platform events
  Location location = new Location();

  // Whether or not the location service is enabled
  bool serviceEnabled;
  
  // Status of a permission request to use location services
  PermissionStatus permissionGranted;

  // Check if the location service is enabled, and if not, then request it. In
  // case the user refuses to do it, return immediately with a null result
  serviceEnabled = await location.serviceEnabled();
  if (!serviceEnabled) {
    serviceEnabled = await location.requestService();
    if (!serviceEnabled) {
      return null;
    }
  }

  // Check for location permissions; similar to the workflow in Android apps,
  // so check whether the permissions is granted, if not, first you need to
  // request it, and then read the result of the request, and only proceed if
  // the permission was granted by the user
  permissionGranted = await location.hasPermission();
  if (permissionGranted == PermissionStatus.denied) {
    permissionGranted = await location.requestPermission();
    if (permissionGranted != PermissionStatus.granted) {
      return null;
    }
  }

  // Gets the current location of the user
  final locationData = await location.getLocation();
  global.latitude = locationData.longitude;
  global.longitude = locationData.latitude;
  print(locationData);
  print("Longitude: ${global.longitude}");
  print("Latitude: ${global.latitude}");
  //print(LatLng(locationData.latitude, locationData.longitude));
  
  return LatLng(locationData.latitude, locationData.longitude);
}

class MapPage extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MapPage> {

    @override
  Widget build(BuildContext context) {
       final String token = 'sk.eyJ1IjoiYW5rdXJnMTMyIiwiYSI6ImNrbTNwdG5obzR6OHcydm4xdThrc2JlaHcifQ.OG79p11A6C5nw4KshMrVKw';
       final String style = 'mapbox://styles/ankurg132/ckm3tgkuscgr717qk5fm789nv';
       Future<LatLng> varfuture = acquireCurrentLocation();
       print("Hello");
       print(varfuture);
       double lat = global.latitude;
       double long = global.longitude;
       return Scaffold(
         body: MapboxMap(
           accessToken: token,
           styleString: style,
           myLocationEnabled: true,
           myLocationRenderMode: MyLocationRenderMode.GPS,
           myLocationTrackingMode: MyLocationTrackingMode.TrackingGPS,
           initialCameraPosition: CameraPosition(
             zoom: 15.0,
             target:
              LatLng(lat, long),
           ),
         ),
         bottomNavigationBar: BottomNavBar(),
       );
  }
}
