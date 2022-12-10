import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart/util/images.dart';
import 'package:sixam_mart/util/styles.dart';

class addReminderDialog extends StatefulWidget {
  const addReminderDialog({Key key}) : super(key: key);

  @override
  State<addReminderDialog> createState() => _addReminderDialogState();
}

class _addReminderDialogState extends State<addReminderDialog> {
  final reminderList = [
    'Weekly - 7 days',
    'Monthly - 30 days',
    'Ouaterly - 90 days'
  ];
  String reminderValue;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Expanded(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                Get.back();
              },
              child: Icon(
                Icons.arrow_back,
                color: Color(0xff000000),
              ),
            ),
            SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  // flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Image.asset(Images.imgFavStoreImage,
                            height: 43, width: 60),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Paracetamol',
                        style: robotoRegular.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff09323e),
                        ),
                      ),
                      Text(
                        '(500gm)',
                        style: robotoRegular.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff979797),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 39),
                Text(
                  'select'.tr.toUpperCase(),
                  style: robotoRegular.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff0eacd7),
                  ),
                ),
              ],
            ),
            SizedBox(height: 26),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              elevation: 5,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Color(0xffdedede))),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    // hint: Text(
                    //   "add_reminder".tr,
                    //   style: TextStyle(
                    //       fontSize: 12,
                    //       color: Color(0xff979797),
                    //       fontWeight: FontWeight.w400),
                    // ),
                    value: reminderValue,
                    style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff09323e),
                        fontWeight: FontWeight.w400),
                    iconSize: 30,
                    icon: const Icon(
                      Icons.keyboard_arrow_down_outlined,
                      color: Color(0xff979797),
                    ),
                    isExpanded: true,
                    items: reminderList.map(reminderMethod).toList(),
                    onChanged: (value) => setState(() => reminderValue = value),
                  ),
                ),
              ),
            ),
            SizedBox(height: 61),
          ],
        ),
      ),
    );
  }

  DropdownMenuItem<String> reminderMethod(String item) => DropdownMenuItem(
      value: item,
      child: Text(
        item,
      ));
}
