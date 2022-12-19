import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:im_stepper/stepper.dart';
import 'package:sixam_mart/util/images.dart';
import 'package:sixam_mart/util/styles.dart';
import 'package:sixam_mart/view/screens/checkout/payment_screen.dart';
import 'package:sixam_mart/view/screens/packages/arrival_time_bottomsheet.dart';
import 'package:sixam_mart/view/screens/packages/delivery_service_page.dart';
import 'package:sixam_mart/view/screens/packages/drop_off_address_page.dart';
import 'package:sixam_mart/view/screens/packages/package_address_page.dart';
import 'package:sixam_mart/view/screens/packages/pickup_address_page.dart';
import 'package:sixam_mart/view/screens/packages/prohibited_item_bottomsheet.dart';
import 'package:sixam_mart/view/screens/packages/select_weight_bottomsheet.dart';
import 'package:sixam_mart/view/screens/packages/widget/pickup_dialog.dart';
import 'package:sixam_mart/view/screens/packages/select_size_bottomsheet.dart';

class PackagePage extends StatefulWidget {
  final int selectedIndex;
  const PackagePage({Key key, this.selectedIndex}) : super(key: key);

  @override
  State<PackagePage> createState() => _PackagePageState();
}

class _PackagePageState extends State<PackagePage> {
  int selectedIndex = 0;
  // String fragileValue;
  // final fragile = ['Fragile', 'Glass', 'Medical', 'Flower', 'Do not rotate'];
  // String foodOrLiquidValue;
  // final foodOrLiquid = ['Hot food', 'Liquid item'];

  // int count = 1;
  // counter() {
  //   count++;
  // }

  // decrement() {
  //   if (count > 1) {
  //     count--;
  //   }
  // }

  void onBack() {
    setState(() {
      selectedIndex = 3;
      print('selected index-->' + selectedIndex.toString());
    });
  }

  void onIndexUpdate() {
    print('in onUpdate Function');
    setState(() {
      selectedIndex = 1;
      print('selected index-->' + selectedIndex.toString());
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 45),
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
                              'packages'.tr,
                              style: robotoRegular.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff000000)),
                            ),
                          ],
                        ),
                      ),
                      Image.asset(
                        Images.imgSearch,
                        width: 32,
                        height: 32,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40),
                Container(
                    width: double.infinity,
                    // decoration: BoxDecoration(
                    //     color: Color(0xff0eacd7),
                    //     border: Border.all(color: Color(0xfff1f1f3), width: 3),
                    //     borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      children: [
                        DotStepper(
                          activeStep: selectedIndex,
                          dotCount: 4,
                          dotRadius: 10,
                          spacing: 70.00,
                          lineConnectorDecoration: LineConnectorDecoration(
                              linePadding: 1.0, color: Color(0xff979797)),
                          // tappingEnabled: false,
                          indicatorDecoration: IndicatorDecoration(
                              strokeColor: Color(0xff0eacd7),
                              color: Color(0xff0eacd7)),
                          lineConnectorsEnabled: true,
                          fixedDotDecoration: FixedDotDecoration(
                            color: selectedIndex == 3
                                ? Color(0xff0eacd7)
                                : Color(0xff979797),
                          ),
                          onDotTapped: (tappedDotIndex) {
                            setState(() {
                              selectedIndex = tappedDotIndex;
                            });
                          },
                        ),

                        // IconStepper(
                        //   activeStep: selectedIndex,
                        //   direction: Axis.horizontal,
                        //   steppingEnabled: true,
                        //   stepColor: Color(0xff979797),
                        //   activeStepColor: Color(0xff0eacd7),
                        //   lineLength: 80,
                        //   lineColor: Color(0xff979797),
                        //   enableNextPreviousButtons: false,
                        //   stepRadius: 10,
                        //   activeStepBorderColor: Colors.white,
                        //   onStepReached: (value) {
                        //     setState(() {
                        //       selectedIndex = value;
                        //     });
                        //   },
                        //   icons: [
                        //     Icon(Icons.supervised_user_circle,
                        //         color: Colors.grey),
                        //     Icon(Icons.supervised_user_circle,
                        //         color: Colors.grey),
                        //     Icon(Icons.supervised_user_circle,
                        //         color: Colors.grey),
                        //     Icon(Icons.supervised_user_circle,
                        //         color: Colors.grey),
                        //   ],
                        // ),
                      ],
                    )),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("product_details".tr,
                          style: robotoMedium.copyWith(
                            color: selectedIndex == 0 ||
                                    selectedIndex == 1 ||
                                    selectedIndex == 2 ||
                                    selectedIndex == 3
                                ? Color(0xff0eacd7)
                                : Color(0xff979797),
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          )),
                      Text("pickup_address".tr,
                          style: robotoMedium.copyWith(
                            color: selectedIndex == 1 ||
                                    selectedIndex == 2 ||
                                    selectedIndex == 3
                                ? Color(0xff0eacd7)
                                : Color(0xff979797),
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          )),
                      Text("dropoff_address".tr,
                          style: robotoMedium.copyWith(
                            color: selectedIndex == 2 || selectedIndex == 3
                                ? Color(0xff0eacd7)
                                : Color(0xff979797),
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          )),
                      Text("review".tr,
                          style: robotoMedium.copyWith(
                            color: selectedIndex == 3
                                ? Color(0xff0eacd7)
                                : Color(0xff979797),
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          )),
                    ],
                  ),
                ),
                SizedBox(height: 29),
                selectedIndex == 0
                    ? Expanded(
                        child: SizedBox(
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                ProductDetails(),
                              ],
                            ),
                          ),
                        ),
                      )
                    : SizedBox.shrink(),
                selectedIndex == 1
                    ? Expanded(
                        child: SizedBox(
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                PickUpPage(),
                              ],
                            ),
                          ),
                        ),
                      )
                    : SizedBox.shrink(),
                selectedIndex == 2
                    ? Expanded(
                        child: SizedBox(
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                DropOffPage(),
                              ],
                            ),
                          ),
                        ),
                      )
                    : SizedBox.shrink(),
                selectedIndex == 3
                    ? Expanded(
                        child: SizedBox(
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                PackageAddressPage(),
                              ],
                            ),
                          ),
                        ),
                      )
                    : SizedBox.shrink(),
                SizedBox(height: 20),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    blurRadius: 25.0,
                    color: Color(0xff000000).withOpacity(0.12)),
              ],
            ),
            child: Container(
              color: Color(0xffffffff),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, bottom: 24, top: 13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("₦25.98",
                            style: robotoMedium.copyWith(
                              color: Color(0xff09323e),
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            )),
                        SizedBox(height: 6),
                        Text("packages_charge".tr,
                            style: robotoMedium.copyWith(
                              color: Color(0xff979797),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            )),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        print('in click');
                        if (selectedIndex == 0) {
                          showDialog(
                              context: context,
                              builder: ((context) {
                                return PickupDialog(
                                  onUpdate: () {
                                    print('in on update');
                                    onIndexUpdate();
                                  },
                                );
                              }));
                        } else if (selectedIndex == 1) {
                          setState(() {
                            selectedIndex = 2;
                          });
                        } else if (selectedIndex == 2) {
                          Get.to(DeliveryServicePage(
                            onBack: () {
                              onBack();
                            },
                          ));
                        } else if (selectedIndex == 3) {
                          Get.to(PaymentScreen());
                        }
                      },
                      child: Container(
                        width: 123,
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 14),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            color: Color(0xffbf1d2d)),
                        child: Center(
                          child: selectedIndex == 3
                              ? Text("pay_now".tr,
                                  style: robotoMedium.copyWith(
                                    color: Color(0xffffffff),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                  ))
                              : Text("next".tr,
                                  style: robotoMedium.copyWith(
                                    color: Color(0xffffffff),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                  )),
                        ),
                      ),
                    )
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

class ProductDetails extends StatefulWidget {
  const ProductDetails({Key key}) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  String fragileValue;
  final fragile = ['Fragile', 'Glass', 'Medical', 'Flower', 'Do not rotate'];
  String foodOrLiquidValue;
  final foodOrLiquid = ['Hot food', 'Liquid item'];

  int count = 1;
  counter() {
    count++;
  }

  decrement() {
    if (count > 1) {
      count--;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: Color(0xffdedede)),
                  borderRadius: BorderRadius.circular(8)),
              elevation: 5,
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffdedede)),
                    borderRadius: BorderRadius.circular(8)),
                child: TextFormField(
                  decoration: textFieldInputDecoration3.copyWith(
                      enabledBorder:
                          OutlineInputBorder(borderSide: BorderSide.none),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 9, horizontal: 15),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color(0xffdedede).withOpacity(0.25))),
                      hintText: 'name_of_the_item'.tr,
                      hintStyle: TextStyle(
                          fontSize: 12,
                          color: Color(0xff979797),
                          fontWeight: FontWeight.w400)),
                  onSaved: (value) {
                    setState(() {
                      // password = value!.trim();
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Color(0xffdedede)),
                        borderRadius: BorderRadius.circular(8)),
                    elevation: 5,
                    child: InkWell(
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffdedede)),
                            borderRadius: BorderRadius.circular(8)),
                        child: TextFormField(
                          onTap: () {
                            Get.bottomSheet(SelectSizedBottomsheet(),
                                backgroundColor: Colors.transparent,
                                isScrollControlled: true);
                          },
                          decoration: textFieldInputDecoration3.copyWith(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 9, horizontal: 15),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                          Color(0xffdedede).withOpacity(0.25))),
                              hintText: 'select_size'.tr,
                              hintStyle: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff979797),
                                  fontWeight: FontWeight.w400)),
                          onSaved: (value) {
                            setState(() {
                              // password = value!.trim();
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Color(0xffdedede)),
                        borderRadius: BorderRadius.circular(8)),
                    elevation: 5,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffdedede)),
                          borderRadius: BorderRadius.circular(8)),
                      child: TextFormField(
                        onTap: () {
                          Get.bottomSheet(SelectWeightBottomsheet(),
                              backgroundColor: Colors.transparent,
                              isScrollControlled: true);
                        },
                        decoration: textFieldInputDecoration3.copyWith(
                            enabledBorder:
                                OutlineInputBorder(borderSide: BorderSide.none),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 9, horizontal: 15),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color:
                                        Color(0xffdedede).withOpacity(0.25))),
                            hintText: 'select_weight'.tr,
                            hintStyle: TextStyle(
                                fontSize: 12,
                                color: Color(0xff979797),
                                fontWeight: FontWeight.w400)),
                        onSaved: (value) {
                          setState(() {
                            // password = value!.trim();
                          });
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Card(
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: Color(0xffdedede)),
                  borderRadius: BorderRadius.circular(8)),
              elevation: 5,
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffdedede)),
                    borderRadius: BorderRadius.circular(8)),
                child: TextFormField(
                  onTap: () {
                    Get.bottomSheet(ArrivalTimeBottomsheet(),
                        backgroundColor: Colors.transparent,
                        isScrollControlled: true);
                  },
                  decoration: textFieldInputDecoration3.copyWith(
                      enabledBorder:
                          OutlineInputBorder(borderSide: BorderSide.none),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 9, horizontal: 15),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color(0xffdedede).withOpacity(0.25))),
                      hintText: 'schedule_time_date'.tr,
                      hintStyle: TextStyle(
                          fontSize: 12,
                          color: Color(0xff979797),
                          fontWeight: FontWeight.w400)),
                  onSaved: (value) {
                    setState(() {
                      // password = value!.trim();
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 30),
            Card(
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: Color(0xffdedede)),
                  borderRadius: BorderRadius.circular(8)),
              elevation: 5,
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffdedede)),
                    borderRadius: BorderRadius.circular(8)),
                child: TextFormField(
                  decoration: textFieldInputDecoration3.copyWith(
                      enabledBorder:
                          OutlineInputBorder(borderSide: BorderSide.none),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 9, horizontal: 15),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color(0xffdedede).withOpacity(0.25))),
                      hintText: 'select_how_much'.tr,
                      hintStyle: TextStyle(
                          fontSize: 12,
                          color: Color(0xff979797),
                          fontWeight: FontWeight.w400)),
                  onSaved: (value) {
                    setState(() {
                      // password = value!.trim();
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    elevation: 5,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Color(0xffdedede))),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          hint: Text(
                            "fragile?".tr,
                            style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff979797),
                                fontWeight: FontWeight.w400),
                          ),
                          value: fragileValue,
                          style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff979797),
                              fontWeight: FontWeight.w400),
                          iconSize: 30,
                          icon: const Icon(
                            Icons.keyboard_arrow_down_outlined,
                            color: Color(0xff979797),
                          ),
                          isExpanded: true,
                          items: fragile.map(fragileMethod).toList(),
                          onChanged: (value) =>
                              setState(() => fragileValue = value),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    elevation: 5,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Color(0xffdedede))),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          hint: Text(
                            "food_liquid?".tr,
                            style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff979797),
                                fontWeight: FontWeight.w400),
                          ),
                          value: foodOrLiquidValue,
                          style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff979797),
                              fontWeight: FontWeight.w400),
                          iconSize: 30,
                          icon: const Icon(
                            Icons.keyboard_arrow_down_outlined,
                            color: Color(0xff979797),
                          ),
                          isExpanded: true,
                          items: foodOrLiquid.map(foodOrLiquidMethod).toList(),
                          onChanged: (value) =>
                              setState(() => foodOrLiquidValue = value),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            InkWell(
              onTap: () {
                Get.bottomSheet(ProhibitedItemBottomsheet(),
                    backgroundColor: Colors.transparent,
                    isScrollControlled: true);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    Images.icAbout,
                    height: 20,
                    width: 20,
                    color: Color(0xffBF1D2D),
                  ),
                  SizedBox(width: 5),
                  Text(
                    'prohibited_item'.tr,
                    style: TextStyle(
                        fontSize: 14,
                        color: Color(0xffBF1D2D),
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Text(
              'item_quantity'.tr,
              style: TextStyle(
                  fontSize: 14,
                  color: Color(0xff979797),
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 20),
            Center(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 40),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(
                    color: Color(0xffbf1d2d),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                        onTap: () {
                          setState(() {
                            decrement();
                          });
                        },
                        child: Image.asset(
                          Images.icMinus,
                          width: 15,
                          height: 15,
                          color: Color(0xffbf1d2d),
                        )),
                    SizedBox(width: 15),
                    Text(
                      count.toString(),
                      textAlign: TextAlign.center,
                      style: robotoRegular.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffbf1d2d),
                      ),
                    ),
                    SizedBox(width: 15),
                    InkWell(
                      onTap: () {
                        setState(() {
                          counter();
                        });
                      },
                      child: Image.asset(
                        Images.icAdd,
                        width: 12,
                        height: 11,
                        color: Color(0xffbf1d2d),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  DropdownMenuItem<String> fragileMethod(String item) => DropdownMenuItem(
      value: item,
      child: Text(
        item,
      ));
  DropdownMenuItem<String> foodOrLiquidMethod(String item) => DropdownMenuItem(
      value: item,
      child: Text(
        item,
      ));
}
