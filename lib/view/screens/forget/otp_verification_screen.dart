import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:sixam_mart/util/dimensions.dart';
import 'package:sixam_mart/util/images.dart';
import 'package:sixam_mart/view/base/custom_button.dart';

class OptVerificationScreen extends StatefulWidget {
  const OptVerificationScreen({Key key}) : super(key: key);

  @override
  State<OptVerificationScreen> createState() => _OptVerificationScreenState();
}

class _OptVerificationScreenState extends State<OptVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
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
              SizedBox(
                height: 26,
              ),
              Text(
                "otp_verify".tr,
                style: TextStyle(
                    color: Color(0xff181b21),
                    fontSize: 17,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "otp_sent".tr,
                    style: TextStyle(
                        color: Color(0xff5c6678),
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    "+91 1234567890".tr,
                    style: TextStyle(
                        color: Color(0xffbf1d2d),
                        fontSize: 14,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              SizedBox(
                height: 78,
              ),
              //otp container

              PinCodeTextField(
                length: 4,
                appContext: context,
                keyboardType: TextInputType.number,
                animationType: AnimationType.slide,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  fieldHeight: 51,
                  fieldWidth: 41,
                  borderWidth: 0,
                  borderRadius: BorderRadius.circular(Dimensions.RADIUS_SMALL),
                  selectedColor:
                      Theme.of(context).primaryColor.withOpacity(0.2),
                  selectedFillColor: Colors.white,
                  inactiveFillColor:
                      Theme.of(context).disabledColor.withOpacity(0.2),
                  inactiveColor:
                      Theme.of(context).primaryColor.withOpacity(0.2),
                  activeColor: Theme.of(context).primaryColor.withOpacity(0.4),
                  activeFillColor:
                      Theme.of(context).disabledColor.withOpacity(0.2),
                ),
                animationDuration: Duration(milliseconds: 300),
                backgroundColor: Colors.transparent,
                enableActiveFill: true,
                onChanged: ((value) {}),
                beforeTextPaste: (text) => true,
              ),

              SizedBox(height: 30),

              Text(
                "00:29",
                style: TextStyle(
                    color: Color(0xff5c6678),
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 62),
              Text(
                "have_you_receive_otp".tr,
                style: TextStyle(
                    color: Color(0xff5c6678),
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "resend_otp".tr,
                    style: TextStyle(
                        color: Color(0xffbf1d2d),
                        fontSize: 14,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    "or".tr.toLowerCase(),
                    style: TextStyle(
                        color: Color(0xffbf1d2d),
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    "call_me".tr,
                    style: TextStyle(
                        color: Color(0xffbf1d2d),
                        fontSize: 14,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              SizedBox(height: 30),
              CustomButton(
                radius: 12,
                buttonText: 'verify'.tr,
                fontSize: 17,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
