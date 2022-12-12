import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sixam_mart/util/images.dart';
import 'package:sixam_mart/util/styles.dart';
import 'package:sixam_mart/view/screens/reminder/medicine_does_time_table.dart';
import 'package:sixam_mart/view/screens/reminder/set_routine_list_tile.dart';

class SetRoutinePage extends StatefulWidget {
  const SetRoutinePage({Key key}) : super(key: key);

  @override
  State<SetRoutinePage> createState() => _SetRoutinePageState();
}

class _SetRoutinePageState extends State<SetRoutinePage> {
  String dailyValue;
  final daily = ['Daily', 'weekly'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                Padding(
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
                              border: Border.all(color: Color(0xffdedede)),
                              borderRadius: BorderRadius.circular(8)),
                          child: TextFormField(
                            decoration: textFieldInputDecoration3.copyWith(
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
                      Text(
                        "schedule_".tr,
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff09323e),
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(height: 15),
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
                              border: Border.all(color: Color(0xffdedede))),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              hint: Text(
                                "daily".tr,
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xff979797),
                                    fontWeight: FontWeight.w400),
                              ),
                              value: dailyValue,
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
                              items: daily.map(dailyMethod).toList(),
                              onChanged: (value) =>
                                  setState(() => dailyValue = value),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      Text(
                        "set_routine".tr,
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff09323e),
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(height: 30),
                    ],
                  ),
                ),
                Expanded(
                  child: SizedBox(
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
                                return SetRoutineListTile();
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
            color: Color(0xffffffff),
            padding: EdgeInsets.only(left: 25, right: 39, top: 12, bottom: 45),
            // decoration: BoxDecoration(border: Border.all()),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add,
                      size: 24,
                      color: Color(0xff0eacd7),
                    ),
                    SizedBox(width: 20),
                    Text(
                      "add_new_event".tr,
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff0eacd7),
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                InkWell(
                  onTap: () {
                    Get.to(MedicineDoesTimeTable());
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    padding: EdgeInsets.symmetric(
                      vertical: 10,
                    ),
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
              ],
            ),
          ),
        ],
      ),
    );
  }

  DropdownMenuItem<String> dailyMethod(String item2) => DropdownMenuItem(
      value: item2,
      child: Text(
        item2,
      ));
}
