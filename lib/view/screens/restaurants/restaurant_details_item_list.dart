import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart/util/images.dart';
import 'package:sixam_mart/util/styles.dart';
import 'package:sixam_mart/view/screens/restaurants/restaurant_item_details_page.dart';

class RestaurantDetailsItemList extends StatefulWidget {
  const RestaurantDetailsItemList({Key key}) : super(key: key);

  @override
  State<RestaurantDetailsItemList> createState() =>
      _RestaurantDetailsItemListState();
}

class _RestaurantDetailsItemListState extends State<RestaurantDetailsItemList> {
  int count = 1;
  bool isVisible = false;

  counter() {
    count++;
  }

  decress() {
    if (count > 1) {
      count--;
    } else if (count >= 1) {
      isVisible = false;
    } else if (count == 0) {
      count = 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(RestaurantItemDetailsPage());
      },
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("Set 1",
                                  style: robotoMedium.copyWith(
                                    color: Color(0xff09323e),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                  )),
                              SizedBox(width: 20),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 3),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.orange),
                                child: Text("popular".tr,
                                    style: robotoMedium.copyWith(
                                      color: Color(0xffffffff),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    )),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(
                          "ruyere cheese, sour cream, diced ham, crisp bacon, sauteed mushrooms",
                          style: robotoMedium.copyWith(
                            color: Color(0xff9797979),
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          )),
                    ],
                  ),
                ),
                Image.asset(Images.imgMyOrder)
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("₦ 10",
                    style: robotoMedium.copyWith(
                      color: Color(0xff09323e),
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    )),
                isVisible
                    ? Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(color: Color(0xffbf1d2d))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  decress();
                                });
                              },
                              child: Image.asset(
                                Images.icMinus,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(count.toString(),
                                style: robotoMedium.copyWith(
                                  color: Color(0xffbf1d2d),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                )),
                            SizedBox(width: 6),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  counter();
                                });
                              },
                              child: Icon(
                                Icons.add,
                                size: 20,
                                color: Color(0xffbf1d2d),
                              ),
                            )
                          ],
                        ),
                      )
                    : InkWell(
                        onTap: () {
                          setState(() {
                            isVisible = true;
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 15),
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Color(0xffbf1d2d)),
                          child: Text("add".tr,
                              style: robotoMedium.copyWith(
                                color: Color(0xffffffff),
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              )),
                        ),
                      )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
