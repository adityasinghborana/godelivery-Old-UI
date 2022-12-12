import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:sixam_mart/view/screens/grocery/grocery_category_list_tile.dart';
import 'package:sixam_mart/view/screens/grocery/grocery_item_list_tile.dart';
import 'package:sixam_mart/view/screens/my_record/my_record_page.dart';
import 'package:sixam_mart/view/screens/my_record/prescription/prescription_upload_page.dart';
import 'package:sixam_mart/view/screens/packages/package_page.dart';
import 'package:sixam_mart/view/screens/reminder/add_reminder_page.dart';
import 'package:sixam_mart/view/screens/reminder/reminder_page.dart';
import 'package:sixam_mart/util/images.dart';
import 'package:sixam_mart/util/styles.dart';

import '../category/category_screen.dart';

class GroceryPage extends StatefulWidget {
  final int selectedIndex;
  const GroceryPage({Key key, this.selectedIndex}) : super(key: key);

  @override
  State<GroceryPage> createState() => _GroceryPageState();
}

class _GroceryPageState extends State<GroceryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.selectedIndex == 4
          ? PackagePage()
          : SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 60),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Icon(Icons.arrow_back_ios_new)),
                              SizedBox(width: 20),
                              Text(
                                'grocery'.tr,
                                style: robotoRegular.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff000000)),
                              ),
                            ],
                          ),
                        ),
                        widget.selectedIndex == 1
                            ? Image.asset(
                                Images.imgSearch,
                                width: 32,
                                height: 32,
                              )
                            : Image.asset(
                                Images.icSearch,
                                width: 32,
                                height: 32,
                              ),
                        SizedBox(width: 23),
                        Icon(
                          Icons.shopping_cart,
                          size: 25,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ),

                  widget.selectedIndex == 0
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 23),
                            Padding(
                              padding: const EdgeInsets.only(left: 19),
                              child: SingleChildScrollView(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 10),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          border: Border.all(
                                              width: 1,
                                              color: Color(0xff979797))),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Short by',
                                            style: robotoRegular.copyWith(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xff979797)),
                                          ),
                                          Icon(
                                            Icons.keyboard_arrow_down_outlined,
                                            color: Color(0xff979797),
                                          )
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        height: 46,
                                        child: Center(
                                          child: ListView.builder(
                                              scrollDirection: Axis.horizontal,
                                              itemCount: 5,
                                              shrinkWrap: true,
                                              //physics: NeverScrollableScrollPhysics(),
                                              itemBuilder: ((context, index) {
                                                return GroceryCategoryListTile();
                                              })),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Divider(
                              thickness: 4,
                            ),
                          ],
                        )
                      : SizedBox.shrink(),

                  widget.selectedIndex == 1
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 36),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Get.bottomSheet(CategoryScreen(),
                                        backgroundColor: Colors.transparent,
                                        isScrollControlled: true);
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 22, vertical: 17),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Color(0xff0eacd7)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          Images.icMedicines,
                                          height: 19,
                                          width: 19,
                                        ),
                                        SizedBox(width: 18),
                                        Text(
                                          "Medicines",
                                          style: robotoMedium.copyWith(
                                            color: Color(0xffffffff),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Get.to(MyRecordPage());
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 22, vertical: 17),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Color(0xff0eacd7)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          Images.icMyRecords,
                                          height: 19,
                                          width: 19,
                                        ),
                                        SizedBox(width: 18),
                                        Text(
                                          "My Records",
                                          style: robotoMedium.copyWith(
                                            color: Color(0xffffffff),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Get.to(AddReminderPage());
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 25, vertical: 17),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Color(0xff0eacd7)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          Images.icReminder,
                                          height: 19,
                                          width: 19,
                                        ),
                                        SizedBox(width: 18),
                                        Text(
                                          "Reminder",
                                          style: robotoMedium.copyWith(
                                            color: Color(0xffffffff),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Get.to(PrescriptionUploadPage());
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 37, vertical: 17),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Color(0xff0eacd7)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          Images.icUpload,
                                          height: 19,
                                          width: 19,
                                        ),
                                        SizedBox(width: 18),
                                        Text(
                                          "Upload",
                                          style: robotoMedium.copyWith(
                                            color: Color(0xffffffff),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        )
                      : SizedBox.shrink(),

                  // SizedBox(height: 30),
                  SizedBox(
                    height: 800,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          ListView.builder(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: 10,
                              itemBuilder: ((context, index) {
                                return GoceryItemListTile(
                                  selectedIndex: widget.selectedIndex,
                                );
                              })),
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
