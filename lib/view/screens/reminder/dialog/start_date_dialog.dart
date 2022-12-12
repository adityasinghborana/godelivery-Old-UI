import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../../util/styles.dart';

class StartDateDialog extends StatefulWidget {
  const StartDateDialog({Key key}) : super(key: key);

  @override
  State<StartDateDialog> createState() => _StartDateDialogState();
}

class _StartDateDialogState extends State<StartDateDialog> {
  CalendarController _controller;
  DateTime today = DateTime.now();

  @override
  void initState() {
    // TODO: implement initState
    _controller = CalendarController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Expanded(
        flex: 1,
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Icon(
                    Icons.close,
                    size: 20,
                    color: Color(
                      0xff09323e,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 32),
              Text(
                'start_date'.tr,
                style: robotoRegular.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff09323e),
                ),
              ),
              SizedBox(height: 36),
              TableCalendar(
                calendarController: _controller,
                locale: "en_Us",

                // rowHeight: ,

                headerStyle: HeaderStyle(
                    titleTextStyle: robotoRegular.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff222222)),
                    formatButtonVisible: false,
                    centerHeaderTitle: true),
                // builders: todayDayBuilder: (context, date, events) => Container(
                //       margin: const EdgeInsets.all(5.0),
                //       alignment: Alignment.center,
                //       decoration: BoxDecoration(
                //           // color: Colors.blue,
                //           borderRadius: BorderRadius.circular(25)),
                //       child: Text(
                //         date.day.toString(),
                //         style: TextStyle(color: Color(0xff222222)),
                //       )),
                availableGestures: AvailableGestures.all,
                startDay: DateTime.utc(2010),
                endDay: DateTime.utc(2030),
                builders: CalendarBuilders(
                  selectedDayBuilder: (context, date, events) => Container(
                      margin: const EdgeInsets.all(5.0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Color(0xff0eacd7),
                          borderRadius: BorderRadius.circular(30)),
                      child: Text(
                        date.day.toString(),
                        style: TextStyle(color: Colors.white),
                      )),
                  todayDayBuilder: (context, date, events) => Container(
                      margin: const EdgeInsets.all(5.0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          // color: Colors.blue,
                          borderRadius: BorderRadius.circular(30)),
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
              ),
              SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }
}
