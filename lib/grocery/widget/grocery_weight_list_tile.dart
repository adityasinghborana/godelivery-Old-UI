import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:sixam_mart/util/styles.dart';

enum weight { kgs }

class Kgs {
  final String _value;
  Kgs(this._value);
}

class GroceryWeightListTile extends StatefulWidget {
  const GroceryWeightListTile({
    Key key,
  }) : super(key: key);

  @override
  State<GroceryWeightListTile> createState() => _GroceryWeightListTileState();
}

class _GroceryWeightListTileState extends State<GroceryWeightListTile> {
  int _currentTimeValue = 1;

  List buttonOptions = [
    Kgs("1Kgs"),
    Kgs("2Kgs"),
    Kgs("500gms"),
  ];

  weight _character = weight.kgs;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 1,
          child: RadioListTile<weight>(
            title: Text('2 Kgs',
                style: robotoMedium.copyWith(
                  color: Color(0xff09323e),
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                )),
            value: weight.kgs,
            groupValue: _character,
            onChanged: (weight value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '₦39'.tr,
                style: robotoRegular.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff09323e)),
              ),
              SizedBox(width: 14),
              Text(
                '₦39'.tr,
                style: robotoRegular.copyWith(
                    fontSize: 14,
                    decoration: TextDecoration.lineThrough,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff979797)),
              ),
            ],
          ),
        )
      ],
    );
  }
}
