import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart/util/images.dart';
import 'package:sixam_mart/util/styles.dart';

class PaymentSuccessfulDialog extends StatefulWidget {
  const PaymentSuccessfulDialog({Key key}) : super(key: key);

  @override
  State<PaymentSuccessfulDialog> createState() =>
      _PaymentSuccessfulDialogState();
}

class _PaymentSuccessfulDialogState extends State<PaymentSuccessfulDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Padding(
        padding: const EdgeInsets.only(
          top: 32,
          bottom: 50,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(Images.imgPaymentSucces, width: 60, height: 60),
            SizedBox(height: 15),
            Text(
              'thanks_for_order'.tr,
              style: robotoRegular.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff1b1721)),
            ),
            SizedBox(height: 15),
            Text(
              'Your Order #1546266',
              style: robotoRegular.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff979797)),
            ),
            SizedBox(height: 15),
            Text(
              'expected_time'.tr,
              style: robotoRegular.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff1b1721)),
            ),
            SizedBox(height: 15),
            Text(
              '11:00 AM - 12:00 PM 20th May,2022',
              style: robotoRegular.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff979797)),
            ),
            SizedBox(height: 43),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 34, vertical: 9),
              decoration: BoxDecoration(
                color: Color(0xffbf1d2d),
                borderRadius: BorderRadius.circular(9),
              ),
              child: Text(
                'got_it'.tr,
                style: robotoRegular.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Color(0xffffffff)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
