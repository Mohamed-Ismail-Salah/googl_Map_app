import 'package:deliveryapp/features/Map/presention/view/widget/google_map_widget.dart';
import 'package:flutter/material.dart';
class MapView extends StatelessWidget {
  const MapView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: GoogleMapCustomWidget(),
      ),
    );
  }
}

