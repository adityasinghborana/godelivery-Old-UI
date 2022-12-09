import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sixam_mart/util/images.dart';
import 'package:sixam_mart/util/styles.dart';

class SelectWeightBottomsheet extends StatefulWidget {
  const SelectWeightBottomsheet({Key key}) : super(key: key);

  @override
  State<SelectWeightBottomsheet> createState() =>
      _SelectWeightBottomsheetState();
}

class _SelectWeightBottomsheetState extends State<SelectWeightBottomsheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Color(0xffffffff),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12), topRight: Radius.circular(12))),
        child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'select_weight'.tr,
                    style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff979797),
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'cant_find_the_weight'.tr,
                    style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff0eacd7),
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                                blurRadius: 10,
                                color: Color(0xff000000).withOpacity(0.10))
                          ], borderRadius: BorderRadius.circular(14)),
                          child: Container(
                            padding: EdgeInsets.only(top: 18, bottom: 14),
                            decoration: BoxDecoration(
                                color: Color(0xffffffff),
                                border: Border.all(color: Color(0xffd6d6d6)),
                                borderRadius: BorderRadius.circular(14)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(Images.icMobilePhone),
                                SizedBox(height: 10),
                                Text(
                                  '> 100gm',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xff09323e),
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 17),
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                                blurRadius: 10,
                                color: Color(0xff000000).withOpacity(0.10))
                          ], borderRadius: BorderRadius.circular(14)),
                          child: Container(
                            padding: EdgeInsets.only(top: 18, bottom: 14),
                            decoration: BoxDecoration(
                                color: Color(0xffffffff),
                                border: Border.all(color: Color(0xffd6d6d6)),
                                borderRadius: BorderRadius.circular(14)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(Images.icFlour),
                                SizedBox(height: 10),
                                Text(
                                  '> 750gm',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xff09323e),
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 17),
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                                blurRadius: 10,
                                color: Color(0xff000000).withOpacity(0.10))
                          ], borderRadius: BorderRadius.circular(14)),
                          child: Container(
                            padding: EdgeInsets.only(top: 18, bottom: 14),
                            decoration: BoxDecoration(
                                color: Color(0xffffffff),
                                border: Border.all(color: Color(0xffd6d6d6)),
                                borderRadius: BorderRadius.circular(14)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(Images.icPackOfFlour),
                                SizedBox(height: 10),
                                Text(
                                  '> 1.5kg',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xff09323e),
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                                blurRadius: 10,
                                color: Color(0xff000000).withOpacity(0.10))
                          ], borderRadius: BorderRadius.circular(14)),
                          child: Container(
                            padding: EdgeInsets.only(top: 18, bottom: 14),
                            decoration: BoxDecoration(
                                color: Color(0xffffffff),
                                border: Border.all(color: Color(0xffd6d6d6)),
                                borderRadius: BorderRadius.circular(14)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(Images.icPaintCan),
                                SizedBox(height: 10),
                                Text(
                                  '> 5kg',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xff09323e),
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 26),
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                                blurRadius: 10,
                                color: Color(0xff000000).withOpacity(0.10))
                          ], borderRadius: BorderRadius.circular(14)),
                          child: Container(
                            padding: EdgeInsets.only(top: 18, bottom: 14),
                            decoration: BoxDecoration(
                                color: Color(0xffffffff),
                                border: Border.all(color: Color(0xffd6d6d6)),
                                borderRadius: BorderRadius.circular(14)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(Images.icWashing),
                                SizedBox(height: 10),
                                Text(
                                  '> 12kg',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xff09323e),
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 26),
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                                blurRadius: 10,
                                color: Color(0xff000000).withOpacity(0.10))
                          ], borderRadius: BorderRadius.circular(14)),
                          child: Container(
                            padding: EdgeInsets.only(top: 18, bottom: 14),
                            decoration: BoxDecoration(
                                color: Color(0xffffffff),
                                border: Border.all(color: Color(0xffd6d6d6)),
                                borderRadius: BorderRadius.circular(14)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(Images.icWardrop),
                                SizedBox(height: 10),
                                Text(
                                  '> 100kg',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xff09323e),
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Container(
                      padding: EdgeInsets.fromLTRB(11, 15, 27, 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffbf1d2d)),
                      child: Center(
                        child: Text("confirm".tr,
                            style: robotoMedium.copyWith(
                              color: Color(0xffffffff),
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                            )),
                      )),
                  SizedBox(height: 22),
                ])));
  }
}
