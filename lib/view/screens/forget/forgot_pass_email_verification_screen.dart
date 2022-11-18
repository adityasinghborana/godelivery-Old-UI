import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:sixam_mart/util/images.dart';
import 'package:sixam_mart/util/styles.dart';

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(Images.imgEmail),
          Text('reset_password'.tr,
              style: robotoBlack.copyWith(
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                  color: Color(0xff09303e))),
        ],
      ),
    ));
  }
}
