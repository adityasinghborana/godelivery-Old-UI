import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sixam_mart/util/images.dart';
import 'package:sixam_mart/util/styles.dart';
import 'package:sixam_mart/view/screens/packages/select_sized_list_tile.dart';

class SelectSizedBottomsheet extends StatefulWidget {
  const SelectSizedBottomsheet({Key key}) : super(key: key);

  @override
  State<SelectSizedBottomsheet> createState() => _SelectSizedBottomsheetState();
}

class _SelectSizedBottomsheetState extends State<SelectSizedBottomsheet> {
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
              'select_size'.tr,
              style: TextStyle(
                  fontSize: 14,
                  color: Color(0xff979797),
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 15),
            Text(
              'cant_find_the_size'.tr,
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
                          Image.asset(Images.icMessageBox),
                          SizedBox(height: 10),
                          Text(
                            'Envelope',
                            style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff09323e),
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(height: 8),
                          Text(
                            '25*16*0.5cm',
                            style: TextStyle(
                                fontSize: 10,
                                color: Color(0xff979797),
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
                          Image.asset(Images.icLargeEnvelope),
                          SizedBox(height: 10),
                          Text(
                            'Large Envelope',
                            style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff09323e),
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(height: 8),
                          Text(
                            '25*16*0.5cm',
                            style: TextStyle(
                                fontSize: 10,
                                color: Color(0xff979797),
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
                          Image.asset(Images.icSmall),
                          SizedBox(height: 10),
                          Text(
                            'Small',
                            style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff09323e),
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(height: 8),
                          Text(
                            '25*16*0.5cm',
                            style: TextStyle(
                                fontSize: 10,
                                color: Color(0xff979797),
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
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
                          Image.asset(Images.icMedium),
                          SizedBox(height: 10),
                          Text(
                            'Medium',
                            style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff09323e),
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(height: 8),
                          Text(
                            '25*16*0.5cm',
                            style: TextStyle(
                                fontSize: 10,
                                color: Color(0xff979797),
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
                          Image.asset(Images.icLarger),
                          SizedBox(height: 10),
                          Text(
                            'Larger',
                            style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff09323e),
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(height: 8),
                          Text(
                            '25*16*0.5cm',
                            style: TextStyle(
                                fontSize: 10,
                                color: Color(0xff979797),
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
                          Image.asset(Images.icXLarger),
                          SizedBox(height: 10),
                          Text(
                            'X - Large',
                            style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff09323e),
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(height: 8),
                          Text(
                            '25*16*0.5cm',
                            style: TextStyle(
                                fontSize: 10,
                                color: Color(0xff979797),
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
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
            // SizedBox(
            //   height: 300,
            //   child: GridView.builder(
            //       //physics: NeverScrollableScrollPhysics(),
            //       shrinkWrap: true,
            //       gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            //           maxCrossAxisExtent: 150,
            //           childAspectRatio: 4 / 4,
            //           crossAxisSpacing: 15,
            //           mainAxisSpacing: 15),
            //       itemCount: 6,
            //       itemBuilder: ((context, index) {
            //         return SelectSizeListTile();
            //       })),
            // )
          ],
        ),
      ),
    );
  }
}
