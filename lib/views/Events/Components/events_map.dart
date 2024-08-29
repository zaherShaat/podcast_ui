import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:pod_mood/configs/constants.dart';

class EventsMap extends StatelessWidget {
  final _mapC = MapController();

  EventsMap({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      mapController: _mapC,
      options: const MapOptions(
        backgroundColor: bottomScaffoldColor,

        initialCenter:
            LatLng(51.509364, -0.128928), // Center the map over London
        initialZoom: 9.2,
      ),
      children: [
        TileLayer(
          // Display map tiles from any source
          urlTemplate:
              'https://tile.openstreetmap.org/{z}/{x}/{y}.png', // OSMF's Tile Server
          userAgentPackageName: 'com.example.app',
          maxNativeZoom: 19,
          tileDisplay: TileDisplay.instantaneous(),
          // retinaMode: true,
          tms: true,
          // Scale tiles when the server doesn't support higher zoom levels
          // And many more recommended properties!
        ),
        // ElevatedButton.icon(
        //   onPressed: () {},
        //   icon: Icon(Icons.abc),
        //   label: Text("ljghkjlg"),
        // ),
        // const RichAttributionWidget(
        //   // Include a stylish prebuilt attribution widget that meets all requirments
        //   attributions: [
        //     TextSourceAttribution(
        //       'OpenStreetMap contributors',
        //       // onTap: () => launchUrl(Uri.parse('https://openstreetmap.org/copyright')), // (external)
        //     ),
        //     // Also add images...
        //   ],
        // ),
      ],
    );
  }
}
