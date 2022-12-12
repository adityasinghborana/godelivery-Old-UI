import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart/view/screens/grocery/grocery_details_page.dart';
import 'package:sixam_mart/util/images.dart';
import 'package:sixam_mart/util/styles.dart';
import 'package:sixam_mart/view/screens/chat/chat_screen.dart';
import 'package:sixam_mart/view/screens/chat/conversation_screen.dart';

class GoceryItemListTile extends StatefulWidget {
  final int selectedIndex;
  const GoceryItemListTile({Key key, this.selectedIndex}) : super(key: key);

  @override
  State<GoceryItemListTile> createState() => _GoceryItemListTileState();
}

class _GoceryItemListTileState extends State<GoceryItemListTile> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              Get.to(GroceryDetailsPage(
                selectedIndex: widget.selectedIndex,
              ));
            },
            child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 17, top: 15),
                child: Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Container(
                            height: 166,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage(
                                  Images.imgFavStoreImage,
                                ),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                        top: 7,
                        left: -1,
                        child: Image.asset(
                          Images.imgDiscount,
                          // width: 108,
                          // height: 22,
                        )),
                    Positioned(
                      left: 4,
                      top: 12,
                      child: Text(
                        "50% OFF",
                        style: robotoMedium.copyWith(
                          color: Color(0xffffffff),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Positioned(
                        top: 8, right: 20, child: Image.asset(Images.icLike)),
                    Positioned(
                        left: 7,
                        bottom: 0,
                        child: Image.asset(Images.imgStoreImgBg)),
                    Positioned(
                      right: 20,
                      bottom: 14,
                      child: Text(
                        "20-30 Mins",
                        style: robotoMedium.copyWith(
                          color: Color(0xffffffff),
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    widget.selectedIndex == 1
                        ? Positioned(
                            left: 20,
                            bottom: 14,
                            child: InkWell(
                              onTap: () {
                                Get.to(ChatScreen());
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    Images.icMessag,
                                    width: 21,
                                    height: 21,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    "Chat now",
                                    style: robotoMedium.copyWith(
                                      color: Color(0xffffffff),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ))
                        : SizedBox.shrink()
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Morrisons shop",
                  style: robotoMedium.copyWith(
                    color: Color(0xff09323e),
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  // mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(Images.icRating),
                    SizedBox(width: 2),

                    Text(
                      "4.6 Good",
                      style: robotoMedium.copyWith(
                        color: Color(0xff75bf27),
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(width: 4),
                    Expanded(
                      child: Text(
                        "(120+) • Grocery • Alcohol • Drinks • Dessert",
                        style: robotoMedium.copyWith(
                          color: Color(0xff979797),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    // SizedBox(width: 4),
                    // Container(
                    //   height: 5,
                    //   width: 5,
                    //   decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(10),
                    //       color: Color(0xffc4c4c4)),
                    // ),
                    // SizedBox(width: 5),
                    // Flexible(
                    //   child: Text(
                    //     "Grocery",
                    //     style: robotoMedium.copyWith(
                    //       color: Color(0xff979797),
                    //       fontSize: 14,
                    //       fontWeight: FontWeight.w400,
                    //     ),
                    //   ),
                    // ),
                    // SizedBox(width: 5),
                    // Container(
                    //   height: 5,
                    //   width: 5,
                    //   decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(10),
                    //       color: Color(0xffc4c4c4)),
                    // ),
                    // SizedBox(width: 5),
                    // Flexible(
                    //   child: Text(
                    //     "Alcohol",
                    //     style: robotoMedium.copyWith(
                    //       color: Color(0xff979797),
                    //       fontSize: 14,
                    //       fontWeight: FontWeight.w400,
                    //     ),
                    //   ),
                    // ),
                    // SizedBox(width: 5),
                    // Container(
                    //   height: 5,
                    //   width: 5,
                    //   decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(10),
                    //       color: Color(0xffc4c4c4)),
                    // ),
                    // SizedBox(width: 5),
                    // Flexible(
                    //   child: Text(
                    //     "Drinks",
                    //     style: robotoMedium.copyWith(
                    //       color: Color(0xff979797),
                    //       fontSize: 14,
                    //       fontWeight: FontWeight.w400,
                    //     ),
                    //   ),
                    // ),
                    // SizedBox(width: 5),
                    // Container(
                    //   height: 5,
                    //   width: 5,
                    //   decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(10),
                    //       color: Color(0xffc4c4c4)),
                    // ),
                    // SizedBox(width: 5),
                    // Flexible(
                    //   child: Text(
                    //     "Dessert",
                    //     style: robotoMedium.copyWith(
                    //       color: Color(0xff979797),
                    //       fontSize: 14,
                    //       fontWeight: FontWeight.w400,
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
                SizedBox(height: 7),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "₦5000 Delivery",
                      style: robotoMedium.copyWith(
                        color: Color(0xff979797),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(width: 5),
                    Container(
                      height: 13,
                      width: 2,
                      decoration: BoxDecoration(
                          // borderRadius: BorderRadius.circular(10),
                          color: Color(0xffc4c4c4)),
                    ),
                    SizedBox(width: 5),
                    Text(
                      "2.4 miles away",
                      style: robotoMedium.copyWith(
                        color: Color(0xff979797),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
