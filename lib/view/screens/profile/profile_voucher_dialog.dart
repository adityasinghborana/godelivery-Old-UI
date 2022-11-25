import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:sixam_mart/util/styles.dart';

class ProfileVouchersDialog extends StatefulWidget {
  const ProfileVouchersDialog({Key key}) : super(key: key);

  @override
  State<ProfileVouchersDialog> createState() => _ProfileVouchersDialogState();
}

class _ProfileVouchersDialogState extends State<ProfileVouchersDialog> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(4)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'add_vouchers_code'.tr,
            style: robotoRegular.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff979797)),
          ),
        ],
      ),
    );
  }
}
