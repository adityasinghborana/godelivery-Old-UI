import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:sixam_mart/view/screens/reminder/reminder_page.dart';
import 'package:sixam_mart/util/images.dart';
import 'package:sixam_mart/util/styles.dart';

class AddReminderPage extends StatefulWidget {
  const AddReminderPage({Key key}) : super(key: key);

  @override
  State<AddReminderPage> createState() => _AddReminderPageState();
}

class _AddReminderPageState extends State<AddReminderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 60),
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
                        'reminder'.tr,
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
                Image.asset(Images.imgReminder),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'our_reminder_ring'.tr,
                    textAlign: TextAlign.center,
                    style: robotoRegular.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff979797)),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: InkWell(
              onTap: () {
                Get.to(ReminderPage());
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Color(0xff0eacd7),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "add_reminder".tr,
                      style: robotoRegular.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Color(0xffffffff)),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
