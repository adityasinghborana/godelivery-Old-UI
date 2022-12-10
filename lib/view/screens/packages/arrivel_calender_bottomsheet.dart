import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sixam_mart/util/styles.dart';
import 'package:sixam_mart/view/screens/packages/arrival_time_bottomsheet.dart';
import 'package:table_calendar/table_calendar.dart';

class ArrivalCalenderBottomsheet extends StatefulWidget {
  const ArrivalCalenderBottomsheet({Key key}) : super(key: key);

  @override
  State<ArrivalCalenderBottomsheet> createState() =>
      _ArrivalCalenderBottomsheetState();
}

class _ArrivalCalenderBottomsheetState
    extends State<ArrivalCalenderBottomsheet> {
  CalendarController _controller;
  String _selectedDate;

  @override
  void initState() {
    super.initState();
    _controller = CalendarController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xffffffff),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12), topRight: Radius.circular(12))),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'arrival_time'.tr,
              style: TextStyle(
                  fontSize: 14,
                  color: Color(0xff09323e),
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 17),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffe3e3e3)),
                        color: Color(0xfff5f5f5),
                        borderRadius: BorderRadius.circular(7)),
                    child: Center(
                      child: Text(
                        'asap'.tr.toUpperCase(),
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff818181),
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    decoration: BoxDecoration(
                        //border: Border.all(color: Color(0xffe3e3e3)),
                        color: Color(0xffbf1d2d),
                        borderRadius: BorderRadius.circular(7)),
                    child: Center(
                      child: Text(
                        'schedule_for_later'.tr,
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0xffffffff),
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 17),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // TableCalendar(
                //   calendarController: _controller,
                // ),
                TableCalendar(
                  headerStyle: HeaderStyle(
                    centerHeaderTitle: true,
                    formatButtonVisible: false,
                  ),
                  // initialCalendarFormat: CalendarFormat.month,
                  // calendarStyle: CalendarStyle(
                  //     todayColor: Colors.blue,
                  //     selectedColor: Theme.of(context).primaryColor,
                  //     todayStyle: TextStyle(
                  //         fontWeight: FontWeight.bold,
                  //         fontSize: 22.0,
                  //         color: Colors.white)),

                  // headerStyle: HeaderStyle(
                  //   centerHeaderTitle: true,
                  //   // formatButtonDecoration: BoxDecoration(
                  //   //   color: Colors.brown,
                  //   //   borderRadius: BorderRadius.circular(22.0),
                  //   // ),
                  //   formatButtonTextStyle: TextStyle(color: Colors.white),
                  //   formatButtonShowsNext: false,
                  // ),
                  // startingDayOfWeek: StartingDayOfWeek.monday,
                  onDaySelected: ((
                    day,
                    events,
                    holidays,
                  ) {
                    setState(() {
                      _selectedDate = day.day.toString();
                      print("select date-->" + day.day.toString());
                    });
                  }),

                  builders: CalendarBuilders(
                    selectedDayBuilder: (context, date, events) => Container(
                        margin: const EdgeInsets.all(5.0),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Color(0xff0eacd7),
                            borderRadius: BorderRadius.circular(25)),
                        child: Text(
                          date.day.toString(),
                          style: TextStyle(color: Colors.white),
                        )),
                    todayDayBuilder: (context, date, events) => Container(
                        margin: const EdgeInsets.all(5.0),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            // color: Colors.blue,
                            borderRadius: BorderRadius.circular(25)),
                        child: Text(
                          date.day.toString(),
                          style: TextStyle(color: Color(0xff222222)),
                        )),
                    weekendDayBuilder: (context, date, events) => Container(
                        margin: const EdgeInsets.all(5.0),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            // color: Colors.blue,
                            borderRadius: BorderRadius.circular(20)),
                        child: Text(
                          date.day.toString(),
                          style: TextStyle(color: Color(0xff222222)),
                        )),
                  ),
                  calendarController: _controller,
                )
              ],
            ),
            SizedBox(height: 40),
            InkWell(
              onTap: () {
                Get.back();
                Get.bottomSheet(
                    ArrivalTimeBottomsheet(
                      selectedDate: _selectedDate,
                    ),
                    backgroundColor: Colors.transparent,
                    isScrollControlled: true);
              },
              child: Container(
                  padding: EdgeInsets.fromLTRB(11, 15, 27, 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffbf1d2d)),
                  child: Center(
                    child: Text("confirm".tr,
                        style: robotoMedium.copyWith(
                          color: Color(0xffffffff),
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        )),
                  )),
            ),
            SizedBox(height: 22),
          ],
        ),
      ),
    );
  }
}
