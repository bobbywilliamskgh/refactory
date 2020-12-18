import 'dart:async';

import 'package:location/location.dart';
import '../models/user_location.dart';

class LocationHelper {
  UserLocation _currentLocation;
  Location location = Location();

  StreamController<UserLocation> _locationController =
      StreamController<UserLocation>();

  LocationHelper() {
    // Request permission to use location
    location.requestPermission().then((status) {
      if (status == PermissionStatus.granted) {
        location.onLocationChanged.listen((locationData) {
          if (locationData != null) {
            _locationController.add(UserLocation(
              latitude: locationData.latitude,
              longitude: locationData.longitude,
            ));
          }
        });
      }
    });
  }

  Stream<UserLocation> get locationStream => _locationController.stream;

  Future<UserLocation> getLocation() async {
    try {
      var userLocation = await location.getLocation();
      _currentLocation = UserLocation(
        latitude: userLocation.latitude,
        longitude: userLocation.longitude,
      );
    } on Exception catch (e) {
      print('Tidak bisa mendapatkan posisi : ${e.toString()}');
    }
    return _currentLocation;
  }
}
