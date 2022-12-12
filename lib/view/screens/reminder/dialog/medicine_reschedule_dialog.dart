import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sixam_mart/util/styles.dart';

class MedicineRescheduleDialog extends StatefulWidget {
  const MedicineRescheduleDialog({Key key}) : super(key: key);

  @override
  State<MedicineRescheduleDialog> createState() =>
      _MedicineRescheduleDialogState();
}

class _MedicineRescheduleDialogState extends State<MedicineRescheduleDialog> {
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
      content: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: InkWell(
                onTap: () {
                  Get.back();
                },
                child: Icon(
                  Icons.close,
                  color: Color(0xff000000),
                ),
              ),
            ),
            SizedBox(height: 30),
            Text(
              'reschedule'.tr,
              style: robotoRegular.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff09323e)),
            ),
            SizedBox(height: 63),
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
            SizedBox(height: 26),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.arrow_back_ios,
                ),
                SizedBox(width: 24),
                Text(
                  '22 Jub, Tomorrow',
                  style: robotoRegular.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff09323e),
                  ),
                ),
                SizedBox(width: 24),
                Icon(
                  Icons.arrow_forward_ios,
                ),
              ],
            ),
            SizedBox(height: 26),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 37),
              decoration: BoxDecoration(
                  color: Color(0xff0eacd7),
                  borderRadius: BorderRadius.circular(5)),
              child: Text(
                'save'.tr,
                style: robotoRegular.copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: Color(0xffffffff),
                ),
              ),
            ),
            SizedBox(
              height: 45,
            )
          ],
        ),
      ),
    );
  }
}
