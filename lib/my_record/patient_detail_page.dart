import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart/my_record/patient_tab_page.dart';
import 'package:sixam_mart/util/images.dart';
import 'package:sixam_mart/util/styles.dart';

class PatientDetailsPage extends StatefulWidget {
  final File image;
  const PatientDetailsPage({Key key, this.image}) : super(key: key);

  @override
  State<PatientDetailsPage> createState() => _PatientDetailsPageState();
}

class _PatientDetailsPageState extends State<PatientDetailsPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: 2, initialIndex: 0, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 60),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 26),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
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
                          SizedBox(width: 14),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "James Barton",
                                    style: robotoRegular.copyWith(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff09323e)),
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    "(Brother)",
                                    style: robotoRegular.copyWith(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff979797)),
                                  ),
                                ],
                              ),
                              SizedBox(height: 11),
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
                    Image.asset(Images.icThreeDot)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(Images.icHeight),
                        SizedBox(width: 9),
                        Text(
                          "189 cm",
                          style: robotoRegular.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff979797)),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(Images.icWeight),
                        SizedBox(width: 9),
                        Text(
                          "86 kg",
                          style: robotoRegular.copyWith(
                              fontSize: 14,
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
          // SizedBox(height: 30),
          TabBar(
            controller: _tabController,
            indicatorColor: Color(0xff00eacd7),
            indicatorWeight: 3,
            labelColor: Color(0xff00eacd7),
            unselectedLabelColor: Color(0xff979797),
            unselectedLabelStyle: robotoRegular.copyWith(
                //color: Theme.of(context).disabledColor,
                fontSize: 14,
                fontWeight: FontWeight.w400),
            labelStyle: robotoBold.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              //color: Theme.of(context).primaryColor
            ),
            tabs: [
              Tab(text: 'prescription'.tr),
              Tab(
                text: 'medicine_list'.tr,
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                PatientTabPage(isMedicinelist: false, image: widget.image),
                PatientTabPage(isMedicinelist: true, image: widget.image),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
