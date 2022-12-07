import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sixam_mart/util/styles.dart';

class MedicineListTile extends StatefulWidget {
  const MedicineListTile({Key key}) : super(key: key);

  @override
  State<MedicineListTile> createState() => _MedicineListTileState();
}

class _MedicineListTileState extends State<MedicineListTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Medicine of Cold.jpg",
            style: robotoRegular.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Color(0xff09323e)),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Paracetomol (500mg)",
                    style: robotoRegular.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff000000)),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "10 tablet",
                    style: robotoRegular.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff979797)),
                  ),
                ],
              ),
              Text(
                "5 Days",
                style: robotoRegular.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff979797)),
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Decongestant (100mg)",
                    style: robotoRegular.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff000000)),
                  ),
                  Text(
                    "5 tablet",
                    style: robotoRegular.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff979797)),
                  ),
                ],
              ),
              Text(
                "5 Days",
                style: robotoRegular.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff979797)),
              ),
            ],
          ),
          SizedBox(height: 15)
        ],
      ),
    );
  }
}
