import 'package:geolocator/geolocator.dart';

class Location{
  double? latitude;
  double? longitude;

  Future<void> getCurrentlocation()  async {

    try{
      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied ||
          permission == LocationPermission.deniedForever) {
        print('Permission not given');
        LocationPermission asked = await Geolocator.requestPermission();
      } else {
        Position currentPosition = await Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.bestForNavigation);
        // print("Longitude :" + currentPosition.longitude.toString());
        // print("Latitude :" + currentPosition.latitude.toString());

        latitude = currentPosition.latitude;
        longitude = currentPosition.longitude;


      }
    }
    catch(e){
      print(e);
    }
  }
}