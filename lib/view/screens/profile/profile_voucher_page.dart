import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart/util/images.dart';
import 'package:sixam_mart/util/styles.dart';
import 'package:sixam_mart/view/base/custom_button.dart';

class ProfileVoucherPage extends StatefulWidget {
  const ProfileVoucherPage({Key key}) : super(key: key);

  @override
  State<ProfileVoucherPage> createState() => _ProfileVoucherPageState();
}

class _ProfileVoucherPageState extends State<ProfileVoucherPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
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
                          'vouchers'.tr,
                          style: robotoRegular.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff000000)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Divider(
                    thickness: 4,
                  ),
                  SizedBox(height: 70),
                  Image.asset(Images.imgVouchers),
                  SizedBox(height: 20),
                  Text(
                    'when_credit_is_added'.tr,
                    style: robotoRegular.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff979797)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomButton(
                radius: 10,
                buttonText: 'add_vouchers'.tr,
                fontSize: 17,
                onPressed: () {
                  Get.defaultDialog(
                      titlePadding: EdgeInsets.only(top: 20, right: 30),
                      radius: 4,
                      title: 'add_vouchers_code'.tr,
                      titleStyle: robotoRegular.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff09323e)),
                      content: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          children: [
                            TextFormField(),
                            SizedBox(height: 7),
                            Text(
                              'valid_code'.tr,
                              style: robotoRegular.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff979797)),
                            ),
                            SizedBox(height: 60),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    'cancel'.tr,
                                    style: robotoRegular.copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff0eacd7)),
                                  ),
                                ),
                                SizedBox(width: 20),
                                Text(
                                  'submit'.tr,
                                  style: robotoRegular.copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff0eacd7)),
                                ),
                              ],
                            )
                          ],
                        ),
                      ));
                },
              ),
            ),
            SizedBox(height: 38)
          ],
        ),
      ),
    );
  }
}
