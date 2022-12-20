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
              zoomControlsEnabled: false,
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
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Color(0xff000000),
                    ),
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
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff000000)),
            ),
          ),
          Positioned(
              top: 60, right: 60, child: Image.asset(Images.icBlackLocation)),
          Positioned(
              top: 300,
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
                      'your_otp'.tr,
                      style: robotoRegular.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff000000)),
                    ),
                    SizedBox(width: 5),
                    Text(
                      '1234',
                      style: robotoRegular.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff000000)),
                    ),
                  ],
                ),
              )),
          Positioned(
              top: 345,
              left: 0,
              right: 20,
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
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(Images.icCart),
                            Image.asset(Images.icLine),
                            Image.asset(Images.icRoundHome)
                          ],
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Mary's Kitchen",
                                style: robotoRegular.copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff1b1721)),
                              ),
                              SizedBox(height: 8),
                              Text(
                                "Restaurant",
                                style: robotoRegular.copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xffacacac)),
                              ),
                              SizedBox(height: 12),
                              // Divider(
                              //   thickness: 5.0,
                              //   color: Color(0xff0eacd7),
                              // ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 0.3,
                                color: Color(0xff979797),
                              ),
                              SizedBox(height: 12),
                              Text(
                                "Langsep Street",
                                style: robotoRegular.copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff1b1721)),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Home",
                                style: robotoRegular.copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xffacacac)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
          Positioned(
              bottom: 157,
              right: 20,
              left: 0,
              child: Container(
                margin: EdgeInsets.only(left: 20),
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 22),
                decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.circular(9)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(Images.icRedClock),
                        SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'estimate_time'.tr,
                              style: robotoRegular.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff818181)),
                            ),
                            SizedBox(height: 5),
                            Text(
                              '10:41 am',
                              style: robotoRegular.copyWith(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff1b1721)),
                            ),
                          ],
                        ),
                        SizedBox(width: 23),
                        Container(
                          height: 35,
                          width: 1,
                          color: Color(0xff979797),
                        ),
                        SizedBox(width: 23),
                        Image.asset(
                          Images.icBoxLocation,
                          height: 30,
                          width: 25,
                        ),
                        SizedBox(width: 12),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'distance'.tr,
                              style: robotoRegular.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff818181)),
                            ),
                            Text(
                              '450 m',
                              style: robotoRegular.copyWith(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff1b1721)),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              )),
          Positioned(
              bottom: 30,
              left: 20,
              right: 20,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 21),
                decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.circular(9)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                Images.imgPlaceholder,
                                height: 63,
                                width: 63,
                              ),
                              SizedBox(width: 16),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Allee Lane',
                                    style: robotoRegular.copyWith(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff09323e)),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    'Driver - N 382 AOW',
                                    style: robotoRegular.copyWith(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff979797)),
                                  ),
                                  SizedBox(height: 8),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        Images.icStar,
                                        height: 10,
                                        width: 10,
                                      ),
                                      SizedBox(width: 6),
                                      Text(
                                        '4.9',
                                        textAlign: TextAlign.center,
                                        style: robotoRegular.copyWith(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xffffb740)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Image.asset(Images.icMessage),
                        SizedBox(width: 17),
                        Image.asset(Images.icPhone),
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
