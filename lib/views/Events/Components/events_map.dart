
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class EventsMap extends StatefulWidget {
  const EventsMap({super.key});

  @override
  State<EventsMap> createState() => _EventsMapState();
}

class _EventsMapState extends State<EventsMap> {
  // final Completer<GoogleMapController> _controller =
  //     Completer<GoogleMapController>();
  static const CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.77483, -122.41942),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  GoogleMapController? mapController;
  final LatLng _origin = const LatLng(37.77483, -122.41942);
  final LatLng _destination = const LatLng(37.43296265331129, -122.08832357078792);
  List<LatLng> polylineCoordinates = [];
  late PolylinePoints polylinePoints;

  _getPolyline() async {
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
        request: PolylineRequest(
          origin: PointLatLng(_origin.latitude, _origin.longitude),
          destination:
              PointLatLng(_destination.latitude, _destination.longitude),
          mode: TravelMode.driving,
        ),
        googleApiKey: "AIzaSyA-y_2FktvjCRexy6teVrkdFppCSc9AdiI");

    if (result.points.isNotEmpty) {
      for (PointLatLng point in result.points) {
        polylineCoordinates.add(LatLng(point.latitude, point.longitude));
      }
      setState(() {});
    }
  }

  @override
  void initState() {
    super.initState();
    polylinePoints = PolylinePoints();
    _getPolyline();
  }

  void _onMapCreated(GoogleMapController googleMapController) {
    mapController = googleMapController;
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      zoomControlsEnabled: true,
      zoomGesturesEnabled: true,
      minMaxZoomPreference: const MinMaxZoomPreference(2, 12),
      compassEnabled: true,
      mapToolbarEnabled: false,
      onTap: (coordinate) {
        
      },
      padding: const EdgeInsets.only(top: kToolbarHeight / 2),
      trafficEnabled: true,
      initialCameraPosition: _kLake,
      onMapCreated: _onMapCreated,
      buildingsEnabled: true,
      indoorViewEnabled: false,
      mapType: MapType.normal,
      // style: , make styling>>> 29/8/2024
      myLocationButtonEnabled: true,
      polylines: {
        Polyline(
          polylineId: const PolylineId('route1'),
          points: polylineCoordinates,
          color: Colors.blue,
          width: 6,
        ),
      },
      markers: {
        Marker(
          markerId: const MarkerId('origin'),
          position: _origin,
        ),
        Marker(
          markerId: const MarkerId('destination'),
          position: _destination,
        ),
      },
    );
  }
}
