import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart/util/styles.dart';
import 'package:sixam_mart/view/screens/packages/arrivel_calender_bottomsheet.dart';

class ArrivalTimeBottomsheet extends StatefulWidget {
  final String selectedDate;
  const ArrivalTimeBottomsheet({Key key, this.selectedDate}) : super(key: key);

  @override
  State<ArrivalTimeBottomsheet> createState() => _ArrivalTimeBottomsheetState();
}

class _ArrivalTimeBottomsheetState extends State<ArrivalTimeBottomsheet> {
  String selectTimeValue;
  final selectTime = [
    '9:00 - 9:30',
    '10:00 - 10:30',
    '11:00 - 11:30',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xffffffff),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12), topRight: Radius.circular(12))),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'arrival_time'.tr,
              style: TextStyle(
                  fontSize: 14,
                  color: Color(0xff09323e),
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 17),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffe3e3e3)),
                        color: Color(0xfff5f5f5),
                        borderRadius: BorderRadius.circular(7)),
                    child: Center(
                      child: Text(
                        'asap'.tr.toUpperCase(),
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff818181),
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    decoration: BoxDecoration(
                        //border: Border.all(color: Color(0xffe3e3e3)),
                        color: Color(0xffbf1d2d),
                        borderRadius: BorderRadius.circular(7)),
                    child: Center(
                      child: Text(
                        'schedule_for_later'.tr,
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0xffffffff),
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: TextFormField(
                    initialValue: widget.selectedDate,
                    onTap: () {
                      Get.back();
                      Get.bottomSheet(ArrivalCalenderBottomsheet(),
                          backgroundColor: Colors.transparent,
                          isScrollControlled: true);
                    },
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xff09323e), width: 2),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xff09323e), width: 2),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 9, horizontal: 15),
                    ),
                    onSaved: (value) {
                      setState(() {
                        // password = value!.trim();
                      });
                    },
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          hint: Text(
                            "select_time".tr,
                            style: TextStyle(
                                fontSize: 15,
                                color: Color(0xff979797),
                                fontWeight: FontWeight.w400),
                          ),
                          // itemHeight: 0.5,
                          value: selectTimeValue,
                          style: TextStyle(
                              fontSize: 15,
                              color: Color(0xff09323e),
                              fontWeight: FontWeight.w400),
                          iconSize: 30,
                          icon: const Icon(
                            Icons.keyboard_arrow_down_outlined,
                            color: Color(0xff09323e),
                          ),
                          isExpanded: true,
                          items: selectTime.map(selectTimeMethod).toList(),
                          onChanged: (value) =>
                              setState(() => selectTimeValue = value),
                        ),
                      ),
                      Divider(
                        thickness: 2,
                        color: Color(0xff09323e),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            Container(
                padding: EdgeInsets.fromLTRB(11, 15, 27, 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffbf1d2d)),
                child: Center(
                  child: Text("confirm".tr,
                      style: robotoMedium.copyWith(
                        color: Color(0xffffffff),
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                      )),
                )),
            SizedBox(height: 22),
          ],
        ),
      ),
    );
  }

  DropdownMenuItem<String> selectTimeMethod(String item) => DropdownMenuItem(
      value: item,
      child: Text(
        item,
      ));
}
