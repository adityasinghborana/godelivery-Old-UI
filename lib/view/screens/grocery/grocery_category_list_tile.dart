import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sixam_mart/util/styles.dart';

class GroceryCategoryListTile extends StatefulWidget {
  const GroceryCategoryListTile({Key key}) : super(key: key);

  @override
  State<GroceryCategoryListTile> createState() =>
      _GroceryCategoryListTileState();
}

class _GroceryCategoryListTileState extends State<GroceryCategoryListTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 14),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(width: 1, color: Color(0xff979797))),
        child: Text(
          'Vegetables',
          style: robotoRegular.copyWith(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Color(0xff979797)),
        ),
      ),
    );
  }
}
