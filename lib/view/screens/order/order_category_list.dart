import 'package:flutter/material.dart';
import 'package:sixam_mart/util/styles.dart';

class OrderCategoryListTile extends StatefulWidget {
  const OrderCategoryListTile({Key key}) : super(key: key);

  @override
  State<OrderCategoryListTile> createState() => _OrderCategoryListTileState();
}

class _OrderCategoryListTileState extends State<OrderCategoryListTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
      ),
      child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Color(0xff979797)),
              borderRadius: BorderRadius.circular(6)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
            child: Text(
              'My Food',
              style: robotoRegular.copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff979797)),
            ),
          )),
    );
  }
}
