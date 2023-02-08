import 'package:geolocator/geolocator.dart';

class GetLocation
{
  Future<void> getLocation()
  async{
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    double lat = position.latitude;
    double lon = position.longitude;
  }
}