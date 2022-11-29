import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:sixam_mart/util/images.dart';
import 'package:sixam_mart/util/styles.dart';
import 'package:sixam_mart/view/base/custom_button.dart';
import 'package:sixam_mart/view/screens/location/widget/change_address_bottomsheet.dart';

import '../../../../controller/location_controller.dart';

class AddAddressBottomSheet extends StatefulWidget {
  final String address;
  final String pickAddress;
  const AddAddressBottomSheet({Key key, this.pickAddress, this.address})
      : super(key: key);

  @override
  State<AddAddressBottomSheet> createState() => _AddAddressBottomSheetState();
}

class _AddAddressBottomSheetState extends State<AddAddressBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LocationController>(builder: (locationController) {
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
                  SizedBox(height: 20),
                  Text(widget.pickAddress,
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
                    decoration:
                        InputDecoration(hintText: "house_flat_block".tr),
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
                    buttonText: 'confirm_location'.tr,
                    fontSize: 17,
                    onPressed: () {
                      Navigator.pop(context);
                      Get.bottomSheet(
                        ChangeAddressBottomSheet(
                            pickAddress: locationController.pickAddress),
                        // backgroundColor: Colors.transparent,
                        isScrollControlled: true,
                      );
                    },
                  ),
                  SizedBox(height: 53),
                ]),
          ),
        ),
      );
    });
  }
}
