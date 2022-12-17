import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart/util/images.dart';
import 'package:sixam_mart/util/styles.dart';

class PickupDialog extends StatefulWidget {
  final VoidCallback onUpdate;

  const PickupDialog({
    Key key,
    this.onUpdate,
  }) : super(key: key);

  @override
  State<PickupDialog> createState() => _PickupDialogState();
}

class _PickupDialogState extends State<PickupDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        content: Container(
      child: Padding(
        padding:
            const EdgeInsets.only(top: 80, bottom: 67, right: 32, left: 32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "do_you_require_handling".tr,
              style: robotoRegular.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff000000)),
            ),
            SizedBox(height: 40),
            Image.asset(Images.imgPickUp),
            SizedBox(height: 25),
            Text(
              "charged_per_hour".tr,
              style: robotoRegular.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff000000)),
            ),
            SizedBox(height: 26),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    width: 92,
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 7),
                    decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        border: Border.all(color: Color(0xff979797)),
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: Text(
                        'no'.tr,
                        style: robotoRegular.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff09323e)),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                InkWell(
                  onTap: () {
                    // Get.to(PickUpPage());
                    print('In dialog click');
                    Navigator.pop(context);
                    widget.onUpdate;
                    print('in dialog click');
                  },
                  child: Container(
                    // width: 84,
                    padding: EdgeInsets.symmetric(vertical: 7, horizontal: 25),
                    decoration: BoxDecoration(
                        color: Color(0xffbf1d2d),
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: Text(
                        'yes_i_do'.tr,
                        style: robotoRegular.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: Color(0xffffffff)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
