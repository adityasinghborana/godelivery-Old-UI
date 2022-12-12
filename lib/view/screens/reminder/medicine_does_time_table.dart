import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:sixam_mart/util/styles.dart';
import 'package:sixam_mart/view/screens/reminder/dialog/medicine_reminder_add_succesfully_dialog.dart';
import 'package:sixam_mart/view/screens/reminder/dialog/medicine_take_dialog.dart';
import 'package:sixam_mart/view/screens/reminder/medicine_dose_time_table_list.dart';

class MedicineDoesTimeTable extends StatefulWidget {
  const MedicineDoesTimeTable({Key key}) : super(key: key);

  @override
  State<MedicineDoesTimeTable> createState() => _MedicineDoesTimeTableState();
}

class _MedicineDoesTimeTableState extends State<MedicineDoesTimeTable> {
  DatePickerController _controller = DatePickerController();

  DateTime _selectedValue = DateTime.now();
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
                Container(
                  decoration: BoxDecoration(
                      //color: Colors.transparent,
                      borderRadius: BorderRadius.circular(10)),
                  child: DatePicker(
                    DateTime(DateTime.now().year, DateTime.now().month,
                        DateTime.now().day - 2),
                    // width: double.infinity,

                    height: 80,
                    controller: _controller,

                    initialSelectedDate: _selectedValue,

                    selectionColor: Color(0xff0eacd7),
                    selectedTextColor: Colors.white,

                    onDateChange: (date) {
                      // New date selected
                      setState(() {
                        _selectedValue = date;
                        var dateTime =
                            DateTime.parse(_selectedValue.toString());
                        var stdTime = DateFormat('yyyy-MM-dd')
                            .format(dateTime)
                            .toString();

                        // date = _selectedDate;
                        // print('Date--->' + stdTime.toString());
                        // _selectedDate = stdTime;
                      });
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 3),
                  width: double.infinity,
                  color: Color(0xfff3f3f3),
                  child: Center(
                    child: Text(
                      'today'.tr,
                      style: robotoRegular.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff09323e)),
                    ),
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
                                return MedicineTimetableList();
                              }))
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              // Get.dialog(MedicineReminderAddSuccessDialog());
              Get.dialog(MedicineTakeDialog());
            },
            child: Container(
              margin: EdgeInsets.only(left: 39, right: 39, bottom: 53),
              padding: EdgeInsets.symmetric(vertical: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                  color: Color(0xff0eacd7)),
              child: Center(
                child: Text(
                  'add_reminder'.tr,
                  style: robotoRegular.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: Color(0xffffffff)),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
