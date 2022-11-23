import 'package:country_code_picker/country_code.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart/controller/auth_controller.dart';
import 'package:sixam_mart/controller/localization_controller.dart';
import 'package:sixam_mart/controller/splash_controller.dart';
import 'package:sixam_mart/util/dimensions.dart';
import 'package:sixam_mart/util/images.dart';
import 'package:sixam_mart/util/styles.dart';
import 'package:sixam_mart/view/base/custom_button.dart';
import 'package:sixam_mart/view/screens/auth/widget/code_picker_widget.dart';
import 'package:sixam_mart/view/screens/auth/widget/condition_check_box.dart';
import 'package:sixam_mart/view/screens/forget/otp_verification_screen.dart';

class PhoneVerificationScreen extends StatefulWidget {
  final AuthController authController;
  const PhoneVerificationScreen({Key key, this.authController})
      : super(key: key);

  @override
  State<PhoneVerificationScreen> createState() =>
      _PhoneVerificationScreenState();
}

class _PhoneVerificationScreenState extends State<PhoneVerificationScreen> {
  bool isChecked = false;
  String _countryDialCode;
  final FocusNode _phoneFocus = FocusNode();
  final TextEditingController _phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios_new,
                      ),
                    ),
                    Expanded(
                      child: Image.asset(
                        Images.logo,
                        width: 110,
                        height: 51,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 59),
              Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 84,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(color: Color(0xff979797))),
                      child: CodePickerWidget(
                        onChanged: (CountryCode countryCode) {
                          _countryDialCode = countryCode.dialCode;
                        },
                        initialSelection: _countryDialCode != null
                            ? CountryCode.fromCountryCode(
                                    Get.find<SplashController>()
                                        .configModel
                                        .country)
                                .code
                            : Get.find<LocalizationController>()
                                .locale
                                .countryCode,
                        favorite: [
                          CountryCode.fromCountryCode(
                                  Get.find<SplashController>()
                                      .configModel
                                      .country)
                              .code
                        ],
                        // showDropDownButton: true,
                        padding: EdgeInsets.zero,
                        showFlagMain: true,
                        flagWidth: 22,
                        dialogBackgroundColor: Theme.of(context).cardColor,
                        textStyle: robotoRegular.copyWith(
                          fontSize: Dimensions.fontSizeLarge,
                          color: Theme.of(context).textTheme.bodyText1.color,
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      child: TextFormField(
                        controller: _phoneController,
                        decoration: textFieldInputDecoration.copyWith(
                            hintText: 'phone'.tr,
                            contentPadding:
                                EdgeInsets.only(top: 16, bottom: 16, left: 15)),
                        validator: (value) {
                          if (value.isEmpty) {
                            // print('value empty');
                            return "enter_phone_number".tr;
                          } else {
                            return null;
                          }
                        },
                        onSaved: (value) {
                          setState(() {
                            _phoneController.text = value;
                          });
                        },
                      ),
                    ),
                  ]),
              SizedBox(height: 30),
              CustomButton(
                radius: 12,
                buttonText: 'verify'.tr,
                fontSize: 17,
                onPressed: () {
                  Get.to(OptVerificationScreen());
                },
              ),
              SizedBox(height: 20),
              ConditionCheckBox(authController: widget.authController),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Checkbox(
                    side: MaterialStateBorderSide.resolveWith(
                      (states) =>
                          BorderSide(color: Color(0xff0eacd7), width: 1.8),
                    ),
                    value: this.isChecked,
                    onChanged: (bool value) {
                      setState(() {
                        this.isChecked = value;
                      });
                    },
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Expanded(
                    child: Text(
                      'i_agree_that'.tr,
                      style: TextStyle(
                          color: Color(0xff979797),
                          // height: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
