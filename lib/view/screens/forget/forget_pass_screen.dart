import 'package:country_code_picker/country_code.dart';
import 'package:sixam_mart/controller/auth_controller.dart';
import 'package:sixam_mart/controller/splash_controller.dart';
import 'package:sixam_mart/data/model/body/social_log_in_body.dart';
import 'package:sixam_mart/helper/route_helper.dart';
import 'package:sixam_mart/util/dimensions.dart';
import 'package:sixam_mart/util/styles.dart';
import 'package:sixam_mart/view/base/custom_button.dart';
import 'package:sixam_mart/view/base/custom_snackbar.dart';
import 'package:sixam_mart/view/base/footer_view.dart';
import 'package:sixam_mart/view/base/menu_drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phone_number/phone_number.dart';

class ForgetPassScreen extends StatefulWidget {
  final bool fromSocialLogin;
  final SocialLogInBody socialLogInBody;
  ForgetPassScreen(
      {@required this.fromSocialLogin, @required this.socialLogInBody});

  @override
  State<ForgetPassScreen> createState() => _ForgetPassScreenState();
}

class _ForgetPassScreenState extends State<ForgetPassScreen> {
  final TextEditingController _numberController = TextEditingController();
  String _countryDialCode = CountryCode.fromCountryCode(
          Get.find<SplashController>().configModel.country)
      .dialCode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: CustomAppBar(title: widget.fromSocialLogin ? 'phone'.tr : 'forgot_password'.tr),
      endDrawer: MenuDrawer(),
      body: SafeArea(
          child: Scrollbar(
              child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: FooterView(
            child: Container(
          width: context.width > 700 ? 700 : context.width,
          padding: context.width > 700
              ? EdgeInsets.all(Dimensions.PADDING_SIZE_DEFAULT)
              : null,
          margin: EdgeInsets.all(Dimensions.PADDING_SIZE_LARGE),
          decoration: context.width > 700
              ? BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(Dimensions.RADIUS_SMALL),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey[Get.isDarkMode ? 700 : 300],
                        blurRadius: 5,
                        spreadRadius: 1)
                  ],
                )
              : null,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 31),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () => Navigator.pop(context),
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          size: 20,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text('reset_password'.tr,
                          style: robotoBlack.copyWith(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: Color(0xff09303e))),
                    ],
                  ),
                ),
                //Image.asset(Images.forgot, height: 220),
                // Padding(
                //   padding: EdgeInsets.all(30),
                //   child: Text('please_enter_mobile'.tr,
                //       style: robotoRegular, textAlign: TextAlign.center),
                // ),
                SizedBox(
                  height: 37,
                ),
                Text('enter_the_email_associated'.tr,
                    style: robotoBlack.copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xff5c6678))),
                SizedBox(
                  height: 36,
                ),
                TextFormField(
                  decoration: textFieldInputDecoration.copyWith(
                    hintText: 'email_address'.tr,
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      // print('value empty');
                      return "enter_your_first_name".tr;
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    setState(() {
                      // password = value!.trim();
                    });
                  },
                ),
                // Container(
                //   decoration: BoxDecoration(
                //     borderRadius:
                //         BorderRadius.circular(Dimensions.RADIUS_SMALL),
                //     color: Theme.of(context).cardColor,
                //   ),
                //   child: Row(children: [
                //     CodePickerWidget(
                //       onChanged: (CountryCode countryCode) {
                //         _countryDialCode = countryCode.dialCode;
                //       },
                //       initialSelection: _countryDialCode,
                //       favorite: [_countryDialCode],
                //       showDropDownButton: true,
                //       padding: EdgeInsets.zero,
                //       showFlagMain: true,
                //       dialogBackgroundColor: Theme.of(context).cardColor,
                //       textStyle: robotoRegular.copyWith(
                //         fontSize: Dimensions.fontSizeLarge,
                //         color: Theme.of(context).textTheme.bodyText1.color,
                //       ),
                //     ),
                //     Expanded(
                //         child: CustomTextField(
                //       controller: _numberController,
                //       inputType: TextInputType.phone,
                //       inputAction: TextInputAction.done,
                //       hintText: 'phone'.tr,
                //       onSubmit: (text) => GetPlatform.isWeb
                //           ? _forgetPass(_countryDialCode)
                //           : null,
                //     )),
                //   ]),
                // ),
                SizedBox(height: 30),
                GetBuilder<AuthController>(builder: (authController) {
                  return !authController.isLoading
                      ? CustomButton(
                          buttonText: 'send'.tr,
                          onPressed: () => _forgetPass(_countryDialCode),
                        )
                      : Center(child: CircularProgressIndicator());
                }),
              ]),
        )),
      ))),
    );
  }

  void _forgetPass(String countryCode) async {
    String _phone = _numberController.text.trim();

    String _numberWithCountryCode = countryCode + _phone;
    bool _isValid = GetPlatform.isWeb ? true : false;
    if (!GetPlatform.isWeb) {
      try {
        PhoneNumber phoneNumber =
            await PhoneNumberUtil().parse(_numberWithCountryCode);
        _numberWithCountryCode =
            '+' + phoneNumber.countryCode + phoneNumber.nationalNumber;
        _isValid = true;
      } catch (e) {}
    }

    if (_phone.isEmpty) {
      showCustomSnackBar('enter_phone_number'.tr);
    } else if (!_isValid) {
      showCustomSnackBar('invalid_phone_number'.tr);
    } else {
      if (widget.fromSocialLogin) {
        widget.socialLogInBody.phone = _numberWithCountryCode;
        Get.find<AuthController>()
            .registerWithSocialMedia(widget.socialLogInBody);
      } else {
        Get.find<AuthController>()
            .forgetPassword(_numberWithCountryCode)
            .then((status) async {
          if (status.isSuccess) {
            Get.toNamed(RouteHelper.getVerificationRoute(
                _numberWithCountryCode, '', RouteHelper.forgotPassword, ''));
          } else {
            showCustomSnackBar(status.message);
          }
        });
      }
    }
  }
}
