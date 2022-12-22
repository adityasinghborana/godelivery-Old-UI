import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:sixam_mart/util/images.dart';
import 'package:sixam_mart/util/styles.dart';
import 'package:sixam_mart/view/screens/location/widget/update_address_bottomsheet.dart';

class NewAddressListTile extends StatefulWidget {
  final String pickAddres;
  final int selectedIndex;
  const NewAddressListTile({Key key, this.pickAddres, this.selectedIndex})
      : super(key: key);

  @override
  State<NewAddressListTile> createState() => _NewAddressListTileState();
}

class _NewAddressListTileState extends State<NewAddressListTile> {
  String _value;
  int value;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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

            // Expanded(
            //   child: RadioListTile(
            //     value: widget.selectedIndex,
            //     groupValue: value,
            //     onChanged: (ind) => setState(() => value = ind),
            //     title: Text("Number ${widget.selectedIndex}"),
            //   ),
            // ),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    Get.bottomSheet(
                      UpdateAddressBottomSheet(),
                      // backgroundColor: Colors.transparent,
                      isScrollControlled: true,
                    );
                  },
                  child: Text('edit'.tr,
                      style: robotoBlack.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff0eacd7))),
                ),
                SizedBox(
                  width: 30,
                ),
                Radio(
                    activeColor: Color(0xff0eacd7),
                    value: '',
                    groupValue: _value.toString(),
                    onChanged: ((value) {
                      setState(() {
                        _value = value.toString();
                      });
                    })),
              ],
            )
          ],
        ),
        SizedBox(height: 20),
        Text(widget.pickAddres,
            style: robotoBlack.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff979797))),
        SizedBox(height: 10),
      ],
    );
  }
}
