import 'dart:async';
import 'package:deliveryapp/core/utils/app_size.dart';
import 'package:deliveryapp/core/utils/app_string.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../../../core/utils/app_images.dart';
import '../../view_model/getPolyline.dart';

class GoogleMapCustomWidget extends StatefulWidget {
  const GoogleMapCustomWidget({Key? key}) : super(key: key);

  @override
  State<GoogleMapCustomWidget> createState() => _GoogleMapCustomWidgetState();
}

class _GoogleMapCustomWidgetState extends State<GoogleMapCustomWidget> {
  final Completer<GoogleMapController> controller =
  Completer<GoogleMapController>();
  Set<Marker> createMarker = {};
  static const CameraPosition kGooglePlex = CameraPosition(
    target: LatLng(AppSize.startLatitude, AppSize.startLongitude),
    zoom: AppSize.s_15_5,
  );

  @override
  void initState() {
    super.initState();
    getPolyline();
    addPolyLine();
    setMarkerImage();
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      myLocationEnabled: true,
      tiltGesturesEnabled: true,
      compassEnabled: true,
      scrollGesturesEnabled: true,
      zoomGesturesEnabled: true,
      polylines: Set<Polyline>.of(polylines.values),
      markers: createMarker,
      mapType: MapType.normal,
      initialCameraPosition: kGooglePlex,
      onMapCreated: (GoogleMapController controller) {
        this.controller.complete(controller);
      },
    );
  }

  setMarkerImage() async {
    BitmapDescriptor shopIcon = await BitmapDescriptor.fromAssetImage(
      const ImageConfiguration(size: Size(AppSize.s_15, AppSize.s_15)),
      AppImages.shopIcon,
    );
    BitmapDescriptor deliveryIcon = await BitmapDescriptor.fromAssetImage(
      const ImageConfiguration(size: Size(AppSize.s_15, AppSize.s_15)),
      AppImages.goodsIcon,
    );

    setState(() {
      createMarker.add(
        Marker(
          markerId: const MarkerId(AppString.markerId1),
          position: const LatLng(AppSize.startLatitude, AppSize.startLongitude),
          infoWindow: const InfoWindow(title:AppString.markerId1),
          icon: shopIcon,
          draggable: true,
          onTap: () {},
          onDragEnd: (LatLng v) {

          },
        ),
      );
      createMarker.add(
        Marker(
          markerId: const MarkerId(AppString.markerId2),
          position: const LatLng(AppSize.endLatitude, AppSize.endLongitude),
          infoWindow: const InfoWindow(title: AppString.markerId2),
          icon: deliveryIcon,
          draggable: true,
          onTap: () {},
          onDragEnd: (LatLng v) {
          },
        ),
      );
    });
  }
}
