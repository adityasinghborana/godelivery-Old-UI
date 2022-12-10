import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:sixam_mart/util/images.dart';

class ProhibitedItemBottomsheet extends StatefulWidget {
  const ProhibitedItemBottomsheet({Key key}) : super(key: key);

  @override
  State<ProhibitedItemBottomsheet> createState() =>
      _ProhibitedItemBottomsheetState();
}

class _ProhibitedItemBottomsheetState extends State<ProhibitedItemBottomsheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffffffff),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12), topRight: Radius.circular(12)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 55, left: 20),
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
                  Images.icAbout,
                  height: 20,
                  width: 20,
                  color: Color(0xffBF1D2D),
                ),
                SizedBox(width: 15),
                Text(
                  'prohibited_item'.tr,
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xffBF1D2D),
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
            SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(Images.icAnimal),
                SizedBox(width: 20),
                Text(
                  'animal'.tr,
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff09323e),
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(Images.icAntique),
                SizedBox(width: 20),
                Text(
                  'antique'.tr,
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff09323e),
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(Images.icCarBodyPart),
                SizedBox(width: 20),
                Text(
                  'car_body_part'.tr,
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff09323e),
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(Images.icCreditCard),
                SizedBox(width: 20),
                Text(
                  'credit_debit_card'.tr,
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff09323e),
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(Images.icCurrency),
                SizedBox(width: 20),
                Text(
                  'currency'.tr,
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff09323e),
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(Images.icBiological),
                SizedBox(width: 20),
                Text(
                  'biological'.tr,
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff09323e),
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(Images.icGym),
                SizedBox(width: 20),
                Text(
                  'gym_weight'.tr,
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff09323e),
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(Images.icFirearm),
                SizedBox(width: 20),
                Text(
                  'firearm'.tr,
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff09323e),
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(Images.icHuman),
                SizedBox(width: 20),
                Text(
                  'human_remains'.tr,
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff09323e),
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(Images.icFire),
                SizedBox(width: 20),
                Text(
                  'fire_extinguishers'.tr,
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff09323e),
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
