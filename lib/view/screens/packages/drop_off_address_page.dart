import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart/util/images.dart';
import 'package:sixam_mart/util/styles.dart';
import 'package:sixam_mart/view/screens/packages/delivery_service_page.dart';

class DropOffPage extends StatefulWidget {
  const DropOffPage({Key key}) : super(key: key);

  @override
  State<DropOffPage> createState() => _DropOffPageState();
}

class _DropOffPageState extends State<DropOffPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Color(0xffdedede)),
                      borderRadius: BorderRadius.circular(8)),
                  elevation: 5,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffdedede)),
                        borderRadius: BorderRadius.circular(8)),
                    child: TextFormField(
                      onTap: () {
                        Get.to(DeliveryServicePage());
                      },
                      decoration: textFieldInputDecoration3.copyWith(
                          suffixIcon: Image.asset(
                            Images.icGreyLocation,
                            height: 10,
                          ),
                          enabledBorder:
                              OutlineInputBorder(borderSide: BorderSide.none),
                          contentPadding: EdgeInsets.symmetric(horizontal: 15),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xffdedede).withOpacity(0.25))),
                          hintText: 'dropoff_address'.tr,
                          hintStyle: TextStyle(
                              fontSize: 12,
                              color: Color(0xff979797),
                              fontWeight: FontWeight.w400)),
                      onSaved: (value) {
                        setState(() {
                          // password = value!.trim();
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Card(
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Color(0xffdedede)),
                            borderRadius: BorderRadius.circular(8)),
                        elevation: 5,
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Color(0xffdedede)),
                              borderRadius: BorderRadius.circular(8)),
                          child: TextFormField(
                            decoration: textFieldInputDecoration3.copyWith(
                                hintText: 'postcode'.tr,
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none),
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 15),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xffdedede)
                                            .withOpacity(0.25))),
                                hintStyle: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xff979797),
                                    fontWeight: FontWeight.w400)),
                            onSaved: (value) {
                              setState(() {
                                // password = value!.trim();
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 26),
                    Expanded(
                      child: Card(
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Color(0xffdedede)),
                            borderRadius: BorderRadius.circular(8)),
                        elevation: 5,
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Color(0xffdedede)),
                              borderRadius: BorderRadius.circular(8)),
                          child: TextFormField(
                            decoration: textFieldInputDecoration3.copyWith(
                                hintText: 'city'.tr,
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none),
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 15),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xffdedede)
                                            .withOpacity(0.25))),
                                hintStyle: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xff979797),
                                    fontWeight: FontWeight.w400)),
                            onSaved: (value) {
                              setState(() {
                                // password = value!.trim();
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Card(
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Color(0xffdedede)),
                      borderRadius: BorderRadius.circular(8)),
                  elevation: 5,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffdedede)),
                        borderRadius: BorderRadius.circular(8)),
                    child: TextFormField(
                      decoration: textFieldInputDecoration3.copyWith(
                          hintText: 'house_flat_block'.tr,
                          enabledBorder:
                              OutlineInputBorder(borderSide: BorderSide.none),
                          contentPadding: EdgeInsets.symmetric(horizontal: 15),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xffdedede).withOpacity(0.25))),
                          hintStyle: TextStyle(
                              fontSize: 12,
                              color: Color(0xff979797),
                              fontWeight: FontWeight.w400)),
                      onSaved: (value) {
                        setState(() {
                          // password = value!.trim();
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Card(
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Color(0xffdedede)),
                      borderRadius: BorderRadius.circular(8)),
                  elevation: 5,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffdedede)),
                        borderRadius: BorderRadius.circular(8)),
                    child: TextFormField(
                      decoration: textFieldInputDecoration3.copyWith(
                          hintText: 'address_line'.tr,
                          enabledBorder:
                              OutlineInputBorder(borderSide: BorderSide.none),
                          contentPadding: EdgeInsets.symmetric(horizontal: 15),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xffdedede).withOpacity(0.25))),
                          hintStyle: TextStyle(
                              fontSize: 12,
                              color: Color(0xff979797),
                              fontWeight: FontWeight.w400)),
                      onSaved: (value) {
                        setState(() {
                          // password = value!.trim();
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Card(
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Color(0xffdedede)),
                      borderRadius: BorderRadius.circular(8)),
                  elevation: 5,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffdedede)),
                        borderRadius: BorderRadius.circular(8)),
                    child: TextFormField(
                      decoration: textFieldInputDecoration3.copyWith(
                          hintText: 'landmark'.tr,
                          enabledBorder:
                              OutlineInputBorder(borderSide: BorderSide.none),
                          contentPadding: EdgeInsets.symmetric(horizontal: 15),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xffdedede).withOpacity(0.25))),
                          hintStyle: TextStyle(
                              fontSize: 12,
                              color: Color(0xff979797),
                              fontWeight: FontWeight.w400)),
                      onSaved: (value) {
                        setState(() {
                          // password = value!.trim();
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Card(
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Color(0xffdedede)),
                      borderRadius: BorderRadius.circular(8)),
                  elevation: 5,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffdedede)),
                        borderRadius: BorderRadius.circular(8)),
                    child: TextFormField(
                      decoration: textFieldInputDecoration3.copyWith(
                          hintText: 'phone_number'.tr,
                          enabledBorder:
                              OutlineInputBorder(borderSide: BorderSide.none),
                          contentPadding: EdgeInsets.symmetric(horizontal: 15),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xffdedede).withOpacity(0.25))),
                          hintStyle: TextStyle(
                              fontSize: 12,
                              color: Color(0xff979797),
                              fontWeight: FontWeight.w400)),
                      onSaved: (value) {
                        setState(() {
                          // password = value!.trim();
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Card(
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Color(0xffdedede)),
                      borderRadius: BorderRadius.circular(8)),
                  elevation: 5,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffdedede)),
                        borderRadius: BorderRadius.circular(8)),
                    child: TextFormField(
                      decoration: textFieldInputDecoration3.copyWith(
                          hintText: 'person_name_company'.tr,
                          enabledBorder:
                              OutlineInputBorder(borderSide: BorderSide.none),
                          contentPadding: EdgeInsets.symmetric(horizontal: 15),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xffdedede).withOpacity(0.25))),
                          hintStyle: TextStyle(
                              fontSize: 12,
                              color: Color(0xff979797),
                              fontWeight: FontWeight.w400)),
                      onSaved: (value) {
                        setState(() {
                          // password = value!.trim();
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Card(
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Color(0xffdedede)),
                      borderRadius: BorderRadius.circular(8)),
                  elevation: 5,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffdedede)),
                        borderRadius: BorderRadius.circular(8)),
                    child: TextFormField(
                      decoration: textFieldInputDecoration3.copyWith(
                          hintText: 'search_by_what3words'.tr,
                          enabledBorder:
                              OutlineInputBorder(borderSide: BorderSide.none),
                          contentPadding: EdgeInsets.symmetric(horizontal: 15),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xffdedede).withOpacity(0.25))),
                          hintStyle: TextStyle(
                              fontSize: 12,
                              color: Color(0xff979797),
                              fontWeight: FontWeight.w400)),
                      onSaved: (value) {
                        setState(() {
                          // password = value!.trim();
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
