import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart/util/styles.dart';

class PackageAddressPage extends StatefulWidget {
  const PackageAddressPage({Key key}) : super(key: key);

  @override
  State<PackageAddressPage> createState() => _PackageAddressPageState();
}

class _PackageAddressPageState extends State<PackageAddressPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            'product_details'.tr,
            style: robotoRegular.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Color(0xffbf1d2d)),
          ),
        ),
        SizedBox(height: 10),
        Container(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          decoration: BoxDecoration(color: Color(0xff0eacd7).withOpacity(0.10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'name-'.tr,
                    style: robotoRegular.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff979797)),
                  ),
                  SizedBox(width: 5),
                  Text(
                    'Drill machine',
                    style: robotoRegular.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff979797)),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'size'.tr,
                    style: robotoRegular.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff979797)),
                  ),
                  SizedBox(width: 5),
                  Text(
                    'Medium',
                    style: robotoRegular.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff979797)),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'weight'.tr,
                    style: robotoRegular.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff979797)),
                  ),
                  SizedBox(width: 5),
                  Text(
                    '>5kg',
                    style: robotoRegular.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff979797)),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Text(
                'Non fragile'.tr,
                style: robotoRegular.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff979797)),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'schedule'.tr,
                    style: robotoRegular.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff979797)),
                  ),
                  SizedBox(width: 5),
                  Text(
                    'Tommorow, 9:00 to 9:30',
                    style: robotoRegular.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff979797)),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            'pickup_address'.tr,
            style: robotoRegular.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Color(0xffbf1d2d)),
          ),
        ),
        SizedBox(height: 10),
        Container(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          decoration: BoxDecoration(color: Color(0xff0eacd7).withOpacity(0.10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '3891 Ranchview Dr.Richaedson,London 62639',
                style: robotoRegular.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff979797)),
              ),
              SizedBox(height: 15),
              Text(
                'Flat 2, saintrow building, London, N7 6NJ',
                style: robotoRegular.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff979797)),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'from'.tr,
                    style: robotoRegular.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff979797)),
                  ),
                  SizedBox(width: 5),
                  Text(
                    'Taldo Fulano, +334 1234567890',
                    style: robotoRegular.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff979797)),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            'dropoff_address'.tr,
            style: robotoRegular.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Color(0xffbf1d2d)),
          ),
        ),
        SizedBox(height: 10),
        Container(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          decoration: BoxDecoration(color: Color(0xff0eacd7).withOpacity(0.10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '3891 Ranchview Dr.Richaedson,London 62639',
                style: robotoRegular.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff979797)),
              ),
              SizedBox(height: 15),
              Text(
                'Flat 2, saintrow building, London, N7 6NJ',
                style: robotoRegular.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff979797)),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'from'.tr,
                    style: robotoRegular.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff979797)),
                  ),
                  SizedBox(width: 5),
                  Text(
                    'Taldo Fulano, +334 1234567890',
                    style: robotoRegular.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff979797)),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 7, horizontal: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: Color(0xff979797)),
                ),
                child: Text(
                  'delete'.tr,
                  style: robotoRegular.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff979797)),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 7, horizontal: 19),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: Color(0xff0eacd7)),
                ),
                child: Text(
                  'edit'.tr,
                  style: robotoRegular.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff0eacd7)),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
