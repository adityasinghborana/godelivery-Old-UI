import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:sixam_mart/grocery/widget/grocery_weight_bottomsheet.dart';
import 'package:sixam_mart/util/images.dart';
import 'package:sixam_mart/util/styles.dart';

class PopularOrderListTile extends StatefulWidget {
  const PopularOrderListTile({Key key}) : super(key: key);

  @override
  State<PopularOrderListTile> createState() => _PopularOrderListTileState();
}

class _PopularOrderListTileState extends State<PopularOrderListTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              padding: EdgeInsets.symmetric(horizontal: 11, vertical: 7),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                  border: Border.all(color: Color(0xff000000))),
              child: Image.asset(Images.imgFruit, width: 58, height: 51)),
          SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Watermelon',
                    textAlign: TextAlign.center,
                    style: robotoRegular.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff0a191e)),
                  ),
                  Text(
                    '(1Kg)',
                    textAlign: TextAlign.center,
                    style: robotoRegular.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff979797)),
                  ),
                ],
              ),
              SizedBox(height: 12),
              Container(
                // color: Colors.grey,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '₦20',
                      textAlign: TextAlign.center,
                      style: robotoRegular.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff050505)),
                    ),
                    SizedBox(width: 50),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Get.bottomSheet(
                              GroceryWeightBottomsheet(),
                              backgroundColor: Colors.transparent,
                              isScrollControlled: true,
                            );
                          },
                          child: Container(
                            height: 30,
                            width: 30,
                            padding: EdgeInsets.all(7),
                            decoration: BoxDecoration(
                                color: Color(0xff0eacd7),
                                borderRadius: BorderRadius.circular(8)),
                            child: Image.asset(
                              Images.icAdd,
                              height: 18,
                              width: 18,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
