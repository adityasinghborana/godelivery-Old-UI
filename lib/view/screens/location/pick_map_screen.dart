import 'package:sixam_mart/controller/location_controller.dart';
import 'package:sixam_mart/controller/splash_controller.dart';
import 'package:sixam_mart/data/model/response/address_model.dart';
import 'package:sixam_mart/helper/responsive_helper.dart';
import 'package:sixam_mart/util/dimensions.dart';
import 'package:sixam_mart/util/images.dart';
import 'package:sixam_mart/util/styles.dart';
import 'package:sixam_mart/view/base/custom_button.dart';
import 'package:sixam_mart/view/base/menu_drawer.dart';
import 'package:sixam_mart/view/base/web_menu_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sixam_mart/view/screens/location/widget/add_address_bottomsheet.dart';
import 'package:sixam_mart/view/screens/location/widget/change_address_bottomsheet.dart';
import 'package:sixam_mart/view/screens/location/widget/serach_location_widget.dart';

class PickMapScreen extends StatefulWidget {
  final bool fromSignUp;
  final bool fromAddAddress;
  final bool canRoute;
  final String route;
  final GoogleMapController googleMapController;
  final Function(AddressModel address) onPicked;
  PickMapScreen({
    @required this.fromSignUp,
    @required this.fromAddAddress,
    @required this.canRoute,
    @required this.route,
    this.googleMapController,
    this.onPicked,
  });

  @override
  State<PickMapScreen> createState() => _PickMapScreenState();
}

class _PickMapScreenState extends State<PickMapScreen> {
  GoogleMapController _mapController;
  CameraPosition _cameraPosition;
  LatLng _initialPosition;

  @override
  void initState() {
    super.initState();

    if (widget.fromAddAddress) {
      Get.find<LocationController>().setPickData();
    }
    _initialPosition = LatLng(
      double.parse(
          Get.find<SplashController>().configModel.defaultLocation.lat ?? '0'),
      double.parse(
          Get.find<SplashController>().configModel.defaultLocation.lng ?? '0'),
    );
    if (Get.find<SplashController>().configModel.module == null &&
        Get.find<SplashController>().moduleList == null) {
      Get.find<SplashController>().getModules();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ResponsiveHelper.isDesktop(context) ? WebMenuBar() : null,
      endDrawer: MenuDrawer(),
      body: SafeArea(
          child: Center(
              child: SizedBox(
        width: Dimensions.WEB_MAX_WIDTH,
        child: GetBuilder<LocationController>(builder: (locationController) {
          /*print('--------------${'${locationController.pickPlaceMark.name ?? ''} '
              '${locationController.pickPlaceMark.locality ?? ''} '
              '${locationController.pickPlaceMark.postalCode ?? ''} ${locationController.pickPlaceMark.country ?? ''}'}');*/

          return Stack(children: [
            GoogleMap(
              initialCameraPosition: CameraPosition(
                target: widget.fromAddAddress
                    ? LatLng(locationController.position.latitude,
                        locationController.position.longitude)
                    : _initialPosition,
                zoom: 16,
              ),
              minMaxZoomPreference: MinMaxZoomPreference(0, 16),
              myLocationButtonEnabled: false,
              onMapCreated: (GoogleMapController mapController) {
                _mapController = mapController;
                if (!widget.fromAddAddress) {
                  Get.find<LocationController>()
                      .getCurrentLocation(false, mapController: mapController);
                }
              },
              scrollGesturesEnabled: !Get.isDialogOpen,
              zoomControlsEnabled: false,
              onCameraMove: (CameraPosition cameraPosition) {
                _cameraPosition = cameraPosition;
              },
              onCameraMoveStarted: () {
                locationController.disableButton();
              },
              onCameraIdle: () {
                Get.find<LocationController>()
                    .updatePosition(_cameraPosition, false);
              },
            ),
            Center(
                child: !locationController.loading
                    ? Container(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              Images.imgMarkerBanner,
                              height: 50,
                              width: 250,
                            ),
                            Image.asset(
                                Images.icPickMarkerPin
                                // pick_marker
                                ,
                                height: 60,
                                width: 60),
                          ],
                        ),
                      )
                    : CircularProgressIndicator()),

            //search location widget

            Positioned(
              top: Dimensions.PADDING_SIZE_LARGE,
              left: Dimensions.PADDING_SIZE_SMALL,
              right: Dimensions.PADDING_SIZE_SMALL,
              child: SearchLocationWidget(
                  mapController: _mapController,
                  pickedAddress: locationController.pickAddress,
                  isEnabled: null),
            ),
            Positioned(
              bottom: 150,
              right: Dimensions.PADDING_SIZE_SMALL,
              child: FloatingActionButton(
                child: Icon(
                  Icons.my_location,
                  color: Color(0xffffffff),
                  size: 20,
                ),
                mini: true,
                backgroundColor: Color(0xff0eacd7),
                onPressed: () =>
                    Get.find<LocationController>().checkPermission(() {
                  Get.find<LocationController>()
                      .getCurrentLocation(false, mapController: _mapController);
                }),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: !locationController.isLoading
                  ? Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10))),

                      // height: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20, left: 20),
                            child: Text(
                                'select_delevery_location'.tr.toUpperCase(),
                                style: robotoBlack.copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff5c6678))),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(27, 32, 20, 18),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        Images.icLocation,
                                        height: 30,
                                        width: 30,
                                      ),
                                      SizedBox(width: 22),
                                      Text('Sector A',
                                          style: robotoBlack.copyWith(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xff373a41))),
                                    ],
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Get.bottomSheet(
                                      ChangeAddressBottomSheet(
                                          pickAddress:
                                              locationController.pickAddress),
                                      // backgroundColor: Colors.transparent,
                                      isScrollControlled: true,
                                    );
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 6),
                                    decoration: BoxDecoration(
                                      color: Color(0xffe3e3e3),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Text('change'.tr.toUpperCase(),
                                        style: robotoBlack.copyWith(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xffbf1d2d))),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(locationController.pickAddress,
                                style: robotoBlack.copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff979797))),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 30, 20, 53),
                            child: CustomButton(
                              buttonText: locationController.inZone
                                  ? widget.fromAddAddress
                                      ? 'pick_address'.tr
                                      : 'confirm_location'.tr
                                  // 'pick_location'.tr
                                  : 'service_not_available_in_this_area'.tr,
                              onPressed: (locationController.buttonDisabled ||
                                      locationController.loading)
                                  ? null
                                  : () {
                                      Get.bottomSheet(
                                        AddAddressBottomSheet(
                                            pickAddress:
                                                locationController.pickAddress),
                                        // backgroundColor: Colors.transparent,
                                        isScrollControlled: true,
                                      );
                                      // Get.to(DashboardScreen(pageIndex: 0));
                                      // if (locationController
                                      //             .pickPosition.latitude !=
                                      //         0 &&
                                      //     locationController
                                      //         .pickAddress.isNotEmpty) {
                                      //   if (widget.onPicked != null) {
                                      //     AddressModel _address = AddressModel(
                                      //       latitude: locationController
                                      //           .pickPosition.latitude
                                      //           .toString(),
                                      //       longitude: locationController
                                      //           .pickPosition.longitude
                                      //           .toString(),
                                      //       addressType: 'others',
                                      //       address:
                                      //           locationController.pickAddress,
                                      //       contactPersonName:
                                      //           locationController
                                      //               .getUserAddress()
                                      //               .contactPersonName,
                                      //       contactPersonNumber:
                                      //           locationController
                                      //               .getUserAddress()
                                      //               .contactPersonNumber,
                                      //     );
                                      //     widget.onPicked(_address);
                                      //     Get.back();
                                      //   } else if (widget.fromAddAddress) {
                                      //     if (widget.googleMapController !=
                                      //         null) {
                                      //       widget.googleMapController
                                      //           .moveCamera(CameraUpdate
                                      //               .newCameraPosition(
                                      //                   CameraPosition(
                                      //                       target: LatLng(
                                      //                         locationController
                                      //                             .pickPosition
                                      //                             .latitude,
                                      //                         locationController
                                      //                             .pickPosition
                                      //                             .longitude,
                                      //                       ),
                                      //                       zoom: 16)));
                                      //       locationController
                                      //           .setAddAddressData();
                                      //     }
                                      //     Get.back();
                                      //   } else {
                                      //     AddressModel _address = AddressModel(
                                      //       latitude: locationController
                                      //           .pickPosition.latitude
                                      //           .toString(),
                                      //       longitude: locationController
                                      //           .pickPosition.longitude
                                      //           .toString(),
                                      //       addressType: 'others',
                                      //       address:
                                      //           locationController.pickAddress,
                                      //     );
                                      //     locationController
                                      //         .saveAddressAndNavigate(
                                      //       _address,
                                      //       widget.fromSignUp,
                                      //       widget.route,
                                      //       widget.canRoute,
                                      //       ResponsiveHelper.isDesktop(context),
                                      //     );
                                      //   }
                                      // } else {
                                      //   showCustomSnackBar(
                                      //       'pick_an_address'.tr);
                                      // }
                                    },
                            ),
                          ),
                        ],
                      ),
                    )
                  : Center(child: CircularProgressIndicator()),
            ),
            // Positioned(
            //   bottom: 0,
            //   left: 0,
            //   right: 0,
            //   child: !locationController.isLoading
            //       ? Container(
            //           decoration: BoxDecoration(
            //               color: Colors.white,
            //               borderRadius: BorderRadius.only(
            //                   topLeft: Radius.circular(10),
            //                   topRight: Radius.circular(10))),

            //           // height: 100,
            //           child: Padding(
            //             padding: const EdgeInsets.fromLTRB(20, 29, 20, 53),
            //             child: CustomButton(
            //               buttonText: locationController.inZone
            //                   ? widget.fromAddAddress
            //                       ? 'pick_address'.tr
            //                       : 'confirm_location'.tr
            //                   // 'pick_location'.tr
            //                   : 'service_not_available_in_this_area'.tr,
            //               onPressed: (locationController.buttonDisabled ||
            //                       locationController.loading)
            //                   ? null
            //                   : () {
            //                       if (locationController
            //                                   .pickPosition.latitude !=
            //                               0 &&
            //                           locationController
            //                               .pickAddress.isNotEmpty) {
            //                         if (widget.onPicked != null) {
            //                           AddressModel _address = AddressModel(
            //                             latitude: locationController
            //                                 .pickPosition.latitude
            //                                 .toString(),
            //                             longitude: locationController
            //                                 .pickPosition.longitude
            //                                 .toString(),
            //                             addressType: 'others',
            //                             address: locationController.pickAddress,
            //                             contactPersonName: locationController
            //                                 .getUserAddress()
            //                                 .contactPersonName,
            //                             contactPersonNumber: locationController
            //                                 .getUserAddress()
            //                                 .contactPersonNumber,
            //                           );
            //                           widget.onPicked(_address);
            //                           Get.back();
            //                         } else if (widget.fromAddAddress) {
            //                           if (widget.googleMapController != null) {
            //                             widget.googleMapController.moveCamera(
            //                                 CameraUpdate.newCameraPosition(
            //                                     CameraPosition(
            //                                         target: LatLng(
            //                                           locationController
            //                                               .pickPosition
            //                                               .latitude,
            //                                           locationController
            //                                               .pickPosition
            //                                               .longitude,
            //                                         ),
            //                                         zoom: 16)));
            //                             locationController.setAddAddressData();
            //                           }
            //                           Get.back();
            //                         } else {
            //                           AddressModel _address = AddressModel(
            //                             latitude: locationController
            //                                 .pickPosition.latitude
            //                                 .toString(),
            //                             longitude: locationController
            //                                 .pickPosition.longitude
            //                                 .toString(),
            //                             addressType: 'others',
            //                             address: locationController.pickAddress,
            //                           );
            //                           locationController.saveAddressAndNavigate(
            //                             _address,
            //                             widget.fromSignUp,
            //                             widget.route,
            //                             widget.canRoute,
            //                             ResponsiveHelper.isDesktop(context),
            //                           );
            //                         }
            //                       } else {
            //                         showCustomSnackBar('pick_an_address'.tr);
            //                       }
            //                     },
            //             ),
            //           ),

            //         )
            //       : Center(child: CircularProgressIndicator()),
            // ),
          ]);
        }),
      ))),
    );
  }
}
