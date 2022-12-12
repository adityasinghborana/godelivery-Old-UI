import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart/util/images.dart';
import 'package:sixam_mart/util/styles.dart';

class MedicineReminderAddSuccessDialog extends StatefulWidget {
  const MedicineReminderAddSuccessDialog({Key key}) : super(key: key);

  @override
  State<MedicineReminderAddSuccessDialog> createState() =>
      _MedicineReminderAddSuccessDialogState();
}

class _MedicineReminderAddSuccessDialogState
    extends State<MedicineReminderAddSuccessDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            Images.icSuccess,
            height: 60,
            width: 60,
          ),
          SizedBox(height: 44),
          Text(
            'medicine_reminder'.tr,
            style: robotoRegular.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color(0xff09323e)),
          ),
        ],
      ),
    );
  }
}
