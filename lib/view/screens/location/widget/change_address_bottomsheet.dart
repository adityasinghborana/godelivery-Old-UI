import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:sixam_mart/util/styles.dart';
import 'package:sixam_mart/view/base/custom_button.dart';
import 'package:sixam_mart/view/screens/location/widget/add_address_bottomsheet.dart';
import 'package:sixam_mart/view/screens/location/widget/new_address_list_tile.dart';

class ChangeAddressBottomSheet extends StatefulWidget {
  final String pickAddress;
  const ChangeAddressBottomSheet({Key key, this.pickAddress}) : super(key: key);

  @override
  State<ChangeAddressBottomSheet> createState() =>
      _ChangeAddressBottomSheetState();
}

class _ChangeAddressBottomSheetState extends State<ChangeAddressBottomSheet> {
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
            InkWell(
              onTap: () {
                Navigator.pop(context);
                Get.bottomSheet(
                  AddAddressBottomSheet(pickAddress: widget.pickAddress),
                  // backgroundColor: Colors.transparent,
                  isScrollControlled: true,
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.add,
                    color: Color(0xff0eacd7),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('new_address'.tr.toUpperCase(),
                      style: robotoBlack.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff0eacd7),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListView.separated(
                shrinkWrap: true,
                separatorBuilder: (context, index) => Divider(thickness: 1),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return NewAddressListTile(
                    pickAddres: widget.pickAddress,
                  );
                }),
            SizedBox(
              height: 20,
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
