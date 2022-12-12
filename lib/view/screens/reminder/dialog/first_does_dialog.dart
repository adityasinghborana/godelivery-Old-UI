import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sixam_mart/view/screens/reminder/dialog/second_does_dialog.dart';
import 'package:sixam_mart/util/styles.dart';

class TakeDoesDialog extends StatefulWidget {
  const TakeDoesDialog({Key key}) : super(key: key);

  @override
  State<TakeDoesDialog> createState() => _TakeDoesDialogState();
}

class _TakeDoesDialogState extends State<TakeDoesDialog> {
  double loginAlign = -1;
  double signInAlign = 1;
  double xAlign;
  Color selectedColor = Colors.white;
  Color normalColor = Colors.black54;
  Color loginColor;
  Color signInColor;

  TimeOfDay time = TimeOfDay.now();

  _showTime() async {
    TimeOfDay newtime =
        await showTimePicker(context: context, initialTime: time);
    if (newtime == null) return;
    setState(() {
      time = newtime;
    });
  }

  @override
  void initState() {
    super.initState();
    xAlign = loginAlign;
    loginColor = selectedColor;
    signInColor = normalColor;
  }

  @override
  Widget build(BuildContext context) {
    final hours = time.hour.toString().padLeft(2, '0');
    final minutes = time.minute.toString().padLeft(2, '0');
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerRight,
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
          Text(
            'take_your_first_does'.tr,
            style: robotoRegular.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Color(0xff09323e),
            ),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 4,
                            color: Color(0xff000000).withOpacity(0.4))
                      ]),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                    decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: Color(0xffdedede))),
                    child: Center(
                      child: Text(
                        'morning'.tr,
                        style: robotoRegular.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff979797),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 43),
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 4,
                            color: Color(0xff000000).withOpacity(0.4))
                      ]),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                    decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: Color(0xffdedede))),
                    child: Center(
                      child: Text(
                        'noon'.tr,
                        style: robotoRegular.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff979797),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 31),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 4,
                            color: Color(0xff000000).withOpacity(0.4))
                      ]),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                    decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: Color(0xffdedede))),
                    child: Center(
                      child: Text(
                        'evening'.tr,
                        style: robotoRegular.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff979797),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 43),
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 4,
                            color: Color(0xff000000).withOpacity(0.4))
                      ]),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                    decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: Color(0xffdedede))),
                    child: Center(
                      child: Text(
                        'night'.tr,
                        style: robotoRegular.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff979797),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'time'.tr,
                      style: robotoRegular.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff000000),
                      ),
                    ),
                    SizedBox(width: 18),
                    InkWell(
                      onTap: () async {
                        _showTime();
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        decoration: BoxDecoration(
                            color: Color(0xffe5e5e5),
                            borderRadius: BorderRadius.circular(9)),
                        child: Text(
                          '${hours}:${minutes}',
                          style: robotoRegular.copyWith(
                            fontSize: 22,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 8),
              Container(
                width: 110,
                height: 36,
                decoration: BoxDecoration(
                  color: Color(0xffe5e5e5),
                  borderRadius: BorderRadius.all(
                    Radius.circular(9),
                  ),
                ),
                child: Stack(
                  children: [
                    AnimatedAlign(
                      alignment: Alignment(xAlign, 0),
                      duration: Duration(milliseconds: 300),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7)),
                        child: Container(
                          width: 50,
                          height: 32,
                          // height: 100,
                          decoration: BoxDecoration(
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.all(
                              Radius.circular(7),
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          xAlign = loginAlign;
                          loginColor = selectedColor;

                          signInColor = normalColor;
                        });
                      },
                      child: Align(
                        alignment: Alignment(-5, 0),
                        child: Container(
                          width: 100,
                          color: Colors.transparent,
                          alignment: Alignment.center,
                          child: Text(
                            'am'.tr.toUpperCase(),
                            style: robotoRegular.copyWith(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          xAlign = signInAlign;
                          signInColor = selectedColor;

                          loginColor = normalColor;
                        });
                      },
                      child: Align(
                        alignment: Alignment(5, 0),
                        child: Container(
                          width: 100,
                          color: Colors.transparent,
                          alignment: Alignment.center,
                          child: Text(
                            'pm'.tr.toUpperCase(),
                            style: robotoRegular.copyWith(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 41),
          Center(
            child: InkWell(
              onTap: () {
                Get.back();
                Get.dialog(SecondDoesDialog());
              },
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 74, vertical: 10),
                  decoration: BoxDecoration(
                      color: Color(0xff0eacd7),
                      borderRadius: BorderRadius.circular(9)),
                  child: Text(
                    'next'.tr,
                    style: robotoRegular.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: Color(0xffffffff),
                    ),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
