import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart/view/screens/my_record/medicine/medicine_list_tile.dart';
import 'package:sixam_mart/view/screens/my_record/prescription/prescription_list_tile.dart';
import 'package:sixam_mart/view/screens/my_record/prescription/prescription_upload_page.dart';
import 'package:sixam_mart/util/styles.dart';

class PatientTabPage extends StatefulWidget {
  final File image;
  final bool isMedicinelist;
  const PatientTabPage({Key key, this.isMedicinelist, this.image})
      : super(key: key);

  @override
  State<PatientTabPage> createState() => _PatientTabPageState();
}

class _PatientTabPageState extends State<PatientTabPage> {
  @override
  void initState() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: widget.isMedicinelist
            ? SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListView.separated(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return MedicineListTile();
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
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: SizedBox(
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ListView.separated(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                return PrescriptionListTile(
                                  image: widget.image,
                                );
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
                  ),
                  Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          blurRadius: 25.0,
                          color: Color(0xff000000).withOpacity(0.7))
                    ]),
                    child: Container(
                      color: Color(0xffffffff),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 30, right: 30, top: 15, bottom: 45),
                        child: InkWell(
                          onTap: () {},
                          child: InkWell(
                            onTap: () {
                              Get.to(PrescriptionUploadPage());
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
                                    "upload_record".tr,
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
                      ),
                    ),
                  )
                ],
              ));
  }
}
