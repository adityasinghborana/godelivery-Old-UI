import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart/my_record/patient_list_page.dart';
import 'package:sixam_mart/util/styles.dart';

class AddNewPateintPage extends StatefulWidget {
  const AddNewPateintPage({Key key}) : super(key: key);

  @override
  State<AddNewPateintPage> createState() => _AddNewPateintPageState();
}

class _AddNewPateintPageState extends State<AddNewPateintPage> {
  bool hypertentionYes = false;
  bool hypertentionNo = false;
  bool diabetesYes = false;
  bool diabetesNo = false;
  bool asthmaYes = false;
  bool asthmaNo = false;
  bool ulcerYes = false;
  bool ulcerNo = false;
  bool seizuresYes = false;
  bool seizuresNo = false;

  String genderValue;
  final gender = ['Male', 'Female'];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 29),
      decoration: BoxDecoration(
        color: Color(0xffffffff),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12), topRight: Radius.circular(12)),
      ),
      child: SingleChildScrollView(
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
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Icon(
                    Icons.close,
                    color: Color(0xff000000),
                  ),
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
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 9, horizontal: 15),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color:
                                        Color(0xffdedede).withOpacity(0.25))),
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
                      padding:
                          EdgeInsets.symmetric(horizontal: 8, vertical: 15),
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
                      padding:
                          EdgeInsets.symmetric(horizontal: 8, vertical: 15),
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
            ),
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "do_you_have".tr,
                        style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff09323e),
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                Text(
                  "no".tr,
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff09323e),
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(width: 35),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text(
                    "yes".tr,
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff09323e),
                        fontWeight: FontWeight.w700),
                  ),
                )
              ],
            ),
            SizedBox(height: 14),
            Column(
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
                          Text(
                            "hypertention".tr,
                            style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff979797),
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    Checkbox(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      side: MaterialStateBorderSide.resolveWith(
                        (states) =>
                            BorderSide(width: 1.0, color: Color(0xff979797)),
                      ),
                      splashRadius: 0.4,
                      activeColor: Color(0xff0eacd7),
                      value: this.hypertentionYes,
                      onChanged: (bool value) {
                        setState(() {
                          this.hypertentionYes = value;
                        });
                      },
                    ),
                    SizedBox(width: 10),
                    Checkbox(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      side: MaterialStateBorderSide.resolveWith(
                        (states) =>
                            BorderSide(width: 1.0, color: Color(0xff979797)),
                      ),
                      activeColor: Color(0xff0eacd7),
                      value: this.hypertentionNo,
                      onChanged: (bool value) {
                        setState(() {
                          this.hypertentionNo = value;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "diabetes".tr,
                            style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff979797),
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    Checkbox(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      side: MaterialStateBorderSide.resolveWith(
                        (states) =>
                            BorderSide(width: 1.0, color: Color(0xff979797)),
                      ),
                      splashRadius: 0.4,
                      activeColor: Color(0xff0eacd7),
                      value: this.diabetesYes,
                      onChanged: (bool value) {
                        setState(() {
                          this.diabetesYes = value;
                        });
                      },
                    ),
                    SizedBox(width: 10),
                    Checkbox(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      side: MaterialStateBorderSide.resolveWith(
                        (states) =>
                            BorderSide(width: 1.0, color: Color(0xff979797)),
                      ),
                      activeColor: Color(0xff0eacd7),
                      value: this.diabetesNo,
                      onChanged: (bool value) {
                        setState(() {
                          this.diabetesNo = value;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "asthma".tr,
                            style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff979797),
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    Checkbox(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      side: MaterialStateBorderSide.resolveWith(
                        (states) =>
                            BorderSide(width: 1.0, color: Color(0xff979797)),
                      ),
                      splashRadius: 0.4,
                      activeColor: Color(0xff0eacd7),
                      value: this.asthmaYes,
                      onChanged: (bool value) {
                        setState(() {
                          this.asthmaYes = value;
                        });
                      },
                    ),
                    SizedBox(width: 10),
                    Checkbox(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      side: MaterialStateBorderSide.resolveWith(
                        (states) =>
                            BorderSide(width: 1.0, color: Color(0xff979797)),
                      ),
                      activeColor: Color(0xff0eacd7),
                      value: this.asthmaNo,
                      onChanged: (bool value) {
                        setState(() {
                          this.asthmaNo = value;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "ulcer".tr,
                            style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff979797),
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    Checkbox(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      side: MaterialStateBorderSide.resolveWith(
                        (states) =>
                            BorderSide(width: 1.0, color: Color(0xff979797)),
                      ),
                      splashRadius: 0.4,
                      activeColor: Color(0xff0eacd7),
                      value: this.ulcerYes,
                      onChanged: (bool value) {
                        setState(() {
                          this.ulcerYes = value;
                        });
                      },
                    ),
                    SizedBox(width: 10),
                    Checkbox(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      side: MaterialStateBorderSide.resolveWith(
                        (states) =>
                            BorderSide(width: 1.0, color: Color(0xff979797)),
                      ),
                      activeColor: Color(0xff0eacd7),
                      value: this.ulcerNo,
                      onChanged: (bool value) {
                        setState(() {
                          this.ulcerNo = value;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "seizures".tr,
                            style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff979797),
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    Checkbox(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      side: MaterialStateBorderSide.resolveWith(
                        (states) =>
                            BorderSide(width: 1.0, color: Color(0xff979797)),
                      ),
                      splashRadius: 0.4,
                      activeColor: Color(0xff0eacd7),
                      value: this.seizuresYes,
                      onChanged: (bool value) {
                        setState(() {
                          this.seizuresYes = value;
                        });
                      },
                    ),
                    SizedBox(width: 10),
                    Checkbox(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      side: MaterialStateBorderSide.resolveWith(
                        (states) =>
                            BorderSide(width: 1.0, color: Color(0xff979797)),
                      ),
                      activeColor: Color(0xff0eacd7),
                      value: this.seizuresNo,
                      onChanged: (bool value) {
                        setState(() {
                          this.seizuresNo = value;
                        });
                      },
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 23),
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
                      hintText: 'specify_your_problem'.tr,
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
            SizedBox(height: 14),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: InkWell(
                onTap: () {
                  Get.back();
                  Get.to(PatientListPage());
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Color(0xff0eacd7),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "add_new_patient".tr,
                        style: robotoRegular.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: Color(0xffffffff)),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  DropdownMenuItem<String> genderMethod(String item) => DropdownMenuItem(
      value: item,
      child: Text(
        item,
      ));
}
