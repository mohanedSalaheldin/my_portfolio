import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:flutter_map_cancellable_tile_provider/flutter_map_cancellable_tile_provider.dart';
import 'package:my_portfolio/models/contacts.dart';

class MyLocationWidget extends StatelessWidget {
  MyLocationWidget({
    super.key,
  });

  final LatLng latLng = LatLng(MyContacts.myLat, MyContacts.myLong);
  final String mapTilerApiKey = 'jr7zyfoow1WxdP0v4vGU';

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        initialCenter: latLng,
        initialZoom: 11,
      ),
      children: [
        TileLayer(
          tileProvider: CancellableNetworkTileProvider(),
          urlTemplate:
              "https://api.maptiler.com/maps/streets/{z}/{x}/{y}.png?key=$mapTilerApiKey",
          additionalOptions: {'key': mapTilerApiKey},
          userAgentPackageName: 'com.example.app',
        ),
        MarkerLayer(markers: [
          Marker(
            point: latLng,
            child: const Icon(
              Icons.location_pin,
              color: Colors.red,
              size: 40.0,
            ),
          )
        ])
      ],
    );
  }
}
