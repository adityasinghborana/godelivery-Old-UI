import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart/grocery/widget/grocery_cart_list_tile.dart';
import 'package:sixam_mart/util/styles.dart';
import 'package:sixam_mart/view/screens/order/order_details_screen.dart';

class GroceryCartBottomsheet extends StatefulWidget {
  const GroceryCartBottomsheet({Key key}) : super(key: key);

  @override
  State<GroceryCartBottomsheet> createState() => _GroceryCartBottomsheetState();
}

class _GroceryCartBottomsheetState extends State<GroceryCartBottomsheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 22, vertical: 34),
      // height: 500,
      decoration: BoxDecoration(
          color: Color(0xffffffff),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15), topRight: Radius.circular(15))),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("cart".tr,
                      style: robotoMedium.copyWith(
                        color: Color(0xff0a191e),
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      )),
                  InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(Icons.close))
                ],
              ),
              SizedBox(height: 24),
              SizedBox(
                height: 300,
                child: ListView.builder(
                    itemCount: 10,
                    shrinkWrap: true,
                    itemBuilder: ((context, index) {
                      return GroceryCartListTile();
                    })),
              )
            ],
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text("delivery_free".tr,
                style: robotoMedium.copyWith(
                  color: Color(0xff75bf27),
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                )),
          ),
          SizedBox(height: 7),
          InkWell(
            onTap: () {
              Get.back();
              Get.bottomSheet(OrderDetailsScreen(),
                  backgroundColor: Colors.transparent,
                  isScrollControlled: true);
              // Get.bottomSheet();
            },
            child: Container(
                padding: EdgeInsets.fromLTRB(11, 15, 27, 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0xffbf1d2d)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("total".tr,
                              style: robotoMedium.copyWith(
                                color: Color(0xffffffff),
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                              )),
                          SizedBox(width: 5),
                          Text("₦20",
                              style: robotoMedium.copyWith(
                                color: Color(0xffffffff),
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              )),
                        ],
                      ),
                    ),
                    Text("continue".tr,
                        style: robotoMedium.copyWith(
                          color: Color(0xffffffff),
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        )),
                  ],
                )),
          )
        ],
      ),
    );
  }
}
