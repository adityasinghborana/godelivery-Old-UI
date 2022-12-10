import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:sixam_mart/grocery/widget/take_does_dialog.dart';
import 'package:sixam_mart/util/styles.dart';
import 'package:sixam_mart/view/screens/reminder/dialog/medicine_time_period_dialog.dart';

class ReminderPage extends StatefulWidget {
  const ReminderPage({Key key}) : super(key: key);

  @override
  State<ReminderPage> createState() => _ReminderPageState();
}

class _ReminderPageState extends State<ReminderPage> {
  String tMValue;
  final typeOfMed = ['Tablet', 'Suspention', 'Other'];

  String addInstrucrionValue;
  final addInstrucrion = [
    'Before Eating',
    'While Eating',
    'After Eating',
    'Doesn"t matter'
  ];

  String strengthValue;
  final strength = ['250 mg', '500 mg', '600 mg', '800 mg', 'Others'];

  String takeItValue;
  final takeIt = [
    'Once Daily',
    'Twice Daily',
    '3 times a Daily',
    '4 times a Daily',
    'Every 6 hours',
    'Only as needed',
    'Others'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
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
                        'reminder'.tr,
                        style: robotoRegular.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff000000)),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 26),
                Divider(
                  thickness: 4,
                ),
                Expanded(
                  child: SizedBox(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 30),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Card(
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(color: Color(0xffdedede)),
                                  borderRadius: BorderRadius.circular(8)),
                              // elevation: 5,
                              child: Container(
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Color(0xffdedede)),
                                    borderRadius: BorderRadius.circular(8)),
                                child: TextFormField(
                                  decoration:
                                      textFieldInputDecoration3.copyWith(
                                          enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide.none),
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 9, horizontal: 15),
                                          border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color(0xffdedede)
                                                      .withOpacity(0.25))),
                                          hintText: 'medicine_name'.tr,
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
                            SizedBox(height: 30),
                            Row(
                              children: [
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
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          border: Border.all(
                                              color: Color(0xffdedede))),
                                      child: DropdownButtonHideUnderline(
                                        child: DropdownButton<String>(
                                          hint: Text(
                                            "type_of_med".tr,
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Color(0xff979797),
                                                fontWeight: FontWeight.w400),
                                          ),
                                          value: tMValue,
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
                                          items: typeOfMed
                                              .map(buildMenuItem2)
                                              .toList(),
                                          onChanged: (value) =>
                                              setState(() => tMValue = value),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 24),
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
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          border: Border.all(
                                              color: Color(0xffdedede))),
                                      child: DropdownButtonHideUnderline(
                                        child: DropdownButton<String>(
                                          hint: Text(
                                            "strength".tr,
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Color(0xff979797),
                                                fontWeight: FontWeight.w400),
                                          ),
                                          value: strengthValue,
                                          iconSize: 30,
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Color(0xff979797),
                                              fontWeight: FontWeight.w400),
                                          icon: const Icon(
                                            Icons.keyboard_arrow_down_outlined,
                                            color: Color(0xff979797),
                                          ),
                                          isExpanded: true,
                                          items: strength
                                              .map(strengthMethod)
                                              .toList(),
                                          onChanged: (value) => setState(
                                              () => strengthValue = value),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 30),
                            Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              elevation: 5,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border:
                                        Border.all(color: Color(0xffdedede))),
                                child: TextFormField(
                                  onTap: () {
                                    Get.dialog(MedicineTimePeriodDialog());
                                  },
                                  decoration:
                                      textFieldInputDecoration3.copyWith(
                                          enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide.none),
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 9, horizontal: 15),
                                          border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color(0xff979797)
                                                      .withOpacity(0.25))),
                                          hintText: 'medicine_time_period'.tr,
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
                            SizedBox(height: 30),
                            Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              elevation: 5,
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border:
                                        Border.all(color: Color(0xffdedede))),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<String>(
                                    hint: Text(
                                      "add_instruction".tr,
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xff979797),
                                          fontWeight: FontWeight.w400),
                                    ),
                                    value: addInstrucrionValue,
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
                                    items:
                                        typeOfMed.map(addInstruction).toList(),
                                    onChanged: (value) => setState(
                                        () => addInstrucrionValue = value),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 30),
                            Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              elevation: 5,
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border:
                                        Border.all(color: Color(0xffdedede))),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<String>(
                                    hint: Text(
                                      "how_often_do".tr,
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xff979797),
                                          fontWeight: FontWeight.w400),
                                    ),
                                    value: takeItValue,
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
                                    items: takeIt.map(takeItMethod).toList(),
                                    onChanged: (value) =>
                                        setState(() => takeItValue = value),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: InkWell(
              onTap: () {
                Get.dialog(TakeDoesDialog());
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
                      "save".tr,
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
    );
  }

  DropdownMenuItem<String> buildMenuItem2(String item2) => DropdownMenuItem(
      value: item2,
      child: Text(
        item2,
      ));

  DropdownMenuItem<String> addInstruction(String item) => DropdownMenuItem(
      value: item,
      child: Text(
        item,
      ));

  DropdownMenuItem<String> strengthMethod(String item) => DropdownMenuItem(
      value: item,
      child: Text(
        item,
      ));

  DropdownMenuItem<String> takeItMethod(String item) => DropdownMenuItem(
      value: item,
      child: Text(
        item,
      ));
}
