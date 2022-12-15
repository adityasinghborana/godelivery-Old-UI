import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:sixam_mart/util/images.dart';
import 'package:sixam_mart/util/styles.dart';

class RestaurantCategoriesListTile extends StatefulWidget {
  const RestaurantCategoriesListTile({Key key}) : super(key: key);

  @override
  State<RestaurantCategoriesListTile> createState() =>
      _RestaurantCategoriesListTileState();
}

class _RestaurantCategoriesListTileState
    extends State<RestaurantCategoriesListTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            Images.icBurger,
            // height: 40, width: 30
          ),
          SizedBox(height: 5),
          Text(
            "Burger",
            style: robotoMedium.copyWith(
              color: Color(0xff979797),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
