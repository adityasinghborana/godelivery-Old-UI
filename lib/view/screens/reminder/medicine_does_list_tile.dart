import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sixam_mart/util/images.dart';
import 'package:sixam_mart/util/styles.dart';

class MedicineDoesListTile extends StatefulWidget {
  const MedicineDoesListTile({Key key}) : super(key: key);

  @override
  State<MedicineDoesListTile> createState() => _MedicineDoesListTileState();
}

class _MedicineDoesListTileState extends State<MedicineDoesListTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30, left: 20, right: 20),
      padding: EdgeInsets.symmetric(vertical: 13, horizontal: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: Color(0xffdedede))),
      child: Column(
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
                      Images.icAttechButton,
                      height: 19,
                      width: 15,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'First does',
                      style: robotoRegular.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff09323e)),
                    ),
                  ],
                ),
              ),
              Text(
                'edit'.tr.toUpperCase(),
                style: robotoRegular.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff0eacd7)),
              ),
            ],
          ),
          SizedBox(
            height: 24,
          ),
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
              ),
              Text(
                'delete'.tr.toUpperCase(),
                style: robotoRegular.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Color(0xffbf1d2d)),
              ),
            ],
          )
        ],
      ),
    );
  }
}
