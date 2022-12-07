import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart/my_record/patient_list_tile.dart';
import 'package:sixam_mart/util/styles.dart';

class PatientListPage extends StatefulWidget {
  const PatientListPage({Key key}) : super(key: key);

  @override
  State<PatientListPage> createState() => _PatientListPageState();
}

class _PatientListPageState extends State<PatientListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
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
                        'health_record'.tr,
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
                SizedBox(
                  height: 530,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListView.separated(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return PatientListTile();
                          },
                          separatorBuilder: (context, index) {
                            return Divider(
                              thickness: 1,
                              color: Color(0xff979797),
                            );
                          },
                          itemCount: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: InkWell(
                onTap: () {},
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
                        "add_new_patient".tr,
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
      ),
    );
  }
}
