import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sixam_mart/util/images.dart';
import 'package:sixam_mart/util/styles.dart';

class SendGiftCard extends StatefulWidget {
  const SendGiftCard({Key key}) : super(key: key);

  @override
  State<SendGiftCard> createState() => _SendGiftCardState();
}

class _SendGiftCardState extends State<SendGiftCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 40,
          right: 40,
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13),
            ),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Food",
                              style: robotoRegular.copyWith(
                                  fontSize: 26,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff09323e)),
                            ),
                            SizedBox(height: 3),
                            Text(
                              "Gift card",
                              style: robotoRegular.copyWith(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff09323e)),
                            ),
                            SizedBox(height: 61),
                            Image.asset(
                              Images.logo,
                              width: 55,
                              height: 25,
                            )
                          ],
                        ),
                      ),
                      //SizedBox(width: 60),
                      Image.asset(Images.imgGift)
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
            top: 75, right: 25, child: Image.asset(Images.imgRightArrow)),
        Positioned(top: 75, left: 25, child: Image.asset(Images.imgLeftArrow)),
      ],
    );
  }
}
