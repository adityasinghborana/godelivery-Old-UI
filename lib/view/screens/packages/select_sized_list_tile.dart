import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sixam_mart/util/images.dart';

class SelectSizeListTile extends StatefulWidget {
  const SelectSizeListTile({Key key}) : super(key: key);

  @override
  State<SelectSizeListTile> createState() => _SelectSizeListTileState();
}

class _SelectSizeListTileState extends State<SelectSizeListTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 34, right: 34, top: 18, bottom: 14),
      decoration: BoxDecoration(
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
    );
  }
}
