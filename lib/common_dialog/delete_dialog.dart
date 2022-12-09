import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_utils/src/extensions/export.dart';
import 'package:sixam_mart/util/styles.dart';

class DeleteDialog extends StatefulWidget {
  final String text;
  const DeleteDialog({Key key, this.text}) : super(key: key);

  @override
  State<DeleteDialog> createState() => _DeleteDialogState();
}

class _DeleteDialogState extends State<DeleteDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        padding: EdgeInsets.symmetric(horizontal: 29, vertical: 45),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                widget.text,
                // 'are_you_sure_delete'.tr,
                style: robotoRegular.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff09323e)),
              ),
            ),
            SizedBox(height: 70),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                    decoration: BoxDecoration(
                        color: Color(0xff0eacd7),
                        borderRadius: BorderRadius.circular(5)),
                    child: Text(
                      'cancel'.tr.toUpperCase(),
                      style: robotoRegular.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Color(0xffffffff)),
                    ),
                  ),
                ),
                Container(
                  width: 84,
                  padding: EdgeInsets.symmetric(vertical: 6),
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffe3e3e3), width: 2),
                      color: Color(0xffe5e5e5),
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Text(
                      'yes'.tr.toUpperCase(),
                      style: robotoRegular.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff09323e)),
                    ),
                  ),
                ),
              ],
            ),

            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 54),
            //   child: CustomButton(buttonText: "save".tr),
            // )
          ],
        ),
      ),
    );
  }
}
