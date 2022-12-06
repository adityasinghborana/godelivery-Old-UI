import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:sixam_mart/util/styles.dart';

class AddNewPateintPage extends StatefulWidget {
  const AddNewPateintPage({Key key}) : super(key: key);

  @override
  State<AddNewPateintPage> createState() => _AddNewPateintPageState();
}

class _AddNewPateintPageState extends State<AddNewPateintPage> {
  String genderValue;
  final gender = ['Male', 'Female'];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 29),
      decoration: BoxDecoration(
        color: Color(0xffffffff),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12), topRight: Radius.circular(12)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "add_new_member".tr,
                style: robotoRegular.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff09323e)),
              ),
              Icon(
                Icons.close,
                color: Color(0xff000000),
              )
            ],
          ),
          SizedBox(height: 32),
          Card(
            shape: RoundedRectangleBorder(
                side: BorderSide(color: Color(0xffdedede)),
                borderRadius: BorderRadius.circular(8)),
            elevation: 5,
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffdedede)),
                  borderRadius: BorderRadius.circular(8)),
              child: TextFormField(
                decoration: textFieldInputDecoration3.copyWith(
                    enabledBorder:
                        OutlineInputBorder(borderSide: BorderSide.none),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 9, horizontal: 15),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color(0xffdedede).withOpacity(0.25))),
                    hintText: 'member_name'.tr,
                    hintStyle: TextStyle(
                        fontSize: 12,
                        color: Color(0xff979797),
                        fontWeight: FontWeight.w400)),
                onSaved: (value) {
                  setState(() {
                    // password = value!.trim();
                  });
                },
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  elevation: 5,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffdedede)),
                        borderRadius: BorderRadius.circular(8)),
                    child: TextFormField(
                      decoration: textFieldInputDecoration3.copyWith(
                          enabledBorder:
                              OutlineInputBorder(borderSide: BorderSide.none),
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 9, horizontal: 15),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xffdedede).withOpacity(0.25))),
                          hintText: 'dob'.tr,
                          hintStyle: TextStyle(
                              fontSize: 12,
                              color: Color(0xff979797),
                              fontWeight: FontWeight.w400)),
                      onSaved: (value) {
                        setState(() {
                          // password = value!.trim();
                        });
                      },
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  elevation: 5,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Color(0xffdedede))),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        hint: Text(
                          "gender".tr,
                          style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff979797),
                              fontWeight: FontWeight.w400),
                        ),
                        value: genderValue,
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff979797),
                            fontWeight: FontWeight.w400),
                        iconSize: 30,
                        icon: const Icon(
                          Icons.keyboard_arrow_down_outlined,
                          color: Color(0xff979797),
                        ),
                        isExpanded: true,
                        items: gender.map(genderMethod).toList(),
                        onChanged: (value) =>
                            setState(() => genderValue = value),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  elevation: 5,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Color(0xffdedede))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Text(
                                "weight".tr,
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xff979797),
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "lb".tr,
                          style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff979797),
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "kg".tr,
                          style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff979797),
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  elevation: 5,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Color(0xffdedede))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Text(
                                "height".tr,
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xff979797),
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "ft".tr,
                          style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff979797),
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "cm".tr,
                          style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff979797),
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  DropdownMenuItem<String> genderMethod(String item) => DropdownMenuItem(
      value: item,
      child: Text(
        item,
      ));
}
