import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart/util/images.dart';
import 'package:sixam_mart/util/styles.dart';

class RestaurantItemTabPage extends StatefulWidget {
  final bool isSized;
  final bool isToppings;
  final bool isBase;

  const RestaurantItemTabPage(
      {Key key, this.isSized, this.isToppings, this.isBase})
      : super(key: key);

  @override
  State<RestaurantItemTabPage> createState() => _RestaurantItemTabPageState();
}

class _RestaurantItemTabPageState extends State<RestaurantItemTabPage> {
  //size
  bool extraLarge = false;
  bool large = false;
  bool small = false;
  bool medium = false;
  bool singlepeace = false;
  bool singlePeaceSmall = false;

  //base
  bool pan = false;
  bool stuffed = false;
  bool stuffedCrust = false;
  bool cracker = false;
  bool flat = false;
  bool thin = false;

  //toppings
  bool param = false;
  bool spicy = false;
  bool black = false;
  bool cotto = false;
  bool onion = false;
  bool button = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          widget.isSized
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Text(
                              'extra_large'.tr,
                              style: robotoRegular.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff09323e)),
                            ),
                          ),
                          Text(
                            '₦2000',
                            style: robotoRegular.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff09323e)),
                          ),
                          Checkbox(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            side: MaterialStateBorderSide.resolveWith(
                              (states) => BorderSide(
                                  width: 1.0, color: Color(0xff979797)),
                            ),
                            splashRadius: 0.4,
                            activeColor: Color(0xffbf1d2d),
                            value: this.extraLarge,
                            onChanged: (bool value) {
                              setState(() {
                                this.extraLarge = value;
                                large = false;
                                small = false;
                                medium = false;
                                singlePeaceSmall = false;
                                singlepeace = false;
                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Text(
                              'large'.tr,
                              style: robotoRegular.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff09323e)),
                            ),
                          ),
                          Text(
                            '₦2000',
                            style: robotoRegular.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff09323e)),
                          ),
                          Checkbox(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            side: MaterialStateBorderSide.resolveWith(
                              (states) => BorderSide(
                                  width: 1.0, color: Color(0xff979797)),
                            ),
                            splashRadius: 0.4,
                            activeColor: Color(0xffbf1d2d),
                            value: this.large,
                            onChanged: (bool value) {
                              setState(() {
                                this.large = value;
                                extraLarge = false;

                                small = false;
                                medium = false;
                                singlePeaceSmall = false;
                                singlepeace = false;
                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Text(
                              'medium'.tr,
                              style: robotoRegular.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff09323e)),
                            ),
                          ),
                          Text(
                            '₦2000',
                            style: robotoRegular.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff09323e)),
                          ),
                          Checkbox(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            side: MaterialStateBorderSide.resolveWith(
                              (states) => BorderSide(
                                  width: 1.0, color: Color(0xff979797)),
                            ),
                            splashRadius: 0.4,
                            activeColor: Color(0xffbf1d2d),
                            value: this.medium,
                            onChanged: (bool value) {
                              setState(() {
                                this.medium = value;
                                extraLarge = false;
                                large = false;
                                small = false;
                                singlePeaceSmall = false;
                                singlepeace = false;
                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Text(
                              'small'.tr,
                              style: robotoRegular.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff09323e)),
                            ),
                          ),
                          Text(
                            '₦2000',
                            style: robotoRegular.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff09323e)),
                          ),
                          Checkbox(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            side: MaterialStateBorderSide.resolveWith(
                              (states) => BorderSide(
                                  width: 1.0, color: Color(0xff979797)),
                            ),
                            splashRadius: 0.4,
                            activeColor: Color(0xffbf1d2d),
                            value: this.small,
                            onChanged: (bool value) {
                              setState(() {
                                this.small = value;
                                extraLarge = false;

                                medium = false;
                                singlePeaceSmall = false;
                                singlepeace = false;
                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Text(
                              'single_peace'.tr,
                              style: robotoRegular.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff09323e)),
                            ),
                          ),
                          Text(
                            '₦2000',
                            style: robotoRegular.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff09323e)),
                          ),
                          Checkbox(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            side: MaterialStateBorderSide.resolveWith(
                              (states) => BorderSide(
                                  width: 1.0, color: Color(0xff979797)),
                            ),
                            splashRadius: 0.4,
                            activeColor: Color(0xffbf1d2d),
                            value: this.singlepeace,
                            onChanged: (bool value) {
                              setState(() {
                                this.singlepeace = value;
                                extraLarge = false;
                                large = false;
                                small = false;
                                medium = false;
                                singlePeaceSmall = false;
                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Text(
                              'single_peace_small'.tr,
                              style: robotoRegular.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff09323e)),
                            ),
                          ),
                          Text(
                            '₦2000',
                            style: robotoRegular.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff09323e)),
                          ),
                          Checkbox(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            side: MaterialStateBorderSide.resolveWith(
                              (states) => BorderSide(
                                  width: 1.0, color: Color(0xff979797)),
                            ),
                            splashRadius: 0.4,
                            activeColor: Color(0xffbf1d2d),
                            value: this.singlePeaceSmall,
                            onChanged: (bool value) {
                              setState(() {
                                this.singlePeaceSmall = value;
                                extraLarge = false;
                                large = false;
                                small = false;
                                medium = false;

                                singlepeace = false;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              : SizedBox.shrink(),
          widget.isBase
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Text(
                              'pan'.tr,
                              style: robotoRegular.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff09323e)),
                            ),
                          ),
                          Text(
                            '₦20',
                            style: robotoRegular.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff09323e)),
                          ),
                          Checkbox(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            side: MaterialStateBorderSide.resolveWith(
                              (states) => BorderSide(
                                  width: 1.0, color: Color(0xff979797)),
                            ),
                            splashRadius: 0.4,
                            activeColor: Color(0xffbf1d2d),
                            value: this.pan,
                            onChanged: (bool value) {
                              setState(() {
                                this.pan = value;
                                stuffed = false;
                                stuffedCrust = false;
                                cracker = false;
                                flat = false;
                                thin = false;
                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Text(
                              'stuffed'.tr,
                              style: robotoRegular.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff09323e)),
                            ),
                          ),
                          Text(
                            '₦20',
                            style: robotoRegular.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff09323e)),
                          ),
                          Checkbox(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            side: MaterialStateBorderSide.resolveWith(
                              (states) => BorderSide(
                                  width: 1.0, color: Color(0xff979797)),
                            ),
                            splashRadius: 0.4,
                            activeColor: Color(0xffbf1d2d),
                            value: this.stuffed,
                            onChanged: (bool value) {
                              setState(() {
                                this.stuffed = value;
                                pan = false;
                                stuffedCrust = false;
                                cracker = false;
                                flat = false;
                                thin = false;
                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Text(
                              'stuffed_crust'.tr,
                              style: robotoRegular.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff09323e)),
                            ),
                          ),
                          Text(
                            '₦20',
                            style: robotoRegular.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff09323e)),
                          ),
                          Checkbox(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            side: MaterialStateBorderSide.resolveWith(
                              (states) => BorderSide(
                                  width: 1.0, color: Color(0xff979797)),
                            ),
                            splashRadius: 0.4,
                            activeColor: Color(0xffbf1d2d),
                            value: this.stuffedCrust,
                            onChanged: (bool value) {
                              setState(() {
                                this.stuffedCrust = value;
                                pan = false;
                                stuffed = false;
                                // stuffedCrust = false;
                                cracker = false;
                                flat = false;
                                thin = false;
                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Text(
                              'cracker_crust'.tr,
                              style: robotoRegular.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff09323e)),
                            ),
                          ),
                          Text(
                            '₦20',
                            style: robotoRegular.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff09323e)),
                          ),
                          Checkbox(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            side: MaterialStateBorderSide.resolveWith(
                              (states) => BorderSide(
                                  width: 1.0, color: Color(0xff979797)),
                            ),
                            splashRadius: 0.4,
                            activeColor: Color(0xffbf1d2d),
                            value: this.cracker,
                            onChanged: (bool value) {
                              setState(() {
                                this.cracker = value;
                                pan = false;
                                stuffed = false;
                                stuffedCrust = false;
                                // cracker = false;
                                flat = false;
                                thin = false;
                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Text(
                              'flat_bread'.tr,
                              style: robotoRegular.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff09323e)),
                            ),
                          ),
                          Text(
                            '₦20',
                            style: robotoRegular.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff09323e)),
                          ),
                          Checkbox(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            side: MaterialStateBorderSide.resolveWith(
                              (states) => BorderSide(
                                  width: 1.0, color: Color(0xff979797)),
                            ),
                            splashRadius: 0.4,
                            activeColor: Color(0xffbf1d2d),
                            value: this.flat,
                            onChanged: (bool value) {
                              setState(() {
                                this.flat = value;
                                cracker = false;
                                pan = false;
                                stuffed = false;
                                stuffedCrust = false;

                                thin = false;
                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Text(
                              'thin_crust'.tr,
                              style: robotoRegular.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff09323e)),
                            ),
                          ),
                          Text(
                            '₦20',
                            style: robotoRegular.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff09323e)),
                          ),
                          Checkbox(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            side: MaterialStateBorderSide.resolveWith(
                              (states) => BorderSide(
                                  width: 1.0, color: Color(0xff979797)),
                            ),
                            splashRadius: 0.4,
                            activeColor: Color(0xffbf1d2d),
                            value: this.thin,
                            onChanged: (bool value) {
                              setState(() {
                                this.thin = value;
                                flat = false;
                                cracker = false;
                                pan = false;
                                stuffed = false;
                                stuffedCrust = false;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              : SizedBox.shrink(),
          widget.isToppings
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  Images.icNonVeg,
                                ),
                                SizedBox(width: 20),
                                Text(
                                  'Parma Ham',
                                  style: robotoRegular.copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff09323e)),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            '₦20',
                            style: robotoRegular.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff09323e)),
                          ),
                          Checkbox(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            side: MaterialStateBorderSide.resolveWith(
                              (states) => BorderSide(
                                  width: 1.0, color: Color(0xff979797)),
                            ),
                            splashRadius: 0.4,
                            activeColor: Color(0xffbf1d2d),
                            value: this.param,
                            onChanged: (bool value) {
                              setState(() {
                                this.param = value;
                                spicy = false;
                                black = false;
                                cotto = false;
                                onion = false;
                                button = false;
                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  Images.icNonVeg,
                                ),
                                SizedBox(width: 20),
                                Text(
                                  'Spicy alami',
                                  style: robotoRegular.copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff09323e)),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            '₦20',
                            style: robotoRegular.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff09323e)),
                          ),
                          Checkbox(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            side: MaterialStateBorderSide.resolveWith(
                              (states) => BorderSide(
                                  width: 1.0, color: Color(0xff979797)),
                            ),
                            splashRadius: 0.4,
                            activeColor: Color(0xffbf1d2d),
                            value: this.spicy,
                            onChanged: (bool value) {
                              setState(() {
                                this.spicy = value;
                                param = false;
                                black = false;
                                cotto = false;
                                onion = false;
                                button = false;
                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  Images.icVeg,
                                ),
                                SizedBox(width: 20),
                                Text(
                                  'Black Olives',
                                  style: robotoRegular.copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff09323e)),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            '₦20',
                            style: robotoRegular.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff09323e)),
                          ),
                          Checkbox(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            side: MaterialStateBorderSide.resolveWith(
                              (states) => BorderSide(
                                  width: 1.0, color: Color(0xff979797)),
                            ),
                            splashRadius: 0.4,
                            activeColor: Color(0xffbf1d2d),
                            value: this.black,
                            onChanged: (bool value) {
                              setState(() {
                                this.black = value;
                                spicy = false;
                                param = false;
                                cotto = false;
                                onion = false;
                                button = false;
                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  Images.icNonVeg,
                                ),
                                SizedBox(width: 20),
                                Text(
                                  'Cotto Ham',
                                  style: robotoRegular.copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff09323e)),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            '₦20',
                            style: robotoRegular.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff09323e)),
                          ),
                          Checkbox(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            side: MaterialStateBorderSide.resolveWith(
                              (states) => BorderSide(
                                  width: 1.0, color: Color(0xff979797)),
                            ),
                            splashRadius: 0.4,
                            activeColor: Color(0xffbf1d2d),
                            value: this.cotto,
                            onChanged: (bool value) {
                              setState(() {
                                this.cotto = value;
                                spicy = false;
                                param = false;
                                black = false;
                                // cotto = false;
                                onion = false;
                                button = false;
                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  Images.icVeg,
                                ),
                                SizedBox(width: 20),
                                Text(
                                  'Red Onion',
                                  style: robotoRegular.copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff09323e)),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            '₦20',
                            style: robotoRegular.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff09323e)),
                          ),
                          Checkbox(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            side: MaterialStateBorderSide.resolveWith(
                              (states) => BorderSide(
                                  width: 1.0, color: Color(0xff979797)),
                            ),
                            splashRadius: 0.4,
                            activeColor: Color(0xffbf1d2d),
                            value: this.onion,
                            onChanged: (bool value) {
                              setState(() {
                                this.onion = value;
                                spicy = false;
                                param = false;
                                black = false;
                                cotto = false;
                                // onion = false;
                                button = false;
                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  Images.icVeg,
                                ),
                                SizedBox(width: 20),
                                Text(
                                  'Button Mushrooms',
                                  style: robotoRegular.copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff09323e)),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            '₦20',
                            style: robotoRegular.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff09323e)),
                          ),
                          Checkbox(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            side: MaterialStateBorderSide.resolveWith(
                              (states) => BorderSide(
                                  width: 1.0, color: Color(0xff979797)),
                            ),
                            splashRadius: 0.4,
                            activeColor: Color(0xffbf1d2d),
                            value: this.button,
                            onChanged: (bool value) {
                              setState(() {
                                this.button = value;
                                spicy = false;
                                param = false;
                                black = false;
                                cotto = false;
                                onion = false;
                                // button = false;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              : SizedBox.shrink()
        ],
      ),
    );
  }
}
