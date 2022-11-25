import 'package:sixam_mart/util/app_colors.dart';
import 'package:sixam_mart/util/dimensions.dart';
import 'package:flutter/material.dart';

final robotoRegular = TextStyle(
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w400,
  fontSize: Dimensions.fontSizeDefault,
);

final robotoRegular2 = TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w400,
    fontSize: 11,
    color: Color(0xff979797));

final robotoMedium = TextStyle(
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w500,
  fontSize: Dimensions.fontSizeDefault,
);

final robotoBold = TextStyle(
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w700,
  fontSize: Dimensions.fontSizeDefault,
);

final robotoBlack = TextStyle(
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w900,
  fontSize: Dimensions.fontSizeDefault,
);

final InputDecoration textFieldInputDecoration = InputDecoration(
  fillColor: AppColors.redAccentColor,
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(6.0),
    borderSide: BorderSide(color: Color(0xff979797)),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(6.0),
    borderSide: BorderSide(color: Color(0xff979797)),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(6.0),
    borderSide: BorderSide(color: Color(0xff979797)),
  ),
  hintStyle: const TextStyle(
      fontSize: 14, color: Color(0xff979797), fontWeight: FontWeight.w400),
  contentPadding:
      const EdgeInsets.only(left: 21, right: 10, bottom: 13, top: 10),
);

final InputDecoration textFieldInputDecoration2 = InputDecoration(
  fillColor: AppColors.redAccentColor,
  border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(6.0),
      borderSide: BorderSide(color: Color(0xff979797))),
  enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(6.0),
      borderSide: BorderSide(color: Color(0xff979797))),
  focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(6.0),
      borderSide: BorderSide(color: Color(0xff979797))),
  hintStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
  contentPadding: const EdgeInsets.only(left: 21, right: 8, bottom: 13, top: 8),
);


// final InputDecoration textFieldInputDecoration3 = InputDecoration(
//   fillColor: AppColors.redAccentColor,
//   border: OutlineInputBorder(
//       borderRadius: BorderRadius.circular(6.0),
//       borderSide: BorderSide(color: Color(0xff979797))),
//   enabledBorder: OutlineInputBorder(
//       borderRadius: BorderRadius.circular(6.0),
//       borderSide: BorderSide(color: Color(0xff979797))),
//   focusedBorder: OutlineInputBorder(
//       borderRadius: BorderRadius.circular(6.0),
//       borderSide: BorderSide(color: Color(0xff979797))),
//   hintStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
//   contentPadding: const EdgeInsets.only(left: 21, right: 8, bottom: 13, top: 8),
// );
