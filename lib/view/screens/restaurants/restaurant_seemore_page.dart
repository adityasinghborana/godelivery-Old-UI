import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sixam_mart/util/images.dart';
import 'package:sixam_mart/util/styles.dart';

class RestaurantSeeMorePage extends StatefulWidget {
  const RestaurantSeeMorePage({Key key}) : super(key: key);

  @override
  State<RestaurantSeeMorePage> createState() => _RestaurantSeeMorePageState();
}

class _RestaurantSeeMorePageState extends State<RestaurantSeeMorePage> {
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // SizedBox(height: 40),
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  blurRadius: 10, color: Color(0xff000000).withOpacity(0.10))
            ]),
            child: Container(
              color: Color(0xffffffff),
              padding:
                  EdgeInsets.only(left: 30, right: 20, top: 50, bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Color(0xff09323e),
                          ),
                        ),
                        SizedBox(width: 10),
                        Text("Mary's Kitchen",
                            style: robotoMedium.copyWith(
                              color: Color(0xff09323e),
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            )),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.call,
                    color: Color(0xffbf1d2d),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 30),
          Expanded(
            child: SizedBox(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Amet tellus pharetra molestie sed Lorem ipsum dolor sit amet, consectetur adipiscing elit. Amet tellus pharetra molestie sedLorem ipsum dolor sit amet, consectetur adipiscing elit. Amet tellus pharetra molestie sed.",
                          style: robotoMedium.copyWith(
                            color: Color(0xff979797),
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          )),
                    ),
                    SizedBox(height: 10),
                    Divider(
                      thickness: 1,
                      color: Color(0xffe3e3e3),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(Images.icHygieneRating),
                          SizedBox(width: 10),
                          Text("view_hygiene_rating".tr,
                              style: robotoMedium.copyWith(
                                color: Color(0xff0eadc7),
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              )),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: Color(0xffe3e3e3),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(Images.icMap),
                          SizedBox(width: 10),
                          Text("3 Bondway, Vauxhall, London, SW81SJ",
                              style: robotoMedium.copyWith(
                                color: Color(0xff979797),
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              )),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        padding: EdgeInsets.all(1),
                        width: double.infinity,
                        height: 291,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xff0eacd7)),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: GoogleMap(
                            initialCameraPosition: _kGooglePlex,
                            mapType: MapType.terrain,
                            //markers: {_kGooglePlexMarkup},
                            onMapCreated: (GoogleMapController controller) {
                              _controller.complete(controller);
                            }),
                      ),
                    ),
                    SizedBox(height: 10),
                    Center(
                      child: Text("view_map".tr,
                          style: robotoMedium.copyWith(
                            decoration: TextDecoration.underline,
                            color: Color(0xffbf1d2d),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          )),
                    ),
                    SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, bottom: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("note".tr,
                              style: robotoMedium.copyWith(
                                color: Color(0xff979797),
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              )),
                          SizedBox(height: 10),
                          Text(
                              'Alcohol is not for sale to people under the age of 18. By placing an order for alcohol product on this site you are declaring that you are 18 years of age or over. Identification will be requested for anyone looking under the age of 25.',
                              style: robotoMedium.copyWith(
                                color: Color(0xff979797),
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
