import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:sixam_mart/util/styles.dart';
import 'package:sixam_mart/view/screens/profile/about_legal_page.dart';

class ProfileAboutPage extends StatefulWidget {
  const ProfileAboutPage({Key key}) : super(key: key);

  @override
  State<ProfileAboutPage> createState() => _ProfileAboutPageState();
}

class _ProfileAboutPageState extends State<ProfileAboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 60),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_ios_new)),
                SizedBox(width: 20),
                Text(
                  'about_us'.tr,
                  style: robotoRegular.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Get.isDarkMode ? Colors.white : Color(0xff000000)),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Divider(
            thickness: 4,
          ),
          SizedBox(height: 19),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'rate_us_on'.tr,
                  style: robotoRegular.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Get.isDarkMode ? Colors.white : Color(0xff09323e)),
                ),
                SizedBox(height: 46),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'like_us_facebook'.tr,
                      style: robotoRegular.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Get.isDarkMode
                              ? Colors.white
                              : Color(0xff373a41)),
                    ),
                    Icon(Icons.arrow_forward_ios,
                        color:
                            Get.isDarkMode ? Colors.white : Color(0xff000000))
                  ],
                ),
                SizedBox(height: 15),
                Text(
                  'lorem_ipsum'.tr,
                  style: robotoRegular.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Get.isDarkMode ? Colors.white : Color(0xff979797)),
                ),
                SizedBox(height: 27),
                InkWell(
                  onTap: () {
                    Get.to(AboutLegalPage());
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'legal'.tr,
                            style: robotoRegular.copyWith(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Get.isDarkMode
                                    ? Colors.white
                                    : Color(0xff373a41)),
                          ),
                          Icon(Icons.arrow_forward_ios,
                              color: Get.isDarkMode
                                  ? Colors.white
                                  : Color(0xff000000))
                        ],
                      ),
                      SizedBox(height: 15),
                      Text(
                        'legal_des'.tr,
                        style: robotoRegular.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Get.isDarkMode
                                ? Colors.white
                                : Color(0xff979797)),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
