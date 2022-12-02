import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:sixam_mart/util/styles.dart';
import 'package:sixam_mart/view/base/custom_button.dart';
import 'package:sixam_mart/view/screens/profile/profile_saved_address_list_tile.dart';

class ProfileSavedAddressPage extends StatefulWidget {
  const ProfileSavedAddressPage({Key key}) : super(key: key);

  @override
  State<ProfileSavedAddressPage> createState() =>
      _ProfileSavedAddressPageState();
}

class _ProfileSavedAddressPageState extends State<ProfileSavedAddressPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 60),
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
                  'saved_address'.tr,
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
            thickness: 4,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'this_date_will_be'.tr,
                      style: robotoRegular.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff979797)),
                    ),
                    ListView.builder(
                        itemCount: 10,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: ((context, index) {
                          return ProfileSavedAddressListTile();
                        }))
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
            child: CustomButton(
              radius: 10,
              buttonText: 'add_new_address'.tr,
              fontSize: 17,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
