import 'package:sixam_mart/controller/auth_controller.dart';
import 'package:sixam_mart/controller/user_controller.dart';
import 'package:sixam_mart/util/dimensions.dart';
import 'package:sixam_mart/util/images.dart';
import 'package:sixam_mart/util/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
        body: Column(children: [
          Stack(clipBehavior: Clip.none, children: [
            Center(
              child: Container(
                width: Dimensions.WEB_MAX_WIDTH,
                height: 260,
                color: Theme.of(context).primaryColor,
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
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        Images.icMyOrder,
                        height: 98,
                        width: 54,
                      ),
                      Image.asset(
                        Images.icMyFavourite,
                        height: 98,
                        width: 70,
                      ),
                      Image.asset(
                        Images.icMyWallet,
                        height: 98,
                        width: 60,
                      ),
                      Image.asset(
                        Images.icSavedAddress,
                        height: 98,
                        width: 54,
                      )
                    ],
                  ),
                ),
              ),
            )
          ]),
          // Expanded(
          //   child: mainWidget,
          // ),
        ]),
      );
    });
  }
}
