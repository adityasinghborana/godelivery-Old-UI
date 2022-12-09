import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sixam_mart/common_dialog/delete_dialog.dart';
import 'package:sixam_mart/util/images.dart';
import 'package:sixam_mart/util/styles.dart';

class PatientEditDeleteBottomsheet extends StatefulWidget {
  const PatientEditDeleteBottomsheet({Key key}) : super(key: key);

  @override
  State<PatientEditDeleteBottomsheet> createState() =>
      _PatientEditDeleteBottomsheetState();
}

class _PatientEditDeleteBottomsheetState
    extends State<PatientEditDeleteBottomsheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 26, vertical: 30),
      decoration: BoxDecoration(
        color: Color(0xffffffff),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12), topRight: Radius.circular(12)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Color(0xff0eacd7).withOpacity(0.4),
                      child: Image.asset(
                        Images.icPlaceholder,
                        height: 46,
                        width: 46,
                      ),
                    ),
                    SizedBox(width: 24),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "James Barton",
                          style: robotoRegular.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff09323e)),
                        ),
                        SizedBox(height: 13),
                        Text(
                          "Male,26 years",
                          style: robotoRegular.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff979797)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Get.back();
                },
                child: Icon(
                  Icons.close,
                  color: Color(0xff000000),
                ),
              )
            ],
          ),
          SizedBox(height: 30),
          InkWell(
            onTap: () {},
            child: InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xff0eacd7),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "edit".tr,
                      style: robotoRegular.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Color(0xffffffff)),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          InkWell(
            onTap: () {
              Get.dialog(DeleteDialog(
                text: 'are_you_sure_delete'.tr,
              ));
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Color(0xffbf1d2d))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "delete".tr,
                    style: robotoRegular.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffbf1d2d)),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
