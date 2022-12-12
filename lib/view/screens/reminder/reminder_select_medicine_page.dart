import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart/util/styles.dart';
import 'package:sixam_mart/view/screens/reminder/medicine_does_list_tile.dart';

class ReminderSelectMedicinePage extends StatefulWidget {
  const ReminderSelectMedicinePage({Key key}) : super(key: key);

  @override
  State<ReminderSelectMedicinePage> createState() =>
      _ReminderSelectMedicinePageState();
}

class _ReminderSelectMedicinePageState
    extends State<ReminderSelectMedicinePage> {
  String tMValue;
  final typeOfMed = ['Tablet', 'Suspention', 'Other'];

  String strengthValue;
  final strength = ['250 mg', '500 mg', '600 mg', '800 mg', 'Others'];

  String doesnotMetorValue;
  final doesnotMetor = ['Doesn"t metter', 'ksjdghfk'];

  String twiceDailyValue;
  final twiceDaily = ['Twice Daily', 'Twice weekly'];

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
                SizedBox(height: 30),
                Expanded(
                  child: SizedBox(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
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
                                              color: Color(0xff09323e),
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
                                                color: Color(0xff09323e),
                                                fontWeight: FontWeight.w400),
                                          ),
                                          value: tMValue,
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Color(0xff09323e),
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
                                                color: Color(0xff09323e),
                                                fontWeight: FontWeight.w400),
                                          ),
                                          value: strengthValue,
                                          iconSize: 30,
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Color(0xff09323e),
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
                                          hintText: 'medication_from'.tr,
                                          hintStyle: TextStyle(
                                              fontSize: 12,
                                              color: Color(0xff09323e),
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
                                      "doest_metter",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xff09323e),
                                          fontWeight: FontWeight.w400),
                                    ),
                                    value: doesnotMetorValue,
                                    iconSize: 30,
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xff09323e),
                                        fontWeight: FontWeight.w400),
                                    icon: const Icon(
                                      Icons.keyboard_arrow_down_outlined,
                                      color: Color(0xff979797),
                                    ),
                                    isExpanded: true,
                                    items: doesnotMetor
                                        .map(doesntMeterMethod)
                                        .toList(),
                                    onChanged: (value) => setState(
                                        () => doesnotMetorValue = value),
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
                                      "twice_daily",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xff09323e),
                                          fontWeight: FontWeight.w400),
                                    ),
                                    value: twiceDailyValue,
                                    iconSize: 30,
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xff09323e),
                                        fontWeight: FontWeight.w400),
                                    icon: const Icon(
                                      Icons.keyboard_arrow_down_outlined,
                                      color: Color(0xff979797),
                                    ),
                                    isExpanded: true,
                                    items: twiceDaily
                                        .map(twiceDailyMethod)
                                        .toList(),
                                    onChanged: (value) =>
                                        setState(() => twiceDailyValue = value),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 33),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'timing'.tr,
                    style: robotoRegular.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff09323e)),
                  ),
                ),
                SizedBox(height: 15),
                Expanded(
                  child: SizedBox(
                    // height: 200,
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListView.builder(
                              itemCount: 5,
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemBuilder: ((context, index) {
                                return MedicineDoesListTile();
                              }))
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  blurRadius: 0.25, color: Color(0xff000000).withOpacity(0.25))
            ]),
            child: Container(
              color: Color(0xffffffff),
              padding:
                  EdgeInsets.only(left: 39, right: 39, top: 12, bottom: 45),
              // decoration: BoxDecoration(border: Border.all()),
              child: Center(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      color: Color(0xff0eacd7),
                      borderRadius: BorderRadius.circular(9)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'save'.tr,
                        style: robotoRegular.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: Color(0xffffffff)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  DropdownMenuItem<String> strengthMethod(String item) => DropdownMenuItem(
      value: item,
      child: Text(
        item,
      ));

  DropdownMenuItem<String> buildMenuItem2(String item) => DropdownMenuItem(
      value: item,
      child: Text(
        item,
      ));
  DropdownMenuItem<String> doesntMeterMethod(String item2) => DropdownMenuItem(
      value: item2,
      child: Text(
        item2,
      ));
  DropdownMenuItem<String> twiceDailyMethod(String item2) => DropdownMenuItem(
      value: item2,
      child: Text(
        item2,
      ));
}
