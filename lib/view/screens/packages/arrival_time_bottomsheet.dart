import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class ArrivalTimeBottomsheet extends StatefulWidget {
  const ArrivalTimeBottomsheet({Key key}) : super(key: key);

  @override
  State<ArrivalTimeBottomsheet> createState() => _ArrivalTimeBottomsheetState();
}

class _ArrivalTimeBottomsheetState extends State<ArrivalTimeBottomsheet> {
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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'arrival_time'.tr,
              style: TextStyle(
                  fontSize: 14,
                  color: Color(0xff979797),
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 17),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffe3e3e3)),
                      color: Color(0xfff5f5f5),
                      borderRadius: BorderRadius.circular(7)),
                  child: Text(
                    'asap'.tr.toUpperCase(),
                    style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff979797),
                        fontWeight: FontWeight.w700),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
