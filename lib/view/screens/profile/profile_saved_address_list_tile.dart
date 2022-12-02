import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sixam_mart/util/images.dart';
import 'package:sixam_mart/util/styles.dart';

class ProfileSavedAddressListTile extends StatefulWidget {
  const ProfileSavedAddressListTile({Key key}) : super(key: key);

  @override
  State<ProfileSavedAddressListTile> createState() =>
      _ProfileSavedAddressListTileState();
}

class _ProfileSavedAddressListTileState
    extends State<ProfileSavedAddressListTile> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 5,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 14, vertical: 21),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  Images.icLocation,
                  height: 25,
                  width: 25,
                ),
                SizedBox(width: 10),
                Text('Home',
                    style: robotoBlack.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff373a41))),
              ],
            ),
            SizedBox(height: 15),
            Text('3891 Ranchview Dr, Richardson, London 62639',
                style: robotoBlack.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff979797))),
            SizedBox(height: 35),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('edit'.tr.toUpperCase(),
                    style: robotoBlack.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff0eacd7))),
                Text('delete'.tr.toUpperCase(),
                    style: robotoBlack.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffbf1d2d))),
              ],
            )
          ],
        ),
      ),
    );
  }
}
