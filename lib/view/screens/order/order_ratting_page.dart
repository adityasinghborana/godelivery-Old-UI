import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:sixam_mart/util/images.dart';
import 'package:sixam_mart/util/styles.dart';

class OrderRattingPage extends StatefulWidget {
  const OrderRattingPage({Key key}) : super(key: key);

  @override
  State<OrderRattingPage> createState() => _OrderRattingPageState();
}

class _OrderRattingPageState extends State<OrderRattingPage> {
  double _rating = 0.0;
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
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back_ios_new)),
                  // SizedBox(width: 20),
                  Expanded(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'rate_the_delivery'.tr,
                        style: robotoRegular.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff000000)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Order number #410049',
                      textAlign: TextAlign.center,
                      style: robotoRegular.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff09323e)),
                    ),
                    SizedBox(height: 33),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 25, vertical: 19),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Color(0xffdfdfdf))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(Images.icGoingPackage,
                                    width: 24,
                                    height: 24,
                                    color: Color(0xff75bf27)),
                                SizedBox(height: 17),
                                Text(
                                  'going_for_package'.tr,
                                  textAlign: TextAlign.center,
                                  style: robotoRegular.copyWith(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff75bf27)),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(Images.icPickup,
                                    width: 24,
                                    height: 24,
                                    color: Color(0xff75bf27)),
                                SizedBox(height: 17),
                                Text(
                                  'order_piked_up'.tr,
                                  textAlign: TextAlign.center,
                                  style: robotoRegular.copyWith(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff75bf27)),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(Images.icBike,
                                    width: 24,
                                    height: 24,
                                    color: Color(0xff75bf27)),
                                SizedBox(height: 17),
                                Text(
                                  'delivery_in_process'.tr,
                                  textAlign: TextAlign.center,
                                  style: robotoRegular.copyWith(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff75bf27)),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  Images.icPickedUp,
                                  width: 24,
                                  height: 24,
                                  color: Color(0xff75bf27),
                                ),
                                SizedBox(height: 17),
                                Text(
                                  'going_for_package'.tr,
                                  textAlign: TextAlign.center,
                                  style: robotoRegular.copyWith(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff75bf27)),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 21),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'delivery_boy'.tr,
                              textAlign: TextAlign.center,
                              style: robotoRegular.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff09323e)),
                            ),
                            SizedBox(height: 13),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                    radius: 31,
                                    child: ClipOval(
                                      child: CachedNetworkImage(
                                        imageUrl: "",
                                        height: 63,
                                        width: 63,
                                        fit: BoxFit.fill,
                                        placeholder: (context, url) =>
                                            const CircularProgressIndicator
                                                .adaptive(),
                                        errorWidget: (context, url, error) =>
                                            Image.asset(Images.imgPlaceholder),
                                      ),
                                    )),
                                SizedBox(width: 16),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Savannah Nguyen',
                                        textAlign: TextAlign.center,
                                        style: robotoRegular.copyWith(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xff181721)),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            child: Text(
                                              'Driver - N 382 AOW',
                                              style: robotoRegular.copyWith(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color(0xffacacac)),
                                            ),
                                          ),
                                          SizedBox(width: 34),
                                          Image.asset(Images.icMessage),
                                          SizedBox(width: 17),
                                          Image.asset(Images.icPhone),
                                        ],
                                      ),
                                      SizedBox(height: 3),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            Images.icStar,
                                            height: 10,
                                            width: 10,
                                          ),
                                          SizedBox(width: 6),
                                          Text(
                                            '4.9',
                                            textAlign: TextAlign.center,
                                            style: robotoRegular.copyWith(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xffffb740)),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: 15),
                            Text(
                              'rate_the_driver'.tr,
                              textAlign: TextAlign.center,
                              style: robotoRegular.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff09323e)),
                            ),
                            SizedBox(height: 21),
                            RatingBar.builder(
                              minRating: 0,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemSize: 30,
                              itemCount: 5,
                              itemPadding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (krating) {
                                setState(() {
                                  _rating = krating;
                                });
                              },
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                // SizedBox(width: 20),
                                Text(
                                  'very_bad'.tr,
                                  textAlign: TextAlign.center,
                                  style: robotoRegular.copyWith(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff979797)),
                                ),
                                // SizedBox(width: 45),
                                Text(
                                  'bad'.tr,
                                  textAlign: TextAlign.center,
                                  style: robotoRegular.copyWith(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff979797)),
                                ),
                                // SizedBox(width: 47),
                                Text(
                                  'good'.tr,
                                  textAlign: TextAlign.center,
                                  style: robotoRegular.copyWith(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff979797)),
                                ),
                                // SizedBox(width: 40),
                                Text(
                                  'very_good'.tr,
                                  textAlign: TextAlign.center,
                                  style: robotoRegular.copyWith(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff979797)),
                                ),
                                // SizedBox(width: 25),
                                Text(
                                  'excellent'.tr,
                                  textAlign: TextAlign.center,
                                  style: robotoRegular.copyWith(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff979797)),
                                ),
                              ],
                            ),
                            SizedBox(height: 25),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 22, right: 22, bottom: 12),
                              child: TextFormField(
                                maxLines: 3,
                                // controller: _emailController,
                                decoration: textFieldInputDecoration.copyWith(
                                    hintText: 'comment'.tr,
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xffcdcdcd)))),
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
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 29),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 50, vertical: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: Color(0xff979797)),
                            ),
                            child: Text(
                              'skip'.tr,
                              textAlign: TextAlign.center,
                              style: robotoRegular.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff09323e)),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 50, vertical: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Color(0xffbf1d2d)
                                //border: Border.all(color: Color(0xff979797)),
                                ),
                            child: Text(
                              'confirm'.tr,
                              textAlign: TextAlign.center,
                              style: robotoRegular.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xffffffff)),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 50),
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
