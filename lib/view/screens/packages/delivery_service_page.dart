import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart/util/images.dart';
import 'package:sixam_mart/util/styles.dart';
import 'package:sixam_mart/view/screens/packages/package_address_page.dart';

class DeliveryServicePage extends StatefulWidget {
  const DeliveryServicePage({Key key}) : super(key: key);

  @override
  State<DeliveryServicePage> createState() => _DeliveryServicePageState();
}

class _DeliveryServicePageState extends State<DeliveryServicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        fit: StackFit.expand,
        children: [
          Image.asset(Images.imgDeliverServicesBg, fit: BoxFit.fill),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          color: Color(0xff09323e),
                          size: 20,
                        )),
                    SizedBox(width: 20),
                    Text(
                      'select_your_service'.tr,
                      style: robotoRegular.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff09323e)),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 45),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 1,
                          child: InkWell(
                            onTap: () {
                              Get.to(PackageAddressPage());
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 18, vertical: 15),
                              decoration: BoxDecoration(
                                  color: Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(14)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    Images.icExpressDilevery,
                                    height: 45,
                                    width: 45,
                                  ),
                                  SizedBox(height: 15),
                                  Text(
                                    'express_delivery'.tr,
                                    style: robotoRegular.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff09323e)),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    '₦300'.tr,
                                    style: robotoRegular.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff09323e)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 32),
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 18, vertical: 15),
                            decoration: BoxDecoration(
                                color: Color(0xffffffff),
                                borderRadius: BorderRadius.circular(14)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  Images.icBicycle,
                                  height: 45,
                                  width: 45,
                                ),
                                SizedBox(height: 15),
                                Text(
                                  'bicycle_delivery'.tr,
                                  style: robotoRegular.copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff09323e)),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  '₦30'.tr,
                                  style: robotoRegular.copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff09323e)),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 18, vertical: 15),
                            decoration: BoxDecoration(
                                color: Color(0xffffffff),
                                borderRadius: BorderRadius.circular(14)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  Images.icMotor,
                                  height: 45,
                                  width: 45,
                                ),
                                SizedBox(height: 15),
                                Text(
                                  'motorcycle_delivery'.tr,
                                  style: robotoRegular.copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff09323e)),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  '₦50'.tr,
                                  style: robotoRegular.copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff09323e)),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 31,
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 18, vertical: 15),
                            decoration: BoxDecoration(
                                color: Color(0xffffffff),
                                borderRadius: BorderRadius.circular(14)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  Images.icCar,
                                  height: 45,
                                  width: 45,
                                ),
                                SizedBox(height: 15),
                                Text(
                                  'car_delivery'.tr,
                                  style: robotoRegular.copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff09323e)),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  '₦80'.tr,
                                  style: robotoRegular.copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff09323e)),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 18, vertical: 15),
                            decoration: BoxDecoration(
                                color: Color(0xffffffff),
                                borderRadius: BorderRadius.circular(14)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  Images.icVan,
                                  height: 45,
                                  width: 45,
                                ),
                                SizedBox(height: 15),
                                Text(
                                  'van_delivery'.tr,
                                  style: robotoRegular.copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff09323e)),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  '₦100'.tr,
                                  style: robotoRegular.copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff09323e)),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 32),
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 18, vertical: 15),
                            decoration: BoxDecoration(
                                color: Color(0xffffffff),
                                borderRadius: BorderRadius.circular(14)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  Images.ictruck,
                                  height: 45,
                                  width: 45,
                                ),
                                SizedBox(height: 15),
                                Text(
                                  'truck_delivery'.tr,
                                  style: robotoRegular.copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff09323e)),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  '₦200'.tr,
                                  style: robotoRegular.copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff09323e)),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(child: Image.asset(Images.imgTruck))
            ],
          )
        ],
      ),
    );
  }
}
