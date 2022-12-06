import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sixam_mart/util/images.dart';
import 'package:sixam_mart/util/styles.dart';

class OrderItemList extends StatefulWidget {
  const OrderItemList({Key key}) : super(key: key);

  @override
  State<OrderItemList> createState() => _OrderItemListState();
}

class _OrderItemListState extends State<OrderItemList> {
  int count = 1;
  counter() {
    count++;
  }

  decrement() {
    if (count > 1) {
      count--;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(Images.imgMyOrder, height: 66, width: 80),
                SizedBox(width: 12),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Fried Rice',
                      textAlign: TextAlign.center,
                      style: robotoRegular.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff0a191e)),
                    ),
                    SizedBox(height: 7),
                    Text(
                      'Mary"s Kitchen',
                      textAlign: TextAlign.center,
                      style: robotoRegular.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff0a191e)),
                    ),
                    SizedBox(height: 7),
                    Text(
                      '₦100',
                      textAlign: TextAlign.center,
                      style: robotoRegular.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff050505)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 17),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Color(0xffbf1d2d)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      decrement();
                    });
                  },
                  child: Image.asset(
                    Images.icMinus,
                    width: 12,
                    height: 11,
                  ),
                ),
                SizedBox(width: 15),
                Text(
                  count.toString(),
                  textAlign: TextAlign.center,
                  style: robotoRegular.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color(0xffbf1d2d)),
                ),
                SizedBox(width: 15),
                InkWell(
                  onTap: () {
                    setState(() {
                      counter();
                    });
                  },
                  child: Image.asset(
                    Images.icAdd,
                    width: 12,
                    height: 11,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
