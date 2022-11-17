// ignore_for_file: unused_import

import 'dart:math';

import 'package:shimmer_animation/shimmer_animation.dart';
import 'package:sixam_mart/controller/auth_controller.dart';
import 'package:sixam_mart/controller/banner_controller.dart';
import 'package:sixam_mart/controller/location_controller.dart';
import 'package:sixam_mart/controller/splash_controller.dart';
import 'package:sixam_mart/data/model/response/address_model.dart';
import 'package:sixam_mart/helper/responsive_helper.dart';
import 'package:sixam_mart/util/dimensions.dart';
import 'package:sixam_mart/util/images.dart';
import 'package:sixam_mart/util/styles.dart';
import 'package:sixam_mart/view/base/custom_image.dart';
import 'package:sixam_mart/view/base/custom_loader.dart';
import 'package:sixam_mart/view/base/title_widget.dart';
import 'package:sixam_mart/view/screens/address/widget/address_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart/view/screens/home/widget/banner_view.dart';
import 'package:sixam_mart/view/screens/home/widget/popular_store_view.dart';

class ModuleView extends StatelessWidget {
  final SplashController splashController;
  ModuleView({@required this.splashController});
  static List listColor = [
    const Color(0xffc6192a),
    const Color(0xff0facd7),
    const Color(0xfffc6878),
    const Color(0xff0184f8),
    const Color(0xffFFAB40),
    const Color(0xffE3AB9A),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      GetBuilder<BannerController>(builder: (bannerController) {
        return BannerView(isFeatured: false);
      }),
      splashController.moduleList != null
          ? splashController.moduleList.length > 0
              ? ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: splashController.moduleList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () => splashController.switchModule(index, true),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(21, 20, 18, 15),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: listColor[index],
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 1,
                              ),
                              // CustomImage(
                              //   image:
                              //       '${splashController.configModel.baseUrls.moduleImageUrl}/${splashController.moduleList[index].icon}',
                              //   height: 50,
                              //   width: 50,
                              // ),

                              Image.asset(
                                Images.imgRestro,
                                height: 159,
                                width: 135,
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    splashController
                                        .moduleList[index].moduleName,
                                    style: robotoBold.copyWith(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "lorem ipsum dolor sit amet,consector.",
                                    style: robotoRegular.copyWith(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: 140,
                                      ),
                                      Text(
                                        "Explore",
                                        style: robotoBold.copyWith(
                                          color: Colors.white,
                                          fontSize: 12,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 2,
                                      ),
                                      Icon(
                                        Icons.arrow_forward,
                                        size: 23,
                                        color: Colors.white,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  })

              // GridView.builder(
              //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //       crossAxisCount: 3,
              //       mainAxisSpacing: Dimensions.PADDING_SIZE_SMALL,
              //       crossAxisSpacing: Dimensions.PADDING_SIZE_SMALL,
              //       childAspectRatio: (1 / 1),
              //     ),
              //     padding: EdgeInsets.all(Dimensions.PADDING_SIZE_SMALL),
              //     itemCount: splashController.moduleList.length,
              //     shrinkWrap: true,
              //     physics: NeverScrollableScrollPhysics(),
              //     itemBuilder: (context, index) {
              //       return InkWell(
              //         onTap: () => splashController.switchModule(index, true),
              //         child: Container(
              //           decoration: BoxDecoration(
              //             borderRadius:
              //                 BorderRadius.circular(Dimensions.RADIUS_DEFAULT),
              //             color: Theme.of(context).cardColor,
              //             boxShadow: [
              //               BoxShadow(
              //                   color: Colors.grey[Get.isDarkMode ? 700 : 200],
              //                   spreadRadius: 1,
              //                   blurRadius: 5)
              //             ],
              //           ),
              //           child: Column(
              //               mainAxisAlignment: MainAxisAlignment.center,
              //               children: [
              //                 ClipRRect(
              //                   borderRadius: BorderRadius.circular(
              //                       Dimensions.RADIUS_SMALL),
              //                   child: CustomImage(
              //                     image:
              //                         '${splashController.configModel.baseUrls.moduleImageUrl}/${splashController.moduleList[index].icon}',
              //                     height: 50,
              //                     width: 50,
              //                   ),
              //                 ),
              //                 SizedBox(height: Dimensions.PADDING_SIZE_SMALL),
              //                 Center(
              //                     child: Text(
              //                   splashController.moduleList[index].moduleName,
              //                   textAlign: TextAlign.center,
              //                   maxLines: 2,
              //                   overflow: TextOverflow.ellipsis,
              //                   style: robotoMedium.copyWith(
              //                       fontSize: Dimensions.fontSizeSmall),
              //                 )),
              //               ]),
              //         ),
              //       );
              //     },
              //   )
              : Center(
                  child: Padding(
                  padding: EdgeInsets.only(top: Dimensions.PADDING_SIZE_SMALL),
                  child: Text('no_module_found'.tr),
                ))
          : ModuleShimmer(isEnabled: splashController.moduleList == null),
      SizedBox(height: Dimensions.PADDING_SIZE_LARGE),
      // Padding(
      //   padding:
      //       EdgeInsets.symmetric(horizontal: Dimensions.PADDING_SIZE_SMALL),
      //   child: TitleWidget(title: 'deliver_to'.tr),
      // ),
      //SizedBox(height: Dimensions.PADDING_SIZE_EXTRA_SMALL),
      // GetBuilder<LocationController>(builder: (locationController) {
      //   List<AddressModel> _addressList = [];
      //   if (Get.find<AuthController>().isLoggedIn() &&
      //       locationController.addressList != null) {
      //     _addressList = [];
      //     bool _contain = false;
      //     if (locationController.getUserAddress().id != null) {
      //       for (int index = 0;
      //           index < locationController.addressList.length;
      //           index++) {
      //         if (locationController.addressList[index].id ==
      //             locationController.getUserAddress().id) {
      //           _contain = true;
      //           break;
      //         }
      //       }
      //     }
      //     if (!_contain) {
      //       _addressList.add(Get.find<LocationController>().getUserAddress());
      //     }
      //     _addressList.addAll(locationController.addressList);
      //   } else {
      //     _addressList.add(Get.find<LocationController>().getUserAddress());
      //   }
      //   return (!Get.find<AuthController>().isLoggedIn() ||
      //           locationController.addressList != null)
      //       ? SizedBox(
      //           height: 70,
      //           child: ListView.builder(
      //             physics: BouncingScrollPhysics(),
      //             itemCount: _addressList.length,
      //             scrollDirection: Axis.horizontal,
      //             padding: EdgeInsets.symmetric(
      //                 horizontal: Dimensions.PADDING_SIZE_SMALL),
      //             itemBuilder: (context, index) {
      //               return Container(
      //                 width: 300,
      //                 padding:
      //                     EdgeInsets.only(right: Dimensions.PADDING_SIZE_SMALL),
      //                 child: AddressWidget(
      //                   address: _addressList[index],
      //                   fromAddress: false,
      //                   onTap: () {
      //                     if (locationController.getUserAddress().id !=
      //                         _addressList[index].id) {
      //                       Get.dialog(CustomLoader(),
      //                           barrierDismissible: false);
      //                       locationController.saveAddressAndNavigate(
      //                         _addressList[index],
      //                         false,
      //                         null,
      //                         false,
      //                         ResponsiveHelper.isDesktop(context),
      //                       );
      //                     }
      //                   },
      //                 ),
      //               );
      //             },
      //           ),
      //         )
      //       : AddressShimmer(
      //           isEnabled: Get.find<AuthController>().isLoggedIn() &&
      //               locationController.addressList == null);
      // }),
      // PopularStoreView(isPopular: false, isFeatured: true),
      //SizedBox(height: 30),
    ]);
  }
}

class ModuleShimmer extends StatelessWidget {
  final bool isEnabled;
  ModuleShimmer({@required this.isEnabled});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: Dimensions.PADDING_SIZE_SMALL,
        crossAxisSpacing: Dimensions.PADDING_SIZE_SMALL,
        childAspectRatio: (1 / 1),
      ),
      padding: EdgeInsets.all(Dimensions.PADDING_SIZE_SMALL),
      itemCount: 6,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimensions.RADIUS_DEFAULT),
            color: Theme.of(context).cardColor,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey[Get.isDarkMode ? 700 : 200],
                  spreadRadius: 1,
                  blurRadius: 5)
            ],
          ),
          child: Shimmer(
            duration: Duration(seconds: 2),
            enabled: isEnabled,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(Dimensions.RADIUS_SMALL),
                    color: Colors.grey[300]),
              ),
              SizedBox(height: Dimensions.PADDING_SIZE_SMALL),
              Center(
                  child: Container(
                      height: 15, width: 50, color: Colors.grey[300])),
            ]),
          ),
        );
      },
    );
  }
}

class AddressShimmer extends StatelessWidget {
  final bool isEnabled;
  AddressShimmer({@required this.isEnabled});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        padding:
            EdgeInsets.symmetric(horizontal: Dimensions.PADDING_SIZE_SMALL),
        itemBuilder: (context, index) {
          return Container(
            width: 300,
            padding: EdgeInsets.only(right: Dimensions.PADDING_SIZE_SMALL),
            child: Container(
              padding: EdgeInsets.all(ResponsiveHelper.isDesktop(context)
                  ? Dimensions.PADDING_SIZE_DEFAULT
                  : Dimensions.PADDING_SIZE_SMALL),
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.circular(Dimensions.RADIUS_SMALL),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey[Get.isDarkMode ? 800 : 200],
                      blurRadius: 5,
                      spreadRadius: 1)
                ],
              ),
              child: Row(mainAxisSize: MainAxisSize.min, children: [
                Icon(
                  Icons.location_on,
                  size: ResponsiveHelper.isDesktop(context) ? 50 : 40,
                  color: Theme.of(context).primaryColor,
                ),
                SizedBox(width: Dimensions.PADDING_SIZE_SMALL),
                Expanded(
                  child: Shimmer(
                    duration: Duration(seconds: 2),
                    enabled: isEnabled,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              height: 15, width: 100, color: Colors.grey[300]),
                          SizedBox(height: Dimensions.PADDING_SIZE_EXTRA_SMALL),
                          Container(
                              height: 10, width: 150, color: Colors.grey[300]),
                        ]),
                  ),
                ),
              ]),
            ),
          );
        },
      ),
    );
  }
}
