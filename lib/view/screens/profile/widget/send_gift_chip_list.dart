import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sixam_mart/util/styles.dart';

class SendGiftChipList extends StatefulWidget {
  final String selectedIndex;
  const SendGiftChipList({Key key, this.selectedIndex}) : super(key: key);

  @override
  State<SendGiftChipList> createState() => _SendGiftChipListState();
}

class _SendGiftChipListState extends State<SendGiftChipList> {
  bool isTapped = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: InkWell(
        onTap: () {
          setState(() {
            isTapped = !isTapped;
            if (widget.selectedIndex.isEmpty) {
              isTapped = false;
            }
            // isTapped = false;
            // if (widget.selectedIndex.isNotEmpty) {
            //   isTapped = true;
            // } else if (widget.selectedIndex.isEmpty) {
            //   isTapped = false;
            // }
          });
          // widget.selectedIndex;
          print("selected index-->" + widget.selectedIndex);
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 6, horizontal: 20),
          decoration: BoxDecoration(
            color: isTapped ? Color(0xff0eacd7) : Colors.white,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Color(0xff979797)),
          ),
          child: Text(
            'N100',
            style: robotoRegular.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: isTapped ? Color(0xff000000) : Color(0xff979797)),
          ),
        ),
      ),
    );
  }
}
