import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:sixam_mart/controller/cart_controller.dart';
import 'package:sixam_mart/controller/item_controller.dart';
import 'package:sixam_mart/controller/splash_controller.dart';
import 'package:sixam_mart/data/model/response/cart_model.dart';
import 'package:sixam_mart/view/screens/grocery/widget/grocery_cart_bottomsheet.dart';
import 'package:sixam_mart/helper/responsive_helper.dart';
import 'package:sixam_mart/util/images.dart';
import 'package:sixam_mart/util/styles.dart';
import 'package:sixam_mart/view/base/custom_snackbar.dart';
import 'package:sixam_mart/view/screens/item/widget/details_app_bar.dart';
import 'package:sixam_mart/view/screens/item/widget/details_web_view.dart';
import 'package:sixam_mart/view/screens/item/widget/item_image_view.dart';
import 'package:sixam_mart/view/screens/order/popular_order_list_tile.dart';

class ItemDetailsScreen extends StatefulWidget {
  final int selectedIndex;
  const ItemDetailsScreen({Key key, this.selectedIndex}) : super(key: key);
  @override
  State<ItemDetailsScreen> createState() => _ItemDetailsScreenState();
}

class _ItemDetailsScreenState extends State<ItemDetailsScreen> {
  int value;

  List buttonOptions = [
    "1Kgs",
    "2Kgs",
    "500gms",
  ];
  int count = 1;
  double _rating = 0.0;
  double initialRating = 2.0;
  final Size size = Get.size;
  GlobalKey<ScaffoldMessengerState> _globalKey = GlobalKey();
  final GlobalKey<DetailsAppBarState> _key = GlobalKey();

  counter() {
    count++;
  }

  decrement() {
    count = 1;
  }

  @override
  void initState() {
    super.initState();

    //Get.find<ItemController>().getProductDetails(widget.item);
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ItemController>(
      builder: (itemController) {
        int _stock = 0;
        CartModel _cartModel;
        double _priceWithAddons = 0;
        // if (itemController.item != null &&
        //     itemController.variationIndex != null) {
        //   List<String> _variationList = [];
        //   // for (int index = 0;
        //   //     index < itemController.item.choiceOptions.length;
        //   //     index++) {
        //   //   _variationList.add(itemController.item.choiceOptions[index]
        //   //       .options[itemController.variationIndex[index]]
        //   //       .replaceAll(' ', ''));
        //   // }
        //   // String variationType = '';
        //   // bool isFirst = true;
        //   // _variationList.forEach((variation) {
        //   //   if (isFirst) {
        //   //     variationType = '$variationType$variation';
        //   //     isFirst = false;
        //   //   } else {
        //   //     variationType = '$variationType-$variation';
        //   //   }
        //   // });

        //   // double price = itemController.item.price;
        //   // Variation _variation;
        //   // _stock = itemController.item.stock;
        //   // for (Variation variation in itemController.item.variations) {
        //   //   if (variation.type == variationType) {
        //   //     price = variation.price;
        //   //     _variation = variation;
        //   //     _stock = variation.stock;
        //   //     break;
        //   //   }
        //   // }

        //   double _discount = (itemController.item.availableDateStarts != null ||
        //           itemController.item.storeDiscount == 0)
        //       ? itemController.item.discount
        //       : itemController.item.storeDiscount;
        //   String _discountType =
        //       (itemController.item.availableDateStarts != null ||
        //               itemController.item.storeDiscount == 0)
        //           ? itemController.item.discountType
        //           : 'percent';
        //   double priceWithDiscount = PriceConverter.convertWithDiscount(
        //       price, _discount, _discountType);
        //   double priceWithQuantity =
        //       priceWithDiscount * itemController.quantity;
        //   double addonsCost = 0;
        //   List<AddOn> _addOnIdList = [];
        //   List<AddOns> _addOnsList = [];
        //   for (int index = 0;
        //       index < itemController.item.addOns.length;
        //       index++) {
        //     if (itemController.addOnActiveList[index]) {
        //       addonsCost = addonsCost +
        //           (itemController.item.addOns[index].price *
        //               itemController.addOnQtyList[index]);
        //       _addOnIdList.add(AddOn(
        //           id: itemController.item.addOns[index].id,
        //           quantity: itemController.addOnQtyList[index]));
        //       _addOnsList.add(itemController.item.addOns[index]);
        //     }
        //   }

        //   _cartModel = CartModel(
        //     price,
        //     priceWithDiscount,
        //     _variation != null ? [_variation] : [],
        //     (price -
        //         PriceConverter.convertWithDiscount(
        //             price, _discount, _discountType)),
        //     itemController.quantity,
        //     _addOnIdList,
        //     _addOnsList,
        //     itemController.item.availableDateStarts != null,
        //     _stock,
        //     itemController.item,
        //   );
        //   _priceWithAddons = priceWithQuantity +
        //       (Get.find<SplashController>()
        //               .configModel
        //               .moduleConfig
        //               .module
        //               .addOn
        //           ? addonsCost
        //           : 0);
        // }

        return Scaffold(
            key: _globalKey,
            // backgroundColor: Theme.of(context).cardColor,
            // appBar: ResponsiveHelper.isDesktop(context)
            //     ? CustomAppBar(title: '')
            //     : DetailsAppBar(key: _key),
            body:
                // (itemController.item != null)
                //     ?
                ResponsiveHelper.isDesktop(context)
                    ? DetailsWebView(
                        cartModel: _cartModel,
                        stock: _stock,
                        priceWithAddOns: _priceWithAddons,
                      )
                    : Column(children: [
                        Expanded(
                            child: Scrollbar(
                          child: SingleChildScrollView(
                              physics: BouncingScrollPhysics(),
                              child: Center(
                                  child: SizedBox(
                                      // width: Dimensions.WEB_MAX_WIDTH,
                                      child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 40),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 30, right: 23),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              InkWell(
                                                  onTap: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: Icon(Icons
                                                      .arrow_back_ios_new)),
                                              SizedBox(width: 20),
                                              Text(
                                                'Banana',
                                                style: robotoRegular.copyWith(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w700,
                                                    color: Color(0xff000000)),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Image.asset(
                                          Images.icRedHeart,
                                          color: Colors.red,
                                          height: 21,
                                          width: 24,
                                        ),
                                        SizedBox(width: 18),
                                        Image.asset(Images.icShare,
                                            height: 17, width: 17)
                                      ],
                                    ),
                                  ),
                                  ItemImageView(),
                                  SizedBox(height: 20),
                                  Container(
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              blurRadius: 25.0,
                                              color: Color(0xff000000)
                                                  .withOpacity(0.25)),
                                        ],
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          topRight: Radius.circular(20),
                                        )),
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 30),
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                          color: Color(0xffffffff),
                                          // Color(0xff000000).withOpacity(0.25),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            topRight: Radius.circular(20),
                                          )),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Ripen at home Bananas',
                                            style: robotoRegular.copyWith(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700,
                                                color: Color(0xff09323e)),
                                          ),
                                          SizedBox(height: 20),
                                          Text(
                                            'For further allergen information please see product at morrisons.com',
                                            style: robotoRegular.copyWith(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xff979797)),
                                          ),
                                          SizedBox(height: 10),
                                          Text(
                                            'Allergen information unavailable',
                                            style: robotoRegular.copyWith(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xff979797)),
                                          ),
                                          SizedBox(height: 30),
                                          widget.selectedIndex == 1
                                              ? Text("medicine_strength".tr,
                                                  style: robotoMedium.copyWith(
                                                    color: Color(0xff09323e),
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w700,
                                                  ))
                                              : Text(
                                                  'choose_weight'.tr,
                                                  style: robotoRegular.copyWith(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: Color(0xff09323e)),
                                                ),
                                          // SizedBox(height: 20),
                                          // Row(
                                          //   mainAxisAlignment:
                                          //       MainAxisAlignment.start,
                                          //   crossAxisAlignment:
                                          //       CrossAxisAlignment.center,
                                          //   children: [
                                          //     Expanded(
                                          //       flex: 1,
                                          //       child: RadioListTile<weight>(
                                          //         title: const Text('2 Kgs'),
                                          //         value: weight.kgs,
                                          //         groupValue: _character,
                                          //         onChanged: (weight value) {
                                          //           setState(() {
                                          //             _character = value;
                                          //           });
                                          //         },
                                          //       ),
                                          //     ),
                                          //     Expanded(
                                          //       child: Row(
                                          //         mainAxisAlignment:
                                          //             MainAxisAlignment.start,
                                          //         crossAxisAlignment:
                                          //             CrossAxisAlignment.start,
                                          //         children: [
                                          //           Text(
                                          //             '₦39'.tr,
                                          //             style: robotoRegular
                                          //                 .copyWith(
                                          //                     fontSize: 16,
                                          //                     fontWeight:
                                          //                         FontWeight
                                          //                             .w700,
                                          //                     color: Color(
                                          //                         0xff09323e)),
                                          //           ),
                                          //           SizedBox(width: 14),
                                          //           Text(
                                          //             '₦39'.tr,
                                          //             style: robotoRegular
                                          //                 .copyWith(
                                          //                     fontSize: 14,
                                          //                     decoration:
                                          //                         TextDecoration
                                          //                             .lineThrough,
                                          //                     fontWeight:
                                          //                         FontWeight
                                          //                             .w700,
                                          //                     color: Color(
                                          //                         0xff979797)),
                                          //           ),
                                          //         ],
                                          //       ),
                                          //     )
                                          //   ],
                                          // ),
                                          // Row(
                                          //   mainAxisAlignment:
                                          //       MainAxisAlignment.start,
                                          //   crossAxisAlignment:
                                          //       CrossAxisAlignment.center,
                                          //   children: [
                                          //     Expanded(
                                          //       flex: 1,
                                          //       child: RadioListTile<weight>(
                                          //         title: const Text('1 kgs'),
                                          //         value: weight.kg,
                                          //         groupValue: _character,
                                          //         onChanged: (weight value) {
                                          //           setState(() {
                                          //             _character = value;
                                          //           });
                                          //         },
                                          //       ),
                                          //     ),
                                          //     Expanded(
                                          //       child: Row(
                                          //         mainAxisAlignment:
                                          //             MainAxisAlignment.start,
                                          //         crossAxisAlignment:
                                          //             CrossAxisAlignment.center,
                                          //         children: [
                                          //           Text(
                                          //             '₦39'.tr,
                                          //             style: robotoRegular
                                          //                 .copyWith(
                                          //                     fontSize: 16,
                                          //                     fontWeight:
                                          //                         FontWeight
                                          //                             .w700,
                                          //                     color: Color(
                                          //                         0xff09323e)),
                                          //           ),
                                          //           SizedBox(width: 14),
                                          //           Text(
                                          //             '₦39'.tr,
                                          //             style: robotoRegular
                                          //                 .copyWith(
                                          //                     fontSize: 14,
                                          //                     decoration:
                                          //                         TextDecoration
                                          //                             .lineThrough,
                                          //                     fontWeight:
                                          //                         FontWeight
                                          //                             .w700,
                                          //                     color: Color(
                                          //                         0xff979797)),
                                          //           )
                                          //         ],
                                          //       ),
                                          //     ),
                                          //   ],
                                          // ),
                                          // Row(
                                          //   mainAxisAlignment:
                                          //       MainAxisAlignment.start,
                                          //   crossAxisAlignment:
                                          //       CrossAxisAlignment.center,
                                          //   children: [
                                          //     Expanded(
                                          //       flex: 1,
                                          //       child: RadioListTile<weight>(
                                          //         title: const Text('500 gms'),
                                          //         value: weight.k,
                                          //         groupValue: _character,
                                          //         onChanged: (weight value) {
                                          //           setState(() {
                                          //             _character = value;
                                          //           });
                                          //         },
                                          //       ),
                                          //     ),
                                          //     Expanded(
                                          //       child: Row(
                                          //         mainAxisAlignment:
                                          //             MainAxisAlignment.start,
                                          //         crossAxisAlignment:
                                          //             CrossAxisAlignment.start,
                                          //         children: [
                                          //           Text(
                                          //             '₦39'.tr,
                                          //             style: robotoRegular
                                          //                 .copyWith(
                                          //                     fontSize: 16,
                                          //                     fontWeight:
                                          //                         FontWeight
                                          //                             .w700,
                                          //                     color: Color(
                                          //                         0xff09323e)),
                                          //           ),
                                          //           SizedBox(width: 14),
                                          //           Text(
                                          //             '₦39'.tr,
                                          //             style: robotoRegular
                                          //                 .copyWith(
                                          //                     fontSize: 14,
                                          //                     decoration:
                                          //                         TextDecoration
                                          //                             .lineThrough,
                                          //                     fontWeight:
                                          //                         FontWeight
                                          //                             .w700,
                                          //                     color: Color(
                                          //                         0xff979797)),
                                          //           ),
                                          //         ],
                                          //       ),
                                          //     )
                                          //   ],
                                          // ),
                                          SizedBox(
                                            height: 100,
                                            child: ListView.builder(
                                                itemCount: 3,
                                                shrinkWrap: true,
                                                itemBuilder: ((context, index) {
                                                  return Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Expanded(
                                                          flex: 1,
                                                          child: RadioListTile(
                                                            value: index,
                                                            groupValue: value,
                                                            activeColor: Color(
                                                                0xff188962),
                                                            onChanged: (ind) =>
                                                                setState(() =>
                                                                    value =
                                                                        ind),
                                                            title: Text(
                                                              buttonOptions[
                                                                  index],
                                                              style: robotoRegular.copyWith(
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700,
                                                                  color: Color(
                                                                      0xff09323e)),
                                                            ),
                                                          )),
                                                      Expanded(
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              '₦39'.tr,
                                                              style: robotoRegular.copyWith(
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700,
                                                                  color: Color(
                                                                      0xff09323e)),
                                                            ),
                                                            SizedBox(width: 14),
                                                            Text(
                                                              '₦39'.tr,
                                                              style: robotoRegular.copyWith(
                                                                  fontSize: 14,
                                                                  decoration:
                                                                      TextDecoration
                                                                          .lineThrough,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700,
                                                                  color: Color(
                                                                      0xff979797)),
                                                            ),
                                                          ],
                                                        ),
                                                      )
                                                    ],
                                                  );

                                                  //     GroceryWeightListTile(
                                                  //   selecteIndex: index,
                                                  // );
                                                })),
                                          ),
                                          SizedBox(height: 35),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    decrement();
                                                  });
                                                },
                                                child: Container(
                                                  padding: EdgeInsets.all(7),
                                                  decoration: BoxDecoration(
                                                      color: Color(0xff0eacd7),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8)),
                                                  child: Image.asset(
                                                      Images.icDelete,
                                                      height: 16,
                                                      width: 15),
                                                ),
                                              ),
                                              SizedBox(width: 35),
                                              Text(count.toString(),
                                                  style: robotoMedium.copyWith(
                                                    color: Color(0xff09323e),
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w700,
                                                  )),
                                              SizedBox(width: 35),
                                              InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    counter();
                                                  });
                                                },
                                                child: Container(
                                                  padding: EdgeInsets.all(7),
                                                  decoration: BoxDecoration(
                                                      color: Color(0xff0eacd7),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8)),
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
                                          SizedBox(height: 30),
                                          widget.selectedIndex == 1
                                              ? Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                        'product_discription'
                                                            .tr,
                                                        style: robotoMedium
                                                            .copyWith(
                                                          color:
                                                              Color(0xff09323e),
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                        )),
                                                    SizedBox(height: 15),
                                                    Text(
                                                        'Panadol Advance works faster and more effectively than standard paracetamol',
                                                        style: robotoMedium
                                                            .copyWith(
                                                          color:
                                                              Color(0xff979797),
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        )),
                                                    SizedBox(height: 30),
                                                    Text('features'.tr,
                                                        style: robotoMedium
                                                            .copyWith(
                                                          color:
                                                              Color(0xff09323e),
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                        )),
                                                    SizedBox(height: 15),
                                                    Text(
                                                        'Panadol Advance works faster and more effectively than standard paracetamol',
                                                        style: robotoMedium
                                                            .copyWith(
                                                          color:
                                                              Color(0xff979797),
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        )),
                                                    SizedBox(height: 30),
                                                    Text(
                                                        'warning_of_restriction'
                                                            .tr,
                                                        style: robotoMedium
                                                            .copyWith(
                                                          color:
                                                              Color(0xff09323e),
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                        )),
                                                    SizedBox(height: 15),
                                                    Text(
                                                        'Panadol Advance works faster and more effectively than standard paracetamol',
                                                        style: robotoMedium
                                                            .copyWith(
                                                          color:
                                                              Color(0xff979797),
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        )),
                                                    SizedBox(height: 30),
                                                  ],
                                                )
                                              : SizedBox.shrink(),

                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text("rate_the_product".tr,
                                                  style: robotoMedium.copyWith(
                                                    color: Color(0xff979797),
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w700,
                                                  )),
                                              SizedBox(width: 10),
                                              Text("(51)",
                                                  style: robotoMedium.copyWith(
                                                    color: Color(0xff979797),
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w700,
                                                  )),
                                            ],
                                          ),
                                          SizedBox(height: 12),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              RatingBar.builder(
                                                minRating: 0,
                                                direction: Axis.horizontal,
                                                allowHalfRating: true,
                                                itemSize: 30,
                                                itemCount: 5,
                                                itemPadding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 1.0),
                                                itemBuilder: (context, _) =>
                                                    const Icon(
                                                  Icons.star,
                                                  color: Colors.amber,
                                                ),
                                                onRatingUpdate: (krating) {
                                                  setState(() {
                                                    _rating = krating;
                                                  });
                                                },
                                              ),
                                              Container(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 31,
                                                    vertical: 8),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            6),
                                                    color: Color(0xffbf1d2d)),
                                                child: Text("rate_it".tr,
                                                    style:
                                                        robotoMedium.copyWith(
                                                      color: Color(0xffffffff),
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    )),
                                              )
                                            ],
                                          ),
                                          SizedBox(height: 36),
                                          Text("related_products".tr,
                                              style: robotoMedium.copyWith(
                                                color: Color(0xff09323e),
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700,
                                              )),
                                          SizedBox(height: 15),
                                          SizedBox(
                                            height: 100,
                                            child: ListView.builder(
                                                scrollDirection:
                                                    Axis.horizontal,
                                                itemCount: 5,
                                                shrinkWrap: true,
                                                itemBuilder: ((context, index) {
                                                  return PopularOrderListTile();
                                                })),
                                          ),

                                          widget.selectedIndex == 0
                                              ? InkWell(
                                                  onTap: () {
                                                    Get.bottomSheet(
                                                        GroceryCartBottomsheet(
                                                          selectedIndex: widget
                                                              .selectedIndex,
                                                        ),
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        isScrollControlled:
                                                            true);
                                                  },
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 44),
                                                    child: Container(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                11, 15, 27, 15),
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5),
                                                            color: Color(
                                                                0xffbf1d2d)),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Expanded(
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Text(
                                                                      "total"
                                                                          .tr,
                                                                      style: robotoMedium
                                                                          .copyWith(
                                                                        color: Color(
                                                                            0xffffffff),
                                                                        fontSize:
                                                                            12,
                                                                        fontWeight:
                                                                            FontWeight.w700,
                                                                      )),
                                                                  SizedBox(
                                                                      width: 5),
                                                                  Text("₦20",
                                                                      style: robotoMedium
                                                                          .copyWith(
                                                                        color: Color(
                                                                            0xffffffff),
                                                                        fontSize:
                                                                            16,
                                                                        fontWeight:
                                                                            FontWeight.w700,
                                                                      )),
                                                                ],
                                                              ),
                                                            ),
                                                            Text("continue".tr,
                                                                style:
                                                                    robotoMedium
                                                                        .copyWith(
                                                                  color: Color(
                                                                      0xffffffff),
                                                                  fontSize: 12,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700,
                                                                )),
                                                          ],
                                                        )),
                                                  ),
                                                )
                                              : SizedBox.shrink()

                                          // SizedBox(height: 50)
                                        ],
                                      ),
                                    ),
                                  ),
                                  widget.selectedIndex == 1
                                      ? Container(
                                          decoration: BoxDecoration(boxShadow: [
                                            BoxShadow(
                                                blurRadius: 25.0,
                                                color: Color(0xff000000)
                                                    .withOpacity(0.12))
                                          ]),
                                          child: Container(
                                            color: Color(0xffffffff),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 18,
                                                      vertical: 19),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Expanded(
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Text(
                                                                    "subtotal"
                                                                        .tr,
                                                                    style: robotoMedium
                                                                        .copyWith(
                                                                      color: Color(
                                                                          0xff979797),
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                    )),
                                                                SizedBox(
                                                                    width: 11),
                                                                Text("₦ 25.98",
                                                                    style: robotoMedium
                                                                        .copyWith(
                                                                      color: Color(
                                                                          0xff09323e),
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w700,
                                                                    )),
                                                              ],
                                                            ),
                                                            SizedBox(height: 9),
                                                            Text(
                                                                "delivery_free"
                                                                    .tr,
                                                                style:
                                                                    robotoMedium
                                                                        .copyWith(
                                                                  color: Color(
                                                                      0xff75bf27),
                                                                  fontSize: 12,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700,
                                                                )),
                                                          ],
                                                        ),
                                                      ),
                                                      InkWell(
                                                        onTap: () {
                                                          Get.bottomSheet(
                                                              GroceryCartBottomsheet(
                                                                  selectedIndex:
                                                                      widget
                                                                          .selectedIndex),
                                                              backgroundColor:
                                                                  Colors
                                                                      .transparent,
                                                              isScrollControlled:
                                                                  true);
                                                        },
                                                        child: Container(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  vertical: 10,
                                                                  horizontal:
                                                                      14),
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5),
                                                              color: Color(
                                                                  0xffbf1d2d)),
                                                          child: Text(
                                                              "pay_now".tr,
                                                              style:
                                                                  robotoMedium
                                                                      .copyWith(
                                                                color: Color(
                                                                    0xffffffff),
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                              )),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                      : SizedBox.shrink()

                                  // ItemTitleView(
                                  //   item: itemController.item,
                                  //   //inStorePage: widget.inStorePage
                                  // ),
                                  // Divider(height: 20, thickness: 2),

                                  // Variation
                                  // ListView.builder(
                                  //   shrinkWrap: true,
                                  //   itemCount: itemController
                                  //       .item.choiceOptions.length,
                                  //   physics:
                                  //       NeverScrollableScrollPhysics(),
                                  //   itemBuilder: (context, index) {
                                  //     return Column(
                                  //         crossAxisAlignment:
                                  //             CrossAxisAlignment.start,
                                  //         children: [
                                  //           Text(
                                  //               itemController
                                  //                   .item
                                  //                   .choiceOptions[
                                  //                       index]
                                  //                   .title,
                                  //               style: robotoMedium.copyWith(
                                  //                   fontSize: Dimensions
                                  //                       .fontSizeLarge)),
                                  //           SizedBox(
                                  //               height: Dimensions
                                  //                   .PADDING_SIZE_EXTRA_SMALL),
                                  //           GridView.builder(
                                  //             gridDelegate:
                                  //                 SliverGridDelegateWithFixedCrossAxisCount(
                                  //               crossAxisCount: 3,
                                  //               crossAxisSpacing: 20,
                                  //               mainAxisSpacing: 10,
                                  //               childAspectRatio:
                                  //                   (1 / 0.25),
                                  //             ),
                                  //             shrinkWrap: true,
                                  //             physics:
                                  //                 NeverScrollableScrollPhysics(),
                                  //             itemCount: itemController
                                  //                 .item
                                  //                 .choiceOptions[index]
                                  //                 .options
                                  //                 .length,
                                  //             itemBuilder:
                                  //                 (context, i) {
                                  //               return InkWell(
                                  //                 onTap: () {
                                  //                   itemController
                                  //                       .setCartVariationIndex(
                                  //                           index,
                                  //                           i,
                                  //                           itemController
                                  //                               .item);
                                  //                 },
                                  //                 child: Container(
                                  //                   alignment: Alignment
                                  //                       .center,
                                  //                   padding: EdgeInsets
                                  //                       .symmetric(
                                  //                           horizontal:
                                  //                               Dimensions
                                  //                                   .PADDING_SIZE_EXTRA_SMALL),
                                  //                   decoration:
                                  //                       BoxDecoration(
                                  //                     color: itemController
                                  //                                     .variationIndex[
                                  //                                 index] !=
                                  //                             i
                                  //                         ? Theme.of(
                                  //                                 context)
                                  //                             .disabledColor
                                  //                         : Theme.of(
                                  //                                 context)
                                  //                             .primaryColor,
                                  //                     borderRadius:
                                  //                         BorderRadius
                                  //                             .circular(
                                  //                                 5),
                                  //                     border: itemController.variationIndex[index] !=
                                  //                             i
                                  //                         ? Border.all(
                                  //                             color: Theme.of(
                                  //                                     context)
                                  //                                 .disabledColor,
                                  //                             width: 2)
                                  //                         : null,
                                  //                   ),
                                  //                   child: Text(
                                  //                     itemController
                                  //                         .item
                                  //                         .choiceOptions[
                                  //                             index]
                                  //                         .options[i]
                                  //                         .trim(),
                                  //                     maxLines: 1,
                                  //                     overflow:
                                  //                         TextOverflow
                                  //                             .ellipsis,
                                  //                     style:
                                  //                         robotoRegular
                                  //                             .copyWith(
                                  //                       color: itemController.variationIndex[
                                  //                                   index] !=
                                  //                               i
                                  //                           ? Colors
                                  //                               .black
                                  //                           : Colors
                                  //                               .white,
                                  //                     ),
                                  //                   ),
                                  //                 ),
                                  //               );
                                  //             },
                                  //           ),
                                  //           SizedBox(
                                  //               height: index !=
                                  //                       itemController
                                  //                               .item
                                  //                               .choiceOptions
                                  //                               .length -
                                  //                           1
                                  //                   ? Dimensions
                                  //                       .PADDING_SIZE_LARGE
                                  //                   : 0),
                                  //         ]);
                                  //   },
                                  // ),
                                  // itemController.item.choiceOptions
                                  //             .length >
                                  //         0
                                  //     ? SizedBox(
                                  //         height: Dimensions
                                  //             .PADDING_SIZE_LARGE)
                                  //     : SizedBox(),

                                  // // Quantity
                                  // Row(children: [
                                  //   Text('quantity'.tr,
                                  //       style: robotoMedium.copyWith(
                                  //           fontSize: Dimensions
                                  //               .fontSizeLarge)),
                                  //   Expanded(child: SizedBox()),
                                  //   Container(
                                  //     decoration: BoxDecoration(
                                  //         color: Theme.of(context)
                                  //             .disabledColor,
                                  //         borderRadius:
                                  //             BorderRadius.circular(5)),
                                  //     child: Row(children: [
                                  //       InkWell(
                                  //         onTap: () {
                                  //           if (itemController
                                  //                   .cartIndex !=
                                  //               -1) {
                                  //             if (Get.find<
                                  //                         CartController>()
                                  //                     .cartList[
                                  //                         itemController
                                  //                             .cartIndex]
                                  //                     .quantity >
                                  //                 1) {
                                  //               Get.find<
                                  //                       CartController>()
                                  //                   .setQuantity(
                                  //                       false,
                                  //                       itemController
                                  //                           .cartIndex,
                                  //                       _stock);
                                  //             }
                                  //           } else {
                                  //             if (itemController
                                  //                     .quantity >
                                  //                 1) {
                                  //               itemController
                                  //                   .setQuantity(
                                  //                       false, _stock);
                                  //             }
                                  //           }
                                  //         },
                                  //         child: Padding(
                                  //           padding: EdgeInsets.symmetric(
                                  //               horizontal: Dimensions
                                  //                   .PADDING_SIZE_SMALL,
                                  //               vertical: Dimensions
                                  //                   .PADDING_SIZE_EXTRA_SMALL),
                                  //           child: Icon(Icons.remove,
                                  //               size: 20),
                                  //         ),
                                  //       ),
                                  //       GetBuilder<CartController>(
                                  //           builder: (cartController) {
                                  //         return Text(
                                  //           itemController.cartIndex !=
                                  //                   -1
                                  //               ? cartController
                                  //                   .cartList[
                                  //                       itemController
                                  //                           .cartIndex]
                                  //                   .quantity
                                  //                   .toString()
                                  //               : itemController
                                  //                   .quantity
                                  //                   .toString(),
                                  //           style: robotoMedium.copyWith(
                                  //               fontSize: Dimensions
                                  //                   .fontSizeExtraLarge),
                                  //         );
                                  //       }),
                                  //       InkWell(
                                  //         onTap: () => itemController
                                  //                     .cartIndex !=
                                  //                 -1
                                  //             ? Get.find<
                                  //                     CartController>()
                                  //                 .setQuantity(
                                  //                     true,
                                  //                     itemController
                                  //                         .cartIndex,
                                  //                     _stock)
                                  //             : itemController
                                  //                 .setQuantity(
                                  //                     true, _stock),
                                  //         child: Padding(
                                  //           padding: EdgeInsets.symmetric(
                                  //               horizontal: Dimensions
                                  //                   .PADDING_SIZE_SMALL,
                                  //               vertical: Dimensions
                                  //                   .PADDING_SIZE_EXTRA_SMALL),
                                  //           child: Icon(Icons.add,
                                  //               size: 20),
                                  //         ),
                                  //       ),
                                  //     ]),
                                  //   ),
                                  // ]),
                                  // SizedBox(
                                  //     height: Dimensions
                                  //         .PADDING_SIZE_LARGE),

                                  // Row(children: [
                                  //   Text('${'total_amount'.tr}:',
                                  //       style: robotoMedium.copyWith(
                                  //           fontSize: Dimensions
                                  //               .fontSizeLarge)),
                                  //   SizedBox(
                                  //       width: Dimensions
                                  //           .PADDING_SIZE_EXTRA_SMALL),
                                  //   Text(
                                  //       PriceConverter.convertPrice(
                                  //           _priceWithAddons ?? 0.0),
                                  //       style: robotoBold.copyWith(
                                  //         color: Theme.of(context)
                                  //             .primaryColor,
                                  //         fontSize:
                                  //             Dimensions.fontSizeLarge,
                                  //       )),
                                  // ]),
                                  // SizedBox(
                                  //     height: Dimensions
                                  //         .PADDING_SIZE_EXTRA_LARGE),

                                  // (itemController.item.description !=
                                  //             null &&
                                  //         itemController.item
                                  //             .description.isNotEmpty)
                                  //     ? Column(
                                  //         crossAxisAlignment:
                                  //             CrossAxisAlignment.start,
                                  //         children: [
                                  //           Text('description'.tr,
                                  //               style: robotoMedium),
                                  //           SizedBox(
                                  //               height: Dimensions
                                  //                   .PADDING_SIZE_EXTRA_SMALL),
                                  //           Text(
                                  //               itemController
                                  //                   .item.description,
                                  //               style: robotoRegular),
                                  //           SizedBox(
                                  //               height: Dimensions
                                  //                   .PADDING_SIZE_LARGE),
                                  //         ],
                                  //       )
                                  //     : SizedBox(),
                                ],
                              )))),
                        )),
                        // Container(
                        //   width: 1170,
                        //   padding:
                        //       EdgeInsets.all(Dimensions.PADDING_SIZE_SMALL),
                        //   child: CustomButton(
                        //     buttonText: (Get.find<SplashController>()
                        //                 .configModel
                        //                 .moduleConfig
                        //                 .module
                        //                 .stock &&
                        //             _stock <= 0)
                        //         ? 'out_of_stock'.tr
                        //         : itemController.item.availableDateStarts !=
                        //                 null
                        //             ? 'order_now'.tr
                        //             : itemController.cartIndex != -1
                        //                 ? 'update_in_cart'.tr
                        //                 : 'add_to_cart'.tr,
                        //     onPressed: (!Get.find<SplashController>()
                        //                 .configModel
                        //                 .moduleConfig
                        //                 .module
                        //                 .stock ||
                        //             _stock > 0)
                        //         ? () {
                        //             if (!Get.find<SplashController>()
                        //                     .configModel
                        //                     .moduleConfig
                        //                     .module
                        //                     .stock ||
                        //                 _stock > 0) {
                        //               if (itemController
                        //                       .item.availableDateStarts !=
                        //                   null) {
                        //                 Get.toNamed(
                        //                     RouteHelper.getCheckoutRoute(
                        //                         'campaign'),
                        //                     arguments: CheckoutScreen(
                        //                       fromCart: false,
                        //                       cartList: [_cartModel],
                        //                     ));
                        //               } else {
                        //                 if (Get.find<CartController>()
                        //                     .existAnotherStoreItem(
                        //                         _cartModel.item.storeId)) {
                        //                   Get.dialog(
                        //                       ConfirmationDialog(
                        //                         icon: Images.warning,
                        //                         title:
                        //                             'are_you_sure_to_reset'.tr,
                        //                         description: Get.find<
                        //                                     SplashController>()
                        //                                 .configModel
                        //                                 .moduleConfig
                        //                                 .module
                        //                                 .showRestaurantText
                        //                             ? 'if_you_continue'.tr
                        //                             : 'if_you_continue_without_another_store'
                        //                                 .tr,
                        //                         onYesPressed: () {
                        //                           Get.back();
                        //                           Get.find<CartController>()
                        //                               .removeAllAndAddToCart(
                        //                                   _cartModel);
                        //                           showCartSnackBar(context);
                        //                         },
                        //                       ),
                        //                       barrierDismissible: false);
                        //                 } else {
                        //                   if (itemController.cartIndex == -1) {
                        //                     Get.find<CartController>()
                        //                         .addToCart(_cartModel,
                        //                             itemController.cartIndex);
                        //                   }
                        //                   _key.currentState.shake();
                        //                   showCartSnackBar(context);
                        //                 }
                        //               }
                        //             }
                        //           }
                        //         : null,
                        //   ),
                        // ),
                      ])
            // : Center(child: CircularProgressIndicator()),
            );
      },
    );
  }
}

class QuantityButton extends StatelessWidget {
  final bool isIncrement;
  final int quantity;
  final bool isCartWidget;
  final int stock;
  final bool isExistInCart;
  final int cartIndex;
  QuantityButton({
    @required this.isIncrement,
    @required this.quantity,
    @required this.stock,
    @required this.isExistInCart,
    @required this.cartIndex,
    this.isCartWidget = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (isExistInCart) {
          if (!isIncrement && quantity > 1) {
            Get.find<CartController>().setQuantity(false, cartIndex, stock);
          } else if (isIncrement) {
            if (quantity < stock ||
                !Get.find<SplashController>()
                    .configModel
                    .moduleConfig
                    .module
                    .stock) {
              Get.find<CartController>().setQuantity(true, cartIndex, stock);
            } else {
              showCustomSnackBar('out_of_stock'.tr);
            }
          }
        } else {
          if (!isIncrement && quantity > 1) {
            Get.find<ItemController>().setQuantity(false, stock);
          } else if (isIncrement) {
            if (quantity < stock ||
                !Get.find<SplashController>()
                    .configModel
                    .moduleConfig
                    .module
                    .stock) {
              Get.find<ItemController>().setQuantity(true, stock);
            } else {
              showCustomSnackBar('out_of_stock'.tr);
            }
          }
        }
      },
      child: Container(
        // padding: EdgeInsets.all(3),
        height: 50, width: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Theme.of(context).primaryColor),
        child: Center(
          child: Icon(
            isIncrement ? Icons.add : Icons.remove,
            color: isIncrement
                ? Colors.white
                : quantity > 1
                    ? Colors.white
                    : Colors.white,
            size: isCartWidget ? 26 : 20,
          ),
        ),
      ),
    );
  }
}
