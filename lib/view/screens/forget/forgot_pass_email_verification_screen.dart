import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:sixam_mart/util/dimensions.dart';
import 'package:sixam_mart/util/images.dart';
import 'package:sixam_mart/util/styles.dart';
import 'package:sixam_mart/view/base/custom_button.dart';
import 'package:sixam_mart/view/screens/forget/email_new_password_screen.dart';

class ForgotPasswordEmailVerificationScreen extends StatefulWidget {
  const ForgotPasswordEmailVerificationScreen({Key key}) : super(key: key);

  @override
  State<ForgotPasswordEmailVerificationScreen> createState() =>
      _ForgotPasswordEmailVerificationScreenState();
}

class _ForgotPasswordEmailVerificationScreenState
    extends State<ForgotPasswordEmailVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(Images.imgEmail),
            SizedBox(
              height: 20,
            ),
            Text('check_your_email'.tr,
                style: robotoBlack.copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: Color(0xff09323e))),
            SizedBox(
              height: 25,
            ),
            Text('we_have_sent'.tr,
                style: robotoBlack.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xff5c6678))),
            SizedBox(height: 106),
            CustomButton(
              radius: 10,
              buttonText: 'open_email_app'.tr,
              fontSize: 17,
              onPressed: () {},
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () => Get.to(EmailNewPasswordScreen()),
              child: Text('skip_confirm'.tr,
                  style: robotoBlack.copyWith(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: Color(0xff09323e))),
            ),
            SizedBox(height: 70),
            Text('did_not_receive'.tr,
                style: robotoBlack.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xff5c6678))),
            InkWell(
              // onTap: () =>
              //     Get.toNamed(RouteHelper.getHtmlRoute('terms-and-condition')),
              child: Padding(
                padding: EdgeInsets.all(Dimensions.PADDING_SIZE_EXTRA_SMALL),
                child: Text('another_email'.tr,
                    style: robotoMedium.copyWith(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: Theme.of(context).primaryColor)),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
