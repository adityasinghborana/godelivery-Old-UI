import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:sixam_mart/util/images.dart';
import 'package:sixam_mart/util/styles.dart';
import 'package:sixam_mart/view/base/custom_button.dart';

class UpdateAddressBottomSheet extends StatefulWidget {
  const UpdateAddressBottomSheet({Key key}) : super(key: key);

  @override
  State<UpdateAddressBottomSheet> createState() =>
      _UpdateAddressBottomSheetState();
}

class _UpdateAddressBottomSheetState extends State<UpdateAddressBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      decoration: BoxDecoration(
          color: Color(0xffffffff),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 22),
        child: SingleChildScrollView(
          child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            Images.icLocation,
                            height: 30,
                            width: 30,
                          ),
                          SizedBox(width: 22),
                          Text('work'.tr,
                              style: robotoBlack.copyWith(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff373a41))),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.defaultDialog(
                            titlePadding: EdgeInsets.only(
                                top: 45, left: 46, right: 46, bottom: 70),
                            title: "are_you_sure".tr,
                            titleStyle: robotoBlack.copyWith(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff09323e)),
                            radius: 0,
                            content: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 6),
                                    decoration: BoxDecoration(
                                        color: Color(0xffe3e3e3),
                                        borderRadius: BorderRadius.circular(4)),
                                    child: Text('cancel'.tr.toUpperCase(),
                                        style: robotoBlack.copyWith(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xff09323e))),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 6),
                                  decoration: BoxDecoration(
                                      color: Color(0xffe3e3e3),
                                      borderRadius: BorderRadius.circular(4)),
                                  child: Text('yes'.tr.toUpperCase(),
                                      style: robotoBlack.copyWith(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xff09323e))),
                                ),
                              ],
                            ));
                      },
                      child: Text('delete'.tr.toUpperCase(),
                          style: robotoBlack.copyWith(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Color(0xffbf1d2d))),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text("widget.pickAddress",
                    style: robotoBlack.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff979797))),
                SizedBox(height: 38),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Color(0xfffffcf5),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xffeee7e0))),
                  child: Text('details_address'.tr,
                      style: robotoBlack.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff845e39))),
                ),
                SizedBox(height: 30),
                TextFormField(
                  decoration: InputDecoration(hintText: "house_flat_block".tr),
                ),
                SizedBox(height: 30),
                TextFormField(
                  decoration:
                      InputDecoration(hintText: "apartment_road_area".tr),
                ),
                SizedBox(height: 30),
                TextFormField(
                  decoration: InputDecoration(hintText: "postcode".tr),
                ),
                SizedBox(height: 30),
                Text('direction_to_reach'.tr,
                    style: robotoBlack.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff979797))),
                SizedBox(height: 13),
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xfff6f6f6),
                      borderRadius: BorderRadius.circular(8)),
                  child: TextFormField(
                    maxLines: 3,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 10, top: 10),
                      hintText: 'eg_ring_the_bell'.tr,
                    ),
                    // validator: (value) {
                    //   if (value.isEmpty) {
                    //     // print('value empty');
                    //     return "enter_password".tr;
                    //   } else {
                    //     return null;
                    //   }
                    // },
                    onSaved: (value) {
                      setState(() {
                        // password = value!.trim();
                      });
                    },
                  ),
                ),
                SizedBox(height: 30),
                Text('save_the_address'.tr.toUpperCase(),
                    style: robotoBlack.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff5c6678))),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      decoration: BoxDecoration(
                          color: Color(0xffe3e3e3),
                          borderRadius: BorderRadius.circular(4)),
                      child: Text('home'.tr.toUpperCase(),
                          style: robotoBlack.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff000000))),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 23, vertical: 6),
                      decoration: BoxDecoration(
                          color: Color(0xffe3e3e3),
                          borderRadius: BorderRadius.circular(4)),
                      child: Text('work'.tr.toUpperCase(),
                          style: robotoBlack.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff000000))),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      decoration: BoxDecoration(
                          color: Color(0xffe3e3e3),
                          borderRadius: BorderRadius.circular(4)),
                      child: Text('other'.tr.toUpperCase(),
                          style: robotoBlack.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff000000))),
                    ),
                  ],
                ),
                SizedBox(height: 33),
                CustomButton(
                  radius: 10,
                  buttonText: 'update_address'.tr,
                  fontSize: 17,
                  onPressed: () {},
                ),
                SizedBox(height: 43),
              ]),
        ),
      ),
    );
  }
}
