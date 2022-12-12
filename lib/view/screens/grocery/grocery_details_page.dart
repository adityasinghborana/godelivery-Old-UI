import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart/view/screens/grocery/grocery_details_category_list.dart';
import 'package:sixam_mart/view/screens/grocery/grocery_details_item_list.dart';
import 'package:sixam_mart/view/screens/grocery/widget/grocery_cart_bottomsheet.dart';
import 'package:sixam_mart/util/images.dart';
import 'package:sixam_mart/util/styles.dart';

class GroceryDetailsPage extends StatefulWidget {
  final int selectedIndex;
  const GroceryDetailsPage({Key key, this.selectedIndex}) : super(key: key);

  @override
  State<GroceryDetailsPage> createState() => _GroceryDetailsPageState();
}

class _GroceryDetailsPageState extends State<GroceryDetailsPage> {
  bool isDelivered = false;
  bool pikedUp = false;
  bool isSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  // fit: StackFit.loose,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 210,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                Images.icGroceryDetails,
                              ))),
                    ),
                    Positioned(
                      top: 50,
                      left: 20,
                      child: InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Image.asset(
                          Images.icBackArrow,
                          height: 32,
                          width: 32,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 45,
                      left: 65,
                      right: 65,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: TextFormField(
                          // controller: _emailController,
                          decoration: textFieldInputDecoration.copyWith(
                              prefixIcon: Icon(
                                Icons.search,
                                color: Color(0xff979797),
                              ),
                              hintText: 'search_by_item'.tr,
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 15),
                              hintStyle: TextStyle(color: Color(0xff979797))),
                          // validator: (value) {
                          //   if (value.isEmpty) {
                          //     // print('value empty');
                          //     return "enter_your_first_name".tr;
                          //   } else {
                          //     return null;
                          //   }
                          // },
                          onSaved: (value) {
                            setState(() {
                              // _emailController.text = value;
                            });
                          },
                        ),
                      ),
                    ),
                    Positioned(
                        top: 50,
                        right: 20,
                        child: Image.asset(
                          Images.icShere,
                          height: 32,
                          width: 32,
                        )),
                    Positioned(
                        bottom: 18,
                        right: 20,
                        child: Image.asset(Images.imgStoreHeart)),
                    Positioned(
                        bottom: 18,
                        left: 0,
                        child: Image.asset(Images.imgDiscount)),
                    Positioned(
                      left: 4,
                      bottom: 23,
                      child: Text(
                        "50% OFF",
                        style: robotoMedium.copyWith(
                          color: Color(0xffffffff),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Morrisons Shop",
                                    style: robotoMedium.copyWith(
                                      color: Color(0xff09323e),
                                      fontSize: 24,
                                      fontWeight: FontWeight.w700,
                                    )),
                                SizedBox(height: 13),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text("2.4 Km",
                                        style: robotoMedium.copyWith(
                                          color: Color(0xff09323e),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        )),
                                    SizedBox(width: 5),
                                    Container(
                                      height: 5,
                                      width: 5,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Color(0xffc4c4c4)),
                                    ),
                                    SizedBox(width: 5),
                                    Text("20-30 Mins",
                                        style: robotoMedium.copyWith(
                                          color: Color(0xff09323e),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        )),
                                    SizedBox(width: 5),
                                    Container(
                                      height: 5,
                                      width: 5,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Color(0xffc4c4c4)),
                                    ),
                                    SizedBox(width: 5),
                                    Text("Closes at 15:00",
                                        style: robotoMedium.copyWith(
                                          color: Color(0xff09323e),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        )),
                                  ],
                                ),
                                SizedBox(height: 5),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text("Grocery",
                                        style: robotoMedium.copyWith(
                                          color: Color(0xff979797),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        )),
                                    SizedBox(width: 5),
                                    Container(
                                      height: 5,
                                      width: 5,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Color(0xffc4c4c4)),
                                    ),
                                    SizedBox(width: 5),
                                    Text("Alcohol",
                                        style: robotoMedium.copyWith(
                                          color: Color(0xff979797),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        )),
                                    SizedBox(width: 5),
                                    Container(
                                      height: 5,
                                      width: 5,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Color(0xffc4c4c4)),
                                    ),
                                    SizedBox(width: 5),
                                    Text("Drinks",
                                        style: robotoMedium.copyWith(
                                          color: Color(0xff979797),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        )),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Card(
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6)),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 5,
                                      horizontal: 12,
                                    ),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(6),
                                          topRight: Radius.circular(6),
                                        ),
                                        color: Colors.green),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text("4.6",
                                            style: robotoMedium.copyWith(
                                              color: Color(0xffffffff),
                                              fontSize: 15,
                                              fontWeight: FontWeight.w700,
                                            )),
                                        SizedBox(width: 5),
                                        Image.asset(
                                          Images.icStar,
                                          height: 13,
                                          width: 13,
                                          color: Color(0xffffffff),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 5,
                                    ),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(6),
                                          bottomLeft: Radius.circular(6),
                                        ),
                                        color: Color(0xffffffff)),
                                    child: Text("12K Reviews",
                                        style: robotoMedium.copyWith(
                                          color: Color(0xff979797),
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                        )),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 5),
                      RichText(
                        text: TextSpan(
                            text:
                                "Lorem ipsum dolor sit amet, consectecture adipisicing elit. Amet tellus pharetra molestie sed ",
                            style: robotoMedium.copyWith(
                              color: Color(0xff979797),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                            children: [
                              TextSpan(
                                text: "see_more".tr,
                                style: robotoMedium.copyWith(
                                  color: Color(0xff0eacd7),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                              )
                            ]),
                      ),
                      SizedBox(height: 18),
                      widget.selectedIndex == 1
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      isDelivered = !isDelivered;
                                    });
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 13, vertical: 6),
                                    decoration: BoxDecoration(
                                        color: isDelivered
                                            ? Color(0xff0eacd7)
                                            : Colors.transparent,
                                        borderRadius: BorderRadius.circular(6)),
                                    child: Text("chat".tr.toUpperCase(),
                                        style: robotoMedium.copyWith(
                                          color: isDelivered
                                              ? Color(0xffffffff)
                                              : Color(0xff0eacd7),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700,
                                        )),
                                  ),
                                ),
                                SizedBox(width: 30),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      pikedUp = !pikedUp;
                                    });
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 13, vertical: 6),
                                    decoration: BoxDecoration(
                                        color: pikedUp
                                            ? Color(0xff0eacd7)
                                            : Colors.transparent,
                                        borderRadius: BorderRadius.circular(6)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          Images.icCallPharmacy,
                                          color: pikedUp
                                              ? Color(0xffffffff)
                                              : Color(0xff0eacd7),
                                        ),
                                        SizedBox(width: 10),
                                        Text("call_me".tr.toUpperCase(),
                                            style: robotoMedium.copyWith(
                                              color: pikedUp
                                                  ? Color(0xffffffff)
                                                  : Color(0xff0eacd7),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700,
                                            )),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      isDelivered = !isDelivered;
                                    });
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 13, vertical: 6),
                                    decoration: BoxDecoration(
                                        color: isDelivered
                                            ? Color(0xffbf1d2d)
                                            : Colors.transparent,
                                        borderRadius: BorderRadius.circular(6)),
                                    child: Text("delivery".tr,
                                        style: robotoMedium.copyWith(
                                          color: isDelivered
                                              ? Color(0xffffffff)
                                              : Color(0xff979797),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700,
                                        )),
                                  ),
                                ),
                                SizedBox(width: 30),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      pikedUp = !pikedUp;
                                    });
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 13, vertical: 6),
                                    decoration: BoxDecoration(
                                        color: pikedUp
                                            ? Color(0xffbf1d2d)
                                            : Colors.transparent,
                                        borderRadius: BorderRadius.circular(6)),
                                    child: Text("pickup".tr,
                                        style: robotoMedium.copyWith(
                                          color: pikedUp
                                              ? Color(0xffffffff)
                                              : Color(0xff979797),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700,
                                        )),
                                  ),
                                ),
                              ],
                            ),
                      SizedBox(height: 30),
                      Container(
                        height: 30,
                        color: Color(0xfff9fbfa),
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 15,
                            itemBuilder: ((context, index) {
                              return GroceryDetailsCatedoryList();
                            })),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("recommended ".tr,
                                    style: robotoMedium.copyWith(
                                      color: Color(0xff09323e),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                    )),
                                Text("(25)",
                                    style: robotoMedium.copyWith(
                                      color: Color(0xff09323e),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                    )),
                              ],
                            ),
                          ),
                          Text("veg_only".tr,
                              style: robotoMedium.copyWith(
                                color: Color(0xff979797),
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                              )),
                          Transform.scale(
                            scale: 0.6,
                            child: CupertinoSwitch(
                              thumbColor: Color(0xffffffff),
                              trackColor: Color(0xff979797).withOpacity(0.6),
                              activeColor: Color(0xff979797),
                              value: isSwitch,
                              onChanged: (value) {
                                setState(() {
                                  isSwitch = value;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 300,
                        child: GridView.builder(
                            //physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            gridDelegate:
                                SliverGridDelegateWithMaxCrossAxisExtent(
                                    maxCrossAxisExtent: 200,
                                    childAspectRatio: 2 / 3,
                                    crossAxisSpacing: 20,
                                    mainAxisSpacing: 20),
                            itemCount: 10,
                            itemBuilder: ((context, index) {
                              return GroceryDetailsItemList(
                                selectedIndex: widget.selectedIndex,
                              );
                            })),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
              child: Row(
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
                      Get.bottomSheet(
                          GroceryCartBottomsheet(
                              selectedIndex: widget.selectedIndex),
                          backgroundColor: Colors.transparent,
                          isScrollControlled: true);
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 9, horizontal: 21),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          color: Color(0xffbf1d2d)),
                      child: Text("view_cart".tr,
                          style: robotoMedium.copyWith(
                            color: Color(0xffffffff),
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          )),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
