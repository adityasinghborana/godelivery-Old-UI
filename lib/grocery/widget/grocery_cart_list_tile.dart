import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:sixam_mart/util/images.dart';
import 'package:sixam_mart/util/styles.dart';

class GroceryCartListTile extends StatefulWidget {
  const GroceryCartListTile({Key key}) : super(key: key);

  @override
  State<GroceryCartListTile> createState() => _GroceryCartListTileState();
}

class _GroceryCartListTileState extends State<GroceryCartListTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
          color: Color(0xfff8f8f8), borderRadius: BorderRadius.circular(4)),
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
                    Image.asset(Images.imgBanana),
                    SizedBox(width: 20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Banana",
                                style: robotoMedium.copyWith(
                                  color: Color(0xff09323e),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                )),
                            Text("(500gm)",
                                style: robotoMedium.copyWith(
                                  color: Color(0xff717171),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                )),
                          ],
                        ),
                        SizedBox(height: 15),
                        Text("₦10",
                            style: robotoMedium.copyWith(
                              color: Color(0xff050505),
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(7),
                decoration: BoxDecoration(
                    color: Color(0xff0eacd7),
                    borderRadius: BorderRadius.circular(8)),
                child: Image.asset(Images.icDelete, height: 16, width: 15),
              ),
              SizedBox(width: 15),
              Text("1",
                  style: robotoMedium.copyWith(
                    color: Color(0xff09323e),
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  )),
              SizedBox(width: 15),
              Container(
                padding: EdgeInsets.all(7),
                decoration: BoxDecoration(
                    color: Color(0xff0eacd7),
                    borderRadius: BorderRadius.circular(8)),
                child: Image.asset(
                  Images.icAdd,
                  height: 16,
                  width: 15,
                  color: Color(0xffffffff),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
