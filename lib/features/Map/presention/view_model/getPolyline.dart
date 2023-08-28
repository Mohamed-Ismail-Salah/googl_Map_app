 import 'package:deliveryapp/core/utils/app_color.dart';
import 'package:deliveryapp/core/utils/app_size.dart';
 import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../../core/utils/app_string.dart';

  getPolyline() async {
    String googleAPiKey =AppString.sApiMap;
    PolylinePoints polylinePoints = PolylinePoints();
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
    googleAPiKey,
    const PointLatLng(AppSize.startLatitude, AppSize.startLongitude),
    const PointLatLng(AppSize.endLatitude, AppSize.endLongitude),
    travelMode: TravelMode.driving,
  );
  polylineCoordinates.add(const LatLng(AppSize.startLatitude, AppSize.startLongitude));
  polylineCoordinates.add(const LatLng(AppSize.endLatitude, AppSize.endLongitude));

}
 Map<PolylineId, Polyline> polylines = {};
 List<LatLng> polylineCoordinates = [];

 void addPolyLine() {
   PolylineId id = const PolylineId("poly");
   Polyline polyline = Polyline(
     width: 5,
     polylineId: id,
     color: AppColor.primerColor,
     points: polylineCoordinates,
   );
   polylines[id] = polyline;
 }