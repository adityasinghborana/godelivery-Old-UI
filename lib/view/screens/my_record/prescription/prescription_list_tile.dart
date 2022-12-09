import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:sixam_mart/common_dialog/delete_dialog.dart';
import 'package:sixam_mart/util/images.dart';
import 'package:sixam_mart/util/styles.dart';

class PrescriptionListTile extends StatefulWidget {
  final File image;
  const PrescriptionListTile({Key key, this.image}) : super(key: key);

  @override
  State<PrescriptionListTile> createState() => _PrescriptionListTileState();
}

class _PrescriptionListTileState extends State<PrescriptionListTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // color: Colors.grey,
                  height: 75,
                  width: 52,
                  child: widget.image != null
                      ? Image.file(
                          widget.image,
                          fit: BoxFit.cover,
                        )
                      : CachedNetworkImage(
                          imageUrl: '',
                          fit: BoxFit.cover,
                          placeholder: (context, url) =>
                              Image.asset(Images.imgDocumentPlaceholder),
                          errorWidget: (context, url, error) => Image.asset(
                            Images.imgDocumentPlaceholder,
                          ),
                        ),
                ),
                SizedBox(width: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Cold.jpg",
                      style: robotoRegular.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff09323e)),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "11 jun 2022",
                      style: robotoRegular.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff979797)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Get.dialog(DeleteDialog(
                text: 'are_you_sure_delete_record'.tr,
              ));
            },
            child: Text(
              "delete".tr.toUpperCase(),
              style: robotoRegular.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff0eacd7)),
            ),
          ),
        ],
      ),
    );
  }
}
