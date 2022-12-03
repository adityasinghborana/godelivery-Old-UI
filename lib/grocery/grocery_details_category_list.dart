import 'package:flutter/cupertino.dart';
import 'package:sixam_mart/util/styles.dart';

class GroceryDetailsCatedoryList extends StatefulWidget {
  const GroceryDetailsCatedoryList({Key key}) : super(key: key);

  @override
  State<GroceryDetailsCatedoryList> createState() =>
      _GroceryDetailsCatedoryListState();
}

class _GroceryDetailsCatedoryListState
    extends State<GroceryDetailsCatedoryList> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Fruit",
            style: robotoMedium.copyWith(
              color: Color(0xff979797),
              fontSize: 12,
              fontWeight: FontWeight.w400,
            )),
        SizedBox(width: 27)
      ],
    );
  }
}
