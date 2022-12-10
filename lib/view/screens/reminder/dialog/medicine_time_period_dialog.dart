import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart/util/styles.dart';

class MedicineTimePeriodDialog extends StatefulWidget {
  const MedicineTimePeriodDialog({Key key}) : super(key: key);

  @override
  State<MedicineTimePeriodDialog> createState() =>
      _MedicineTimePeriodDialogState();
}

class _MedicineTimePeriodDialogState extends State<MedicineTimePeriodDialog> {
  bool is5Dayas = false;
  bool is30Days = false;
  bool is1Week = false;
  bool is10Days = false;
  bool isSetEndDate = false;
  bool isOngoing = false;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: InkWell(
              onTap: () {
                Get.back();
              },
              child: Icon(
                Icons.close,
                color: Color(0xff000000),
              ),
            ),
          ),
          SizedBox(height: 21),
          Padding(
            padding: const EdgeInsets.only(right: 40, left: 30, bottom: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'what_is_the_duration'.tr,
                  style: robotoRegular.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff09323e)),
                ),
                SizedBox(height: 21),
                InkWell(
                  onTap: () {
                    setState(() {
                      is5Dayas = !is5Dayas;
                      is30Days = false;

                      is1Week = false;
                      is10Days = false;
                      isSetEndDate = false;
                      isOngoing = false;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.only(
                      top: 9,
                      bottom: 9,
                      left: 15,
                    ),
                    decoration: BoxDecoration(
                        color: is5Dayas ? Color(0xff0eacd7) : Color(0xffffffff),
                        border: Border.all(color: Color(0xffdedede)),
                        borderRadius: BorderRadius.circular(6)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '5_days'.tr,
                          style: robotoRegular.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: is5Dayas
                                ? Color(0xffffffff)
                                : Color(0xff979797),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 21),
                InkWell(
                  onTap: () {
                    setState(() {
                      is30Days = !is30Days;
                      is5Dayas = false;
                      is1Week = false;
                      is10Days = false;
                      isSetEndDate = false;
                      isOngoing = false;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.only(top: 9, bottom: 9, left: 15),
                    decoration: BoxDecoration(
                        color: is30Days ? Color(0xff0eacd7) : Color(0xffffffff),
                        border: Border.all(color: Color(0xffdedede)),
                        borderRadius: BorderRadius.circular(6)),
                    child: Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '30 days'.tr,
                            style: robotoRegular.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: is30Days
                                  ? Color(0xffffffff)
                                  : Color(0xff979797),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 21),
                InkWell(
                  onTap: () {
                    setState(() {
                      is1Week = !is1Week;
                      is30Days = false;
                      is5Dayas = false;

                      is10Days = false;
                      isSetEndDate = false;
                      isOngoing = false;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.only(top: 9, bottom: 9, left: 15),
                    decoration: BoxDecoration(
                        color: is1Week ? Color(0xff0eacd7) : Color(0xffffffff),
                        border: Border.all(color: Color(0xffdedede)),
                        borderRadius: BorderRadius.circular(6)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '1_week'.tr,
                          style: robotoRegular.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color:
                                is1Week ? Color(0xffffffff) : Color(0xff979797),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 21),
                InkWell(
                  onTap: () {
                    setState(() {
                      is10Days = !is10Days;
                      is1Week = false;
                      is30Days = false;
                      is5Dayas = false;

                      isSetEndDate = false;
                      isOngoing = false;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.only(
                      top: 9,
                      bottom: 9,
                      left: 15,
                    ),
                    decoration: BoxDecoration(
                        color: is10Days ? Color(0xff0eacd7) : Color(0xffffffff),
                        border: Border.all(color: Color(0xffdedede)),
                        borderRadius: BorderRadius.circular(6)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '10_days'.tr,
                          style: robotoRegular.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: is10Days
                                ? Color(0xffffffff)
                                : Color(0xff979797),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 21),
                InkWell(
                  onTap: () {
                    setState(() {
                      isSetEndDate = !isSetEndDate;
                      is10Days = false;
                      is1Week = false;
                      is30Days = false;
                      is5Dayas = false;

                      isOngoing = false;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.only(
                      top: 9,
                      bottom: 9,
                      left: 15,
                    ),
                    decoration: BoxDecoration(
                        color: isSetEndDate
                            ? Color(0xff0eacd7)
                            : Color(0xffffffff),
                        border: Border.all(color: Color(0xffdedede)),
                        borderRadius: BorderRadius.circular(6)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'set_end_date'.tr,
                          style: robotoRegular.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: isSetEndDate
                                ? Color(0xffffffff)
                                : Color(0xff979797),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 21),
                InkWell(
                  onTap: () {
                    setState(() {
                      isOngoing = !isOngoing;
                      is10Days = false;
                      is1Week = false;
                      is30Days = false;
                      is5Dayas = false;
                      isSetEndDate = false;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.only(top: 9, bottom: 9, left: 15),
                    decoration: BoxDecoration(
                        color:
                            isOngoing ? Color(0xff0eacd7) : Color(0xffffffff),
                        border: Border.all(color: Color(0xffdedede)),
                        borderRadius: BorderRadius.circular(6)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'ongoint_treatment'.tr,
                          style: robotoRegular.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: isOngoing
                                ? Color(0xffffffff)
                                : Color(0xff979797),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
