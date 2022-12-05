import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:sixam_mart/controller/order_controller.dart';
import 'package:sixam_mart/data/model/response/order_model.dart';
import 'package:sixam_mart/helper/route_helper.dart';
import 'package:sixam_mart/util/images.dart';
import 'package:sixam_mart/util/styles.dart';
import 'package:sixam_mart/view/screens/order/order_details_screen.dart';
import 'package:sixam_mart/view/screens/order/order_ratting_page.dart';

class OrderLitTilePage extends StatefulWidget {
  final OrderModel orderModel;
  final int orderId;
  final bool fromNotification;
  const OrderLitTilePage(
      {Key key, this.orderModel, this.orderId, this.fromNotification})
      : super(key: key);

  @override
  State<OrderLitTilePage> createState() => _OrderLitTilePageState();
}

class _OrderLitTilePageState extends State<OrderLitTilePage> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<OrderController>(builder: (orderController) {
      PaginatedOrderModel paginatedOrderModel;
      return InkWell(
        onTap: () {
          Get.bottomSheet(OrderDetailsScreen(),
              backgroundColor: Colors.transparent, isScrollControlled: true);
          // Get.to(;
          // Get.toNamed(
          //   RouteHelper.getOrderDetailsRoute(paginatedOrderModel.orders[0].id),
          //   arguments: OrderDetailsScreen(
          //     // orderId: widget.orderId,
          //     // orderModel: widget.orderModel,
          //   ),
          // );
        },
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mary"s Kitchen',
                        style: robotoRegular.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff09323e)),
                      ),
                      SizedBox(height: 12),
                      Text(
                        'Sweet Goat Pizza',
                        style: robotoRegular.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff979797)),
                      ),
                      SizedBox(height: 22),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'N 270',
                            style: robotoRegular.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff0eacd7)),
                          ),
                          SizedBox(width: 18),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xff0eacd7),
                            size: 18,
                          )
                        ],
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(Images.imgMyOrder),
                      SizedBox(height: 17),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Delivered',
                            style: robotoRegular.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff979797)),
                          ),
                          SizedBox(width: 20),
                          Image.asset(
                            Images.icDelivery,
                            height: 15,
                            width: 15,
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              CustomPaint(painter: DrawDottedhorizontalline()),
              SizedBox(height: 20),
              Text(
                '3 Bondway, vauxhall, London, SW81SJ',
                style: robotoRegular.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff979797)),
              ),
              SizedBox(height: 15),
              Text(
                'April 15 2022, 11:02 PM',
                style: robotoRegular.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff979797)),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 17, vertical: 6),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border:
                            Border.all(color: Color(0xff0000000), width: 1.2)),
                    child: Text(
                      'reOrder'.tr.toUpperCase(),
                      style: robotoRegular.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff000000)),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(OrderRattingPage());
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 17, vertical: 6),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border:
                              Border.all(color: Color(0xff0eacd7), width: 1.2)),
                      child: Text(
                        'rate_order'.tr.toUpperCase(),
                        style: robotoRegular.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff0eacd7)),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 20),
              Divider(
                thickness: 3,
                color: Color(0xff979797),
              )
            ],
          ),
        ),
      );
    });
  }
}

class DrawDottedhorizontalline extends CustomPainter {
  Paint _paint;
  DrawDottedhorizontalline() {
    _paint = Paint();
    _paint.color = Color(0xff979797); //dots color
    _paint.strokeWidth = 1; //dots thickness
    _paint.strokeCap = StrokeCap.square; //dots corner edges
  }

  @override
  void paint(Canvas canvas, Size size) {
    for (double i = -300; i < 370; i = i + 15) {
      // 15 is space between dots
      if (i % 6 == 0)
        canvas.drawLine(Offset(i, 0.0), Offset(i + 8, 0.0), _paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
