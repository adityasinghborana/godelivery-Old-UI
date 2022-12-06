import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart/grocery/widget/grocery_weight_bottomsheet.dart';
import 'package:sixam_mart/util/images.dart';
import 'package:sixam_mart/util/styles.dart';
import 'package:sixam_mart/view/screens/item/item_details_screen.dart';

class GroceryDetailsItemList extends StatefulWidget {
  const GroceryDetailsItemList({Key key}) : super(key: key);

  @override
  State<GroceryDetailsItemList> createState() => _GroceryDetailsItemListState();
}

class _GroceryDetailsItemListState extends State<GroceryDetailsItemList> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(ItemDetailsScreen());
      },
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Color(0xff979797))),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 12, right: 12, top: 12),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(Images.icHeart,
                                  width: 18, height: 16),
                              SizedBox(width: 30),
                              Align(
                                  alignment: Alignment.center,
                                  child: Image.asset(Images.imgFruit,
                                      width: 56, height: 58))
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Center(
                            child: Text("Cherry",
                                textAlign: TextAlign.center,
                                style: robotoMedium.copyWith(
                                  color: Color(0xff09323e),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                )),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text("₦12.99",
                                        style: robotoMedium.copyWith(
                                          color: Color(0xff09323e),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                        )),
                                  ],
                                ),
                              ),
                              Text("500gm",
                                  style: robotoMedium.copyWith(
                                    color: Color(0xff979797),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                  )),
                              Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: Color(0xff000000),
                              )
                            ],
                          ),
                          SizedBox(height: 3),
                          Text("₦12.99",
                              style: robotoMedium.copyWith(
                                decoration: TextDecoration.lineThrough,
                                color: Color(0xff979797),
                                fontSize: 13,
                                fontWeight: FontWeight.w700,
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // SizedBox(height: 10),
              InkWell(
                onTap: () {
                  Get.bottomSheet(
                    GroceryWeightBottomsheet(),
                    backgroundColor: Colors.transparent,
                    isScrollControlled: true,
                  );
                },
                child: Container(
                  height: 38,
                  // padding: EdgeInsets.symmetric(vertical: 19),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xff0eacd7)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add,
                        size: 30,
                        color: Color(0xffffffff),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
