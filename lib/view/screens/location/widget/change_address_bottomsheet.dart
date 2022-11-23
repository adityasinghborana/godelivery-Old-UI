import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:sixam_mart/util/images.dart';
import 'package:sixam_mart/util/styles.dart';
import 'package:sixam_mart/view/base/custom_button.dart';

class ChangeAddressBottomSheet extends StatefulWidget {
  final String pickAddress;
  const ChangeAddressBottomSheet({Key key, this.pickAddress}) : super(key: key);

  @override
  State<ChangeAddressBottomSheet> createState() =>
      _ChangeAddressBottomSheetState();
}

class _ChangeAddressBottomSheetState extends State<ChangeAddressBottomSheet> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xffffffff),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('your_address'.tr.toUpperCase(),
                style: robotoBlack.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff5c6678))),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
                      Text('Sector A',
                          style: robotoBlack.copyWith(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff373a41))),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('edit'.tr,
                        style: robotoBlack.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff0eacd7))),
                    SizedBox(
                      width: 30,
                    ),
                  Radio(
                        activeColor: Color(0xff0eacd7),
                        value: 2,
                        groupValue: _value,
                        onChanged: ((value) {
                          setState(() {
                            _value = value;
                          });
                        })),
                  ],
                )
              ],
            ),
            SizedBox(height: 20),
            Text(widget.pickAddress,
                style: robotoBlack.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff979797))),
            SizedBox(
              height: 15,
            ),
            Divider(
              thickness: 1,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
                      Text('home'.tr,
                          style: robotoBlack.copyWith(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff373a41))),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('edit'.tr,
                        style: robotoBlack.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff0eacd7))),
                    SizedBox(
                      width: 30,
                    ),
                    Radio(
                        activeColor: Color(0xff0eacd7),
                        value: 2,
                        groupValue: _value,
                        onChanged: ((value) {
                          setState(() {
                            _value = value;
                          });
                        })),
                    // Container(
                    //   height: 24,
                    //   width: 24,
                    //   decoration: BoxDecoration(
                    //       border: Border.all(color: Color(0xff979797)),
                    //       borderRadius: BorderRadius.circular(12),
                    //       color: Color(0xfff6f6f6)),
                    // )
                  ],
                )
              ],
            ),
            SizedBox(height: 20),
            Text(widget.pickAddress,
                style: robotoBlack.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff979797))),
            SizedBox(
              height: 38,
            ),
            CustomButton(
              radius: 10,
              buttonText: 'confirm'.tr,
              fontSize: 17,
              onPressed: () {},
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
