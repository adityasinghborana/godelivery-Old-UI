import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart/util/images.dart';
import 'package:sixam_mart/util/styles.dart';

class GroceryCartListTile extends StatefulWidget {
  final int selectedIndex;
  const GroceryCartListTile({Key key, this.selectedIndex}) : super(key: key);

  @override
  State<GroceryCartListTile> createState() => _GroceryCartListTileState();
}

class _GroceryCartListTileState extends State<GroceryCartListTile> {
  int count = 1;
  counter() {
    count++;
  }

  decrement() {
    if (widget.selectedIndex == 1) {
      if (count > 1) {
        count--;
      }
    } else {
      count = 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
          color: Color(0xfff8f8f8), borderRadius: BorderRadius.circular(4)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(Images.imgBanana),
                    SizedBox(width: 20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Banana",
                                style: robotoMedium.copyWith(
                                  color: Color(0xff09323e),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                )),
                            Text("(500gm)",
                                style: robotoMedium.copyWith(
                                  color: Color(0xff717171),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                )),
                          ],
                        ),
                        SizedBox(height: 15),
                        Text("₦10",
                            style: robotoMedium.copyWith(
                              color: Color(0xff050505),
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    decrement();
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(7),
                  decoration: BoxDecoration(
                      color: widget.selectedIndex == 1
                          ? Color(0xffbf1d2d)
                          : Color(0xff0eacd7),
                      borderRadius: BorderRadius.circular(8)),
                  child: Image.asset(
                      widget.selectedIndex == 1
                          ? Images.icMinus
                          : Images.icDelete,
                      color: Color(0xffffffff),
                      height: 16,
                      width: 15),
                ),
              ),
              SizedBox(width: 15),
              Text(count.toString(),
                  style: robotoMedium.copyWith(
                    color: Color(0xff09323e),
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  )),
              SizedBox(width: 15),
              InkWell(
                onTap: () {
                  setState(() {
                    counter();
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(7),
                  decoration: BoxDecoration(
                      color: widget.selectedIndex == 1
                          ? Color(0xffbf1d2d)
                          : Color(0xff0eacd7),
                      borderRadius: BorderRadius.circular(8)),
                  child: Image.asset(
                    Images.icAdd,
                    height: 16,
                    width: 15,
                    color: Color(0xffffffff),
                  ),
                ),
              )
            ],
          ),
          widget.selectedIndex == 1
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 18),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('do_you_want_reminder'.tr,
                            style: robotoMedium.copyWith(
                              color: Color(0xff979797),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            )),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 28, vertical: 8),
                          decoration: BoxDecoration(
                              color: Color(0xff0eacd7),
                              borderRadius: BorderRadius.circular(8)),
                          child: Text('add'.tr,
                              style: robotoMedium.copyWith(
                                color: Color(0xffffffff),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              )),
                        ),
                      ],
                    ),
                  ],
                )
              : SizedBox.shrink()
        ],
      ),
    );
  }
}
