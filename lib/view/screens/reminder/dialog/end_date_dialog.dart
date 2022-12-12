import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart/util/styles.dart';
import 'package:table_calendar/table_calendar.dart';

class EndDateDialog extends StatefulWidget {
  const EndDateDialog({Key key}) : super(key: key);

  @override
  State<EndDateDialog> createState() => _EndDateDialogState();
}

class _EndDateDialogState extends State<EndDateDialog> {
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
                'end_date'.tr,
                style: robotoRegular.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff09323e),
                ),
              ),
              SizedBox(height: 36),
              // TableCalendar(
              //   calendarController: _controller,
              //   locale: "en_Us",

              //   // rowHeight: ,

              //   headerStyle: HeaderStyle(
              //       titleTextStyle: robotoRegular.copyWith(
              //           fontSize: 12,
              //           fontWeight: FontWeight.w600,
              //           color: Color(0xff222222)),
              //       formatButtonVisible: false,
              //       centerHeaderTitle: true),

              //   availableGestures: AvailableGestures.all,
              //   startDay: DateTime.utc(2010),
              //   endDay: DateTime.utc(2030),
              //   builders: CalendarBuilders(
              //     selectedDayBuilder: (context, date, events) => Container(
              //         margin: const EdgeInsets.all(5.0),
              //         alignment: Alignment.center,
              //         decoration: BoxDecoration(
              //             color: Color(0xff0eacd7),
              //             borderRadius: BorderRadius.circular(30)),
              //         child: Text(
              //           date.day.toString(),
              //           style: TextStyle(color: Colors.white),
              //         )),
              //     todayDayBuilder: (context, date, events) => Container(
              //         margin: const EdgeInsets.all(5.0),
              //         alignment: Alignment.center,
              //         decoration: BoxDecoration(
              //             // color: Colors.blue,
              //             borderRadius: BorderRadius.circular(30)),
              //         child: Text(
              //           date.day.toString(),
              //           style: TextStyle(color: Color(0xff222222)),
              //         )),
              //     weekendDayBuilder: (context, date, events) => Container(
              //         margin: const EdgeInsets.all(5.0),
              //         alignment: Alignment.center,
              //         decoration: BoxDecoration(
              //             // color: Colors.blue,
              //             borderRadius: BorderRadius.circular(20)),
              //         child: Text(
              //           date.day.toString(),
              //           style: TextStyle(color: Color(0xff222222)),
              //         )),
              //   ),
              // ),
              TableCalendar(
                headerStyle: HeaderStyle(
                  titleTextStyle: robotoRegular.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff222222)),
                  centerHeaderTitle: true,
                  formatButtonVisible: false,
                ),
                onDaySelected: ((
                  day,
                  events,
                  holidays,
                ) {
                  // setState(() {
                  //   _selectedDate = day.day.toString();
                  //   print("select date-->" + day.day.toString());
                  // });
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
              ),
              SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }
}
