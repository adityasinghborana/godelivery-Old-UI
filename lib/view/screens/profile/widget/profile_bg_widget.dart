import 'package:sixam_mart/controller/auth_controller.dart';
import 'package:sixam_mart/controller/user_controller.dart';
import 'package:sixam_mart/util/dimensions.dart';
import 'package:sixam_mart/util/images.dart';
import 'package:sixam_mart/util/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart/view/screens/profile/profile_invite_friend_page.dart';
import 'package:sixam_mart/view/screens/profile/profile_send_gift_page.dart';
import 'package:sixam_mart/view/screens/profile/profile_voucher_page.dart';

class ProfileBgWidget extends StatelessWidget {
  final Widget circularImage;
  final Widget mainWidget;
  final bool backButton;
  ProfileBgWidget(
      {@required this.mainWidget,
      @required this.circularImage,
      @required this.backButton});
  bool _isLoggedIn = Get.find<AuthController>().isLoggedIn();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserController>(builder: (userController) {
      return Scaffold(
        backgroundColor: Color(0xfff6f6f6),
        body: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: 800,
              child: Stack(children: [
                Center(
                  child: Container(
                    width: Dimensions.WEB_MAX_WIDTH,
                    height: 260,
                    // color: Theme.of(context).primaryColor,
                  ),
                ),
                SizedBox(
                  width: context.width,
                  height: 300,
                  child: Center(
                      child: Image.asset(Images.imgProfileBg,
                          height: 300,
                          width: Dimensions.WEB_MAX_WIDTH,
                          fit: BoxFit.fill)),
                ),
                // Positioned(
                //   top: 200,
                //   left: 0,
                //   bottom: 0,
                //   child: Center(
                //     child: Container(
                //       width: Dimensions.WEB_MAX_WIDTH,
                //       decoration: BoxDecoration(
                //         borderRadius: BorderRadius.vertical(
                //             top: Radius.circular(Dimensions.RADIUS_EXTRA_LARGE)),
                //         color: Theme.of(context).cardColor,
                //       ),
                //     ),
                //   ),
                // ),
                Positioned(
                  top: MediaQuery.of(context).padding.top + 30,
                  left: 60,
                  // right: 0,
                  child: Text(
                    'account'.tr,
                    textAlign: TextAlign.center,
                    style: robotoRegular.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Theme.of(context).cardColor),
                  ),
                ),
                backButton
                    ? Positioned(
                        top: MediaQuery.of(context).padding.top + 19,
                        left: 10,
                        child: IconButton(
                          icon: Icon(Icons.arrow_back_ios,
                              color: Theme.of(context).cardColor, size: 20),
                          onPressed: () => Get.back(),
                        ),
                      )
                    : SizedBox(),
                Positioned(left: 20, top: 100, child: circularImage),
                Positioned(
                  top: 120,
                  left: 120,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _isLoggedIn
                              ? '${userController.userInfoModel.fName} ${userController.userInfoModel.lName}'
                              : 'guest'.tr,
                          style: robotoMedium.copyWith(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          _isLoggedIn
                              ? '${userController.userInfoModel.email}'
                              : 'email'.tr,
                          style: robotoMedium.copyWith(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      ]),
                ),
                Positioned(
                  top: 110,
                  right: 30,
                  child: Image.asset(
                    Images.icEdit,
                    height: 30,
                    width: 30,
                  ),
                ),
                Positioned(
                  top: 220,
                  left: 10,
                  right: 10,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)),

                    // height: 100,
                    // width: 100,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 14, right: 14, bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                Images.icMyOrder,
                                height: 98,
                                width: 54,
                              ),
                              Text(
                                "my_order".tr,
                                style: robotoMedium.copyWith(
                                  color: Color(0xff09323e),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                Images.icMyFavourite,
                                height: 98,
                                width: 54,
                              ),
                              Text(
                                "my_favourites".tr,
                                style: robotoMedium.copyWith(
                                  color: Color(0xff09323e),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                Images.icMyWallet,
                                height: 98,
                                width: 54,
                              ),
                              Text(
                                "my_wallet".tr,
                                style: robotoMedium.copyWith(
                                  color: Color(0xff09323e),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                Images.icSavedAddress,
                                height: 98,
                                width: 54,
                              ),
                              Text(
                                "saved_address".tr,
                                style: robotoMedium.copyWith(
                                  color: Color(0xff09323e),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                    top: 380,
                    left: 10,
                    right: 10,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 22, right: 35, top: 44, bottom: 33),
                            child: InkWell(
                              onTap: () {
                                Get.to(ProfileVoucherPage());
                              },
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Image.asset(Images.icVouchers,
                                            width: 24, height: 15),
                                        SizedBox(width: 20),
                                        Text(
                                          "vouchers".tr,
                                          style: robotoMedium.copyWith(
                                            color: Color(0xff09323e),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: 24,
                                    color: Color(0xff09323e),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 22, right: 35, bottom: 33),
                            child: InkWell(
                              onTap: () {
                                Get.to(ProfileSendGiftPage());
                              },
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Image.asset(Images.icGift,
                                            width: 24, height: 15),
                                        SizedBox(width: 20),
                                        Text(
                                          "send_gift".tr,
                                          style: robotoMedium.copyWith(
                                            color: Color(0xff09323e),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: 24,
                                    color: Color(0xff09323e),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 22, right: 35, bottom: 33),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image.asset(Images.icContact,
                                          width: 24, height: 15),
                                      SizedBox(width: 20),
                                      Text(
                                        "contact_pre".tr,
                                        style: robotoMedium.copyWith(
                                          color: Color(0xff09323e),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 24,
                                  color: Color(0xff09323e),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 22, right: 35, bottom: 33),
                            child: InkWell(
                              onTap: () {
                                Get.to(ProfileInviteProfilePage());
                              },
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Image.asset(Images.icInviteFrd,
                                            width: 24, height: 15),
                                        SizedBox(width: 20),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "invite_frd".tr,
                                              style: robotoMedium.copyWith(
                                                color: Color(0xff09323e),
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            Text(
                                              "Get N 10".tr,
                                              style: robotoMedium.copyWith(
                                                color: Color(0xff979797),
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: 24,
                                    color: Color(0xff09323e),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 22, right: 35, bottom: 33),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(Images.icAbout,
                                        width: 24, height: 15),
                                    SizedBox(width: 20),
                                    Text(
                                      "about".tr,
                                      style: robotoMedium.copyWith(
                                        color: Color(0xff09323e),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Divider(
                              thickness: 1,
                              color: Color(0xff000000),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                Images.icLogout,
                                height: 24,
                                width: 24,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "logout".tr,
                                style: robotoMedium.copyWith(
                                  color: Color(0xff09323e),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ))
              ]),
            ),

            //old design
            // Expanded(
            //   child: mainWidget,
            // ),
          ]),
        ),
      );
    });
  }
}
