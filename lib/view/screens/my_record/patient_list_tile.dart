import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart/view/screens/my_record/patient_detail_page.dart';
import 'package:sixam_mart/view/screens/my_record/patient_edit_delete_bottomsheet.dart';
import 'package:sixam_mart/util/images.dart';
import 'package:sixam_mart/util/styles.dart';

class PatientListTile extends StatefulWidget {
  const PatientListTile({Key key}) : super(key: key);

  @override
  State<PatientListTile> createState() => _PatientListTileState();
}

class _PatientListTileState extends State<PatientListTile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(PatientDetailsPage());
      },
      child: Container(
        padding: EdgeInsets.only(left: 20, right: 20, top: 15),
        child: Column(
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
                      Container(
                        padding: EdgeInsets.all(6),
                        // width: 60,
                        // height: 60,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xff0eacd7).withOpacity(0.4),
                        ),
                        child: ClipOval(
                          child: Image.asset(
                            Images.icPlaceholder,
                            height: 46,
                            width: 46,
                          ),
                        ),
                      ),
                      // CircleAvatar(
                      //   radius: 40,
                      //   backgroundColor: Color(0xff0eacd7).withOpacity(0.4),
                      //   child: Image.asset(
                      //     Images.icPlaceholder,
                      //     height: 46,
                      //     width: 46,
                      //   ),
                      // ),
                      SizedBox(width: 14),
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
                          SizedBox(height: 11),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(Images.icPatientRecord),
                              SizedBox(width: 18),
                              Text(
                                "0 record",
                                style: robotoRegular.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff979797)),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                InkWell(
                    onTap: () {
                      Get.bottomSheet(
                        PatientEditDeleteBottomsheet(),
                        backgroundColor: Colors.transparent,
                        isScrollControlled: true,
                      );
                    },
                    child: Image.asset(Images.icThreeDot))
              ],
            ),
            SizedBox(height: 22),
            Text(
              "Last update on 12 jun 2022",
              style: robotoRegular.copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff979797)),
            ),
            SizedBox(height: 11)
          ],
        ),
      ),
    );
  }
}
