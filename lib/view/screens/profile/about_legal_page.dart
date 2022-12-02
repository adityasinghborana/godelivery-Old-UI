import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:sixam_mart/util/styles.dart';

class AboutLegalPage extends StatefulWidget {
  const AboutLegalPage({Key key}) : super(key: key);

  @override
  State<AboutLegalPage> createState() => _AboutLegalPageState();
}

class _AboutLegalPageState extends State<AboutLegalPage> {
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
                  'legal'.tr,
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
          SizedBox(height: 31),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'copyRight'.tr,
                  style: robotoRegular.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Get.isDarkMode ? Colors.white : Color(0xff09323e)),
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'terms_conditions'.tr,
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
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'privacy_policy'.tr,
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
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'software_version'.tr,
                      style: robotoRegular.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Get.isDarkMode
                              ? Colors.white
                              : Color(0xff373a41)),
                    ),
                    Text(
                      '1.2215'.tr,
                      style: robotoRegular.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Get.isDarkMode
                              ? Colors.white
                              : Color(0xff979797)),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
