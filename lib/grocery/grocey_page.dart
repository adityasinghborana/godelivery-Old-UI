import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:sixam_mart/grocery/grocery_category_list_tile.dart';
import 'package:sixam_mart/grocery/grocery_item_list_tile.dart';
import 'package:sixam_mart/util/images.dart';
import 'package:sixam_mart/util/styles.dart';

class GroceryPage extends StatefulWidget {
  const GroceryPage({Key key}) : super(key: key);

  @override
  State<GroceryPage> createState() => _GroceryPageState();
}

class _GroceryPageState extends State<GroceryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(Icons.arrow_back_ios_new)),
                        SizedBox(width: 20),
                        Text(
                          'grocery'.tr,
                          style: robotoRegular.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff000000)),
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    Images.icSearch,
                    width: 32,
                    height: 32,
                  ),
                  SizedBox(width: 23),
                  Icon(
                    Icons.shopping_cart,
                    size: 25,
                    color: Colors.grey,
                  )
                ],
              ),
            ),
            SizedBox(height: 23),
            Padding(
              padding: const EdgeInsets.only(left: 19),
              child: SingleChildScrollView(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border:
                              Border.all(width: 1, color: Color(0xff979797))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Short by',
                            style: robotoRegular.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff979797)),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down_outlined,
                            color: Color(0xff979797),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 46,
                        child: Center(
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 5,
                              shrinkWrap: true,
                              //physics: NeverScrollableScrollPhysics(),
                              itemBuilder: ((context, index) {
                                return GroceryCategoryListTile();
                              })),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Divider(
              thickness: 4,
            ),
            // SizedBox(height: 30),
            SizedBox(
              height: 800,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 10,
                        itemBuilder: ((context, index) {
                          return GoceryItemListTile();
                        })),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
