import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:sixam_mart/util/styles.dart';

class GroceryWeightListTile extends StatefulWidget {
  final int selecteIndex;
  final int num;
  final buttonOptions;
  const GroceryWeightListTile({
    Key key,
    this.num,
    this.selecteIndex,
    this.buttonOptions,
  }) : super(key: key);

  @override
  State<GroceryWeightListTile> createState() => _GroceryWeightListTileState();
}

class _GroceryWeightListTileState extends State<GroceryWeightListTile> {
  int value;

  // List buttonOptions = [
  //   "1Kgs",
  //   "2Kgs",
  //   "500gms",
  // ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
            flex: 1,
            child: RadioListTile(
              value: widget.selecteIndex,
              groupValue: value,
              activeColor: Color(0xff188962),
              onChanged: (ind) => setState(() => value = ind),
              title: Text(
                widget.buttonOptions[widget.selecteIndex],
                style: robotoRegular.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff09323e)),
              ),
            )),
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
