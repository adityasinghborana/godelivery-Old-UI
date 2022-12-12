import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:sixam_mart/util/images.dart';

class SetRoutineListTile extends StatefulWidget {
  const SetRoutineListTile({Key key}) : super(key: key);

  @override
  State<SetRoutineListTile> createState() => _SetRoutineListTileState();
}

class _SetRoutineListTileState extends State<SetRoutineListTile> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, bottom: 19),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 18, horizontal: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: Color(0xffdedede))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Checkbox(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    side: MaterialStateBorderSide.resolveWith(
                      (states) =>
                          BorderSide(width: 1.0, color: Color(0xff979797)),
                    ),
                    splashRadius: 0.4,
                    activeColor: Color(0xff0eacd7),
                    value: this.isChecked,
                    onChanged: (bool value) {
                      setState(() {
                        this.isChecked = value;
                      });
                    },
                  ),
                  SizedBox(width: 15),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "09:00 AM",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff09323e),
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "1 Tablet after breakfast",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff979797),
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(width: 16),
          Image.asset(Images.icEditGreen, height: 24, width: 24)
        ],
      ),
    );
  }
}
