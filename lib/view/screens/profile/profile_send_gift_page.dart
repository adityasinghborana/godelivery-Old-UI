import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:sixam_mart/util/images.dart';
import 'package:sixam_mart/util/styles.dart';
import 'package:sixam_mart/view/base/custom_button.dart';
import 'package:sixam_mart/view/screens/profile/widget/send_gift_card_list.dart';
import 'package:sixam_mart/view/screens/profile/widget/send_gift_chip_list.dart';

class ProfileSendGiftPage extends StatefulWidget {
  const ProfileSendGiftPage({Key key}) : super(key: key);

  @override
  State<ProfileSendGiftPage> createState() => _ProfileSendGiftPageState();
}

class _ProfileSendGiftPageState extends State<ProfileSendGiftPage> {
  String _isTrue;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),
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
                        child: Icon(Icons.arrow_back_ios_new)),
                    SizedBox(width: 20),
                    Text(
                      'gift'.tr,
                      style: robotoRegular.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff000000)),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Divider(
                thickness: 3,
              ),
              SizedBox(height: 62),
              SizedBox(
                height: 200,
                child: PageView.builder(
                  itemCount: 6,
                  // controller: controller,
                  itemBuilder: (BuildContext context, int itemIndex) {
                    return SendGiftCard();
                  },
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'value'.tr,
                      style: robotoRegular.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff000000)),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      height: 30,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          // physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 10,
                          itemBuilder: (BuildContext context, int index) {
                            return SendGiftChipList(
                              selectedIndex: index.toString(),
                            );
                          }),
                    ),
                    SizedBox(height: 20),
                    Container(
                      color: Colors.white,
                      child: TextFormField(
                        decoration: textFieldInputDecoration2.copyWith(
                          hintText: 'custom_amount'.tr,
                        ),
                        // validator: (value) {
                        //   if (value.isEmpty) {
                        //     // print('value empty');
                        //     return "enter_password".tr;
                        //   } else {
                        //     return null;
                        //   }
                        // },
                        onSaved: (value) {
                          setState(() {
                            // password = value!.trim();
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RadioListTile(
                      title: Text("send_by_email".tr),
                      value: "send_by_email".tr,
                      groupValue: _isTrue,
                      onChanged: (value) {
                        setState(() {
                          _isTrue = value.toString();
                        });
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Card(
                      color: Colors.white,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(left: 10),
                          hintText: 'to_name'.tr,
                        ),
                        // validator: (value) {
                        //   if (value.isEmpty) {
                        //     // print('value empty');
                        //     return "enter_password".tr;
                        //   } else {
                        //     return null;
                        //   }
                        // },
                        onSaved: (value) {
                          setState(() {
                            // password = value!.trim();
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Card(
                      color: Colors.white,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(left: 10),
                          hintText: 'to_email'.tr,
                        ),
                        // validator: (value) {
                        //   if (value.isEmpty) {
                        //     // print('value empty');
                        //     return "enter_password".tr;
                        //   } else {
                        //     return null;
                        //   }
                        // },
                        onSaved: (value) {
                          setState(() {
                            // password = value!.trim();
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Card(
                      color: Colors.white,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: TextFormField(
                        maxLines: 3,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(left: 10, top: 10),
                          hintText: 'gift_message'.tr,
                        ),
                        // validator: (value) {
                        //   if (value.isEmpty) {
                        //     // print('value empty');
                        //     return "enter_password".tr;
                        //   } else {
                        //     return null;
                        //   }
                        // },
                        onSaved: (value) {
                          setState(() {
                            // password = value!.trim();
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Card(
                      color: Colors.white,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(left: 10),
                          hintText: 'from_name'.tr,
                        ),
                        // validator: (value) {
                        //   if (value.isEmpty) {
                        //     // print('value empty');
                        //     return "enter_password".tr;
                        //   } else {
                        //     return null;
                        //   }
                        // },
                        onSaved: (value) {
                          setState(() {
                            // password = value!.trim();
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Card(
                      color: Colors.white,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(left: 10, top: 13),
                            hintText: 'send_on_this_date'.tr,
                            suffixIcon: Image.asset(Images.icCalender)),
                        // validator: (value) {
                        //   if (value.isEmpty) {
                        //     // print('value empty');
                        //     return "enter_password".tr;
                        //   } else {
                        //     return null;
                        //   }
                        // },
                        onSaved: (value) {
                          setState(() {
                            // password = value!.trim();
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    CustomButton(
                      radius: 10,
                      buttonText: 'procced_to_pay'.tr,
                      fontSize: 17,
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
