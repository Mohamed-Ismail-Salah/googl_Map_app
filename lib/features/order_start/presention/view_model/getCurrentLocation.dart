import 'package:geolocator/geolocator.dart';
Future<Position?> getCurrentLocation() async {
  try {
    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,  // Adjust accuracy as needed
    );

     return position;
  } catch (e) {
    print("Error getting location: $e");
  }
  return null;
}
