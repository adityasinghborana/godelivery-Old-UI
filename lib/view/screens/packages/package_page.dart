import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart/util/images.dart';
import 'package:sixam_mart/util/styles.dart';
import 'package:sixam_mart/view/screens/packages/select_weight_bottomsheet.dart';
import 'package:sixam_mart/view/screens/packages/widget/pickup_dialog.dart';
import 'package:sixam_mart/view/screens/packages/select_size_bottomsheet.dart';

class PackagePage extends StatefulWidget {
  const PackagePage({Key key}) : super(key: key);

  @override
  State<PackagePage> createState() => _PackagePageState();
}

class _PackagePageState extends State<PackagePage> {
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
    return Column(
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color(0xffa3a3a3), width: 3),
                                borderRadius: BorderRadius.circular(12)),
                          ),
                          // DottedLine(
                          //   direction: Axis.horizontal,
                          //   lineLength: 40,
                          //   lineThickness: 1.0,
                          //   dashLength: 4.0,
                          //   dashColor: Colors.black,
                          //   //dashGradient: [Colors.red, Colors.blue],
                          //   dashRadius: 0.0,
                          //   dashGapLength: 4.0,
                          //   dashGapColor: Colors.transparent,
                          //   // dashGapGradient: [Colors.red, Colors.blue],
                          //   dashGapRadius: 0.0,
                          // )
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(
                        'product_details'.tr,
                        style: robotoRegular.copyWith(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff979797)),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Color(0xffa3a3a3), width: 3),
                            borderRadius: BorderRadius.circular(12)),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'pickup_address'.tr,
                        style: robotoRegular.copyWith(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff979797)),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Color(0xffa3a3a3), width: 3),
                            borderRadius: BorderRadius.circular(12)),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'dropoff_address'.tr,
                        style: robotoRegular.copyWith(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff979797)),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Color(0xffa3a3a3), width: 3),
                            borderRadius: BorderRadius.circular(12)),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'review'.tr,
                        style: robotoRegular.copyWith(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff979797)),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 30),
              Expanded(
                child: SizedBox(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 30),
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
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide.none),
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 9, horizontal: 15),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xffdedede)
                                                .withOpacity(0.25))),
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
                                      side:
                                          BorderSide(color: Color(0xffdedede)),
                                      borderRadius: BorderRadius.circular(8)),
                                  elevation: 5,
                                  child: InkWell(
                                    onTap: () {
                                      Get.bottomSheet(SelectSizedBottomsheet(),
                                          backgroundColor: Colors.transparent,
                                          isScrollControlled: true);
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Color(0xffdedede)),
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: TextFormField(
                                        readOnly: true,
                                        decoration:
                                            textFieldInputDecoration3.copyWith(
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                        borderSide:
                                                            BorderSide.none),
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                        vertical: 9,
                                                        horizontal: 15),
                                                border: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Color(0xffdedede)
                                                            .withOpacity(
                                                                0.25))),
                                                hintText: 'select_size'.tr,
                                                hintStyle: TextStyle(
                                                    fontSize: 12,
                                                    color: Color(0xff979797),
                                                    fontWeight:
                                                        FontWeight.w400)),
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
                                      side:
                                          BorderSide(color: Color(0xffdedede)),
                                      borderRadius: BorderRadius.circular(8)),
                                  elevation: 5,
                                  child: InkWell(
                                    onTap: () {
                                      Get.bottomSheet(SelectWeightBottomsheet(),
                                          backgroundColor: Colors.transparent,
                                          isScrollControlled: true);
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Color(0xffdedede)),
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: TextFormField(
                                        decoration:
                                            textFieldInputDecoration3.copyWith(
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                        borderSide:
                                                            BorderSide.none),
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                        vertical: 9,
                                                        horizontal: 15),
                                                border: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Color(0xffdedede)
                                                            .withOpacity(
                                                                0.25))),
                                                hintText: 'select_weight'.tr,
                                                hintStyle: TextStyle(
                                                    fontSize: 12,
                                                    color: Color(0xff979797),
                                                    fontWeight:
                                                        FontWeight.w400)),
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
                                decoration: textFieldInputDecoration3.copyWith(
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide.none),
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 9, horizontal: 15),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xffdedede)
                                                .withOpacity(0.25))),
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
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide.none),
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 9, horizontal: 15),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xffdedede)
                                                .withOpacity(0.25))),
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
                                        border: Border.all(
                                            color: Color(0xffdedede))),
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
                                        items:
                                            fragile.map(fragileMethod).toList(),
                                        onChanged: (value) => setState(
                                            () => fragileValue = value),
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
                                        border: Border.all(
                                            color: Color(0xffdedede))),
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton<String>(
                                        hint: Text(
                                          "food_liquid?".tr,
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
                                        items:
                                            fragile.map(fragileMethod).toList(),
                                        onChanged: (value) => setState(
                                            () => fragileValue = value),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 30),
                          Row(
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
                              padding: EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 40),
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
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  blurRadius: 25.0, color: Color(0xff000000).withOpacity(0.12)),
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
                      Get.dialog(PickupDialog());
                      // Get.back();
                    },
                    child: Container(
                      width: 123,
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 14),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          color: Color(0xffbf1d2d)),
                      child: Center(
                        child: Text("next".tr,
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
