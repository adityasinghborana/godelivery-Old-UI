import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart/grocery/widget/grocery_weight_list_tile.dart';
import 'package:sixam_mart/util/images.dart';
import 'package:sixam_mart/util/styles.dart';

class GroceryWeightBottomsheet extends StatefulWidget {
  const GroceryWeightBottomsheet({
    Key key,
  }) : super(key: key);

  @override
  State<GroceryWeightBottomsheet> createState() =>
      _GroceryWeightBottomsheetState();
}

class _GroceryWeightBottomsheetState extends State<GroceryWeightBottomsheet> {
  int value;

  List buttonOptions = [
    "1Kgs",
    "2Kgs",
    "500gms",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15), topRight: Radius.circular(15)),
          color: Color(0xffffffff)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(Images.imgWeight),
                      SizedBox(width: 20),
                      Text("choose_weight".tr,
                          style: robotoMedium.copyWith(
                            color: Color(0xff09323e),
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          )),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Icon(
                    Icons.close,
                    color: Color(0xff09323e),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 200,
            child: ListView.builder(
                itemCount: buttonOptions.length,
                shrinkWrap: true,
                itemBuilder: ((context, index) {
                  return
                      // GroceryWeightListTile();
                      Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                          flex: 1,
                          child: RadioListTile(
                            value: index,
                            groupValue: value,
                            activeColor: Color(0xff188962),
                            onChanged: (ind) => setState(() => value = ind),
                            title: Text(
                              buttonOptions[index],
                              style: robotoRegular.copyWith(
                                  fontSize: 14,
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
                })),
          ),
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    blurRadius: 25.0,
                    color: Color(0xff000000).withOpacity(0.25)),
              ],
            ),
            child: Container(
              color: Color(0xffffffff),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Text("2KGS",
                        style: robotoMedium.copyWith(
                          color: Color(0xff979797),
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.shopping_cart_outlined,
                                  color: Color(0xff09323e)),
                              SizedBox(width: 16),
                              Text("2 items",
                                  style: robotoMedium.copyWith(
                                    color: Color(0xff979797),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  )),
                              SizedBox(width: 19),
                              Text("₦ 25.98",
                                  style: robotoMedium.copyWith(
                                    color: Color(0xff188962),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  )),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 9, horizontal: 21),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9),
                                color: Color(0xffbf1d2d)),
                            child: Text("add_item".tr,
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
            ),
          )
        ],
      ),
    );
  }
}
