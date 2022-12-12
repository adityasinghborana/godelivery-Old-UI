import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sixam_mart/util/images.dart';
import 'package:sixam_mart/util/styles.dart';

class TrackOrderPage extends StatefulWidget {
  const TrackOrderPage({Key key}) : super(key: key);

  @override
  State<TrackOrderPage> createState() => _TrackOrderPageState();
}

class _TrackOrderPageState extends State<TrackOrderPage> {
  final Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = const CameraPosition(
    target: LatLng(
      22.37251674570702,
      70.8165025189571,
    ),
    zoom: 5.4746,
  );

  static final Marker _kGooglePlexMarkup = const Marker(
    markerId: MarkerId('_kGooglePlex'),
    infoWindow: InfoWindow(title: 'EWD'),
    icon: BitmapDescriptor.defaultMarker,
    position: LatLng(
      22.37251674570702,
      70.8165025189571,
    ),
  );

  static final CameraPosition _kLAke = const CameraPosition(
    bearing: 192.8334901395799,
    target: const LatLng(22.34377873490399, 70.785428490763),
    tilt: 59.440717697143555,
    //zoom: 14.4746,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
              initialCameraPosition: _kGooglePlex,
              mapType: MapType.terrain,
              //markers: {_kGooglePlexMarkup},
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              }),
          Positioned(
              top: 60,
              left: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    color: Color(0xff000000),
                  ),
                ],
              )),
          Positioned(
            top: 63,
            left: 170,
            right: 60,
            child: Text(
              'track_order'.tr,
              style: robotoRegular.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff000000)),
            ),
          ),
          Positioned(
              top: 63,
              right: 60,
              child: Icon(Icons.location_searching_rounded,
                  color: Color(0xff000000))),
          Positioned(
              top: 350,
              child: Container(
                margin: EdgeInsets.only(left: 20),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.circular(9)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'your_otp :'.tr,
                      style: robotoRegular.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff000000)),
                    ),
                    Text(
                      '1234',
                      style: robotoRegular.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff000000)),
                    ),
                  ],
                ),
              )),
          Positioned(
              top: 400,
              child: Container(
                margin: EdgeInsets.only(left: 20),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.circular(9)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [],
                    ),
                  ],
                ),
              )),
          Positioned(
              bottom: 30,
              child: Container(
                margin: EdgeInsets.only(left: 20),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.circular(9)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(Images.icClock),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'estimate_time'.tr,
                              style: robotoRegular.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff979797)),
                            ),
                            Text(
                              '10:41 am',
                              style: robotoRegular.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff000000)),
                            ),
                          ],
                        ),
                        Container(
                          height: 35,
                          width: 1,
                          color: Color(0xff979797),
                        ),
                        Image.asset(
                          Images.icLocation,
                          height: 30,
                          width: 25,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'estimate_time'.tr,
                              style: robotoRegular.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff979797)),
                            ),
                            Text(
                              '10:41 am',
                              style: robotoRegular.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff000000)),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLAke));
  }
}
