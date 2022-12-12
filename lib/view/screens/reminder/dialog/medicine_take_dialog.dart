import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sixam_mart/common_dialog/delete_dialog.dart';
import 'package:sixam_mart/util/images.dart';
import 'package:sixam_mart/util/styles.dart';
import 'package:sixam_mart/view/screens/reminder/dialog/medicine_reschedule_dialog.dart';

class MedicineTakeDialog extends StatefulWidget {
  const MedicineTakeDialog({Key key}) : super(key: key);

  @override
  State<MedicineTakeDialog> createState() => _MedicineTakeDialogState();
}

class _MedicineTakeDialogState extends State<MedicineTakeDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        // height: double.infinity,
        // color: Color(0xfff6f6f6),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  Images.icEditGreen,
                  height: 24,
                  width: 24,
                ),
                InkWell(
                  onTap: () {
                    Get.back();
                    Get.dialog(DeleteDialog(
                      text: 'are_you_sure_delete_reminder'.tr,
                    ));
                  },
                  child: Image.asset(
                    Images.icDeleteReminder,
                    height: 20,
                    width: 19,
                    color: Color(0xff000000),
                  ),
                )
              ],
            ),
            SizedBox(height: 30),
            Text(
              'Paracetamol',
              style: robotoRegular.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff09323e)),
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  Images.icMorning,
                  width: 28,
                  height: 21,
                ),
                SizedBox(width: 11),
                Text(
                  'Morning - 09:30 AM, Today',
                  style: robotoRegular.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff09323e)),
                ),
              ],
            ),
            SizedBox(height: 23),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  Images.icAttechButton,
                  width: 18,
                  height: 23,
                ),
                SizedBox(width: 11),
                Text(
                  'Tablet ',
                  style: robotoRegular.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff09323e)),
                ),
                Text(
                  '(500mg)',
                  style: robotoRegular.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff979797)),
                ),
              ],
            ),
            SizedBox(height: 23),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff979797)),
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: Text(
                        'skip'.tr,
                        style: robotoRegular.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff000000)),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 45),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                        // border: Border.all(color: Color(0xff979797)),
                        color: Color(0xff0eacd7),
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: Text(
                        'take'.tr,
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
            SizedBox(height: 30),
            InkWell(
              onTap: () {
                Get.back();
                Get.dialog(MedicineRescheduleDialog());
              },
              child: Text(
                'reschedule'.tr.toUpperCase(),
                style: robotoRegular.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff0eadc7)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
