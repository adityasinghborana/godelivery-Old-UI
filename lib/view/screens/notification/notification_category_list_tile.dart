import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:sixam_mart/util/styles.dart';

class NotificationCategoryListTile extends StatefulWidget {
  const NotificationCategoryListTile({Key key}) : super(key: key);

  @override
  State<NotificationCategoryListTile> createState() =>
      _NotificationCategoryListTileState();
}

class _NotificationCategoryListTileState
    extends State<NotificationCategoryListTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Text('Restaurants',
          style: robotoBlack.copyWith(
              fontSize: 12,
              fontWeight: FontWeight.w700,
              color: Color(0xff979797))),
    );
  }
}
