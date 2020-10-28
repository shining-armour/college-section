import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Map_Vibe extends StatefulWidget {
  @override
  _Map_VibeState createState() => _Map_VibeState();
}

class _Map_VibeState extends State<Map_Vibe> {
  Completer<GoogleMapController> _controller = Completer();
  static const LatLng _center = const LatLng(12.9716 , 77.5946);
  final Set<Marker> _markers = {};
  LatLng _lastMapPosition = _center;
  MapType _currentMapType = MapType.normal;

  static final CameraPosition _position1 = CameraPosition(
    bearing: 192.833,
    target: LatLng(45.531563, -122.677433),
    tilt: 59.440,
    zoom: 11.0,
  );

  _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  _onCameraMove(CameraPosition position) {
    _lastMapPosition = position.target;
  }

  _onMapTypeButtonPressed() {
    setState(() {
      _currentMapType = _currentMapType == MapType.normal
          ? MapType.satellite
          : MapType.normal;
    });
  }

  _addMarker(coordinate) {
    int id =Random().nextInt(100);
    setState(() {
      _markers.add(Marker(position: coordinate , markerId: MarkerId(id.toString())));
    });
  }

  Widget button(Function function, IconData icon) {
    return FloatingActionButton(
      onPressed: function,
      materialTapTargetSize: MaterialTapTargetSize.padded,
      backgroundColor: Colors.blue,
      child: Icon(
        icon,
        size: 36.0,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   automaticallyImplyLeading: true,
        //   backgroundColor: Colors.transparent,
        //   elevation: 0,
        //   leading: IconButton(
        //     icon: SvgPicture.asset("assets/back.svg"),
        //     onPressed: () {
        //       Navigator.pop(context);
        //     },
        //   ),
        // ),
        body:
      Stack(
      children: <Widget>[

        GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 11.0,
          ),
          mapType: _currentMapType,
          markers: _markers.toSet(),
          onCameraMove: _onCameraMove,
          onTap: (coordinate){
            _addMarker(coordinate);
          },
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 50),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Column(
                children: <Widget>[
                  button(_onMapTypeButtonPressed, Icons.map),
                  SizedBox(height: 16.0,),
                ],
              ),
            ),
          ),
        ),
        Padding(padding: EdgeInsets.all(15),
        child:  Container(child:
        Padding(
          padding: EdgeInsets.symmetric(vertical: 15),
          child: IconButton(
            icon: SvgPicture.asset("assets/back.svg"),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),),)
      ],
      )
    );
  }
}
