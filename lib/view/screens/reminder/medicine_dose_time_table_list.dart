import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sixam_mart/util/images.dart';
import 'package:sixam_mart/util/styles.dart';

class MedicineTimetableList extends StatefulWidget {
  const MedicineTimetableList({Key key}) : super(key: key);

  @override
  State<MedicineTimetableList> createState() => _MedicineTimetableListState();
}

class _MedicineTimetableListState extends State<MedicineTimetableList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, bottom: 30),
      // color: Color(0xffffffff),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '09:30 AM',
            style: robotoRegular.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color(0xff09323e)),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                border: Border.all(color: Color(0xffdedede))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            Images.icAttechButton,
                            height: 19,
                            width: 15,
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Paracetamol',
                            style: robotoRegular.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff09323e)),
                          ),
                          SizedBox(width: 3),
                          Text(
                            '(500mg)',
                            style: robotoRegular.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff979797)),
                          ),
                        ],
                      ),
                      SizedBox(height: 18),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            Images.icMorning,
                            height: 18,
                            width: 23,
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Morning - 09:30 AM',
                            style: robotoRegular.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff09323e)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Text(
                  'taken'.tr.toUpperCase(),
                  style: robotoRegular.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff75bf27)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
