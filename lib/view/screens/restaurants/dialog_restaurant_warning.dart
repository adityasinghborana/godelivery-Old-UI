import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart/util/images.dart';
import 'package:sixam_mart/util/styles.dart';

class DialogRestaurantWarning extends StatefulWidget {
  const DialogRestaurantWarning({Key key}) : super(key: key);

  @override
  State<DialogRestaurantWarning> createState() =>
      _DialogRestaurantWarningState();
}

class _DialogRestaurantWarningState extends State<DialogRestaurantWarning> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        decoration: BoxDecoration(
            color: Color(0xffffffff), borderRadius: BorderRadius.circular(18)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              Images.icWarning,
              height: 23,
              width: 23,
              color: Color(0xff09323e),
            ),
            SizedBox(height: 12),
            Text("due_to_the".tr,
                style: robotoMedium.copyWith(
                  color: Color(0xff09323e),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                )),
            SizedBox(height: 15),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              padding: EdgeInsets.symmetric(vertical: 8),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color(0xffbf1d2d))),
              child: Center(
                child: Text("continue".tr,
                    style: robotoMedium.copyWith(
                      color: Color(0xffbf1d2d),
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
