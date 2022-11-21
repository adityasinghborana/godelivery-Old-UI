import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:sixam_mart/util/styles.dart';
import 'package:sixam_mart/view/base/custom_button.dart';

class EmailNewPasswordScreen extends StatefulWidget {
  const EmailNewPasswordScreen({Key key}) : super(key: key);

  @override
  State<EmailNewPasswordScreen> createState() => _EmailNewPasswordScreenState();
}

class _EmailNewPasswordScreenState extends State<EmailNewPasswordScreen> {
  final TextEditingController _passwordController = TextEditingController();
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                ),
                Text('create_new_password'.tr,
                    style: robotoBlack.copyWith(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: Color(0xff09323e))),
                SizedBox(
                  height: 36,
                ),
                Text('your_new_password'.tr,
                    style: robotoBlack.copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xff5c6678))),
                SizedBox(height: 30),
                TextFormField(
                  controller: _passwordController,
                  obscureText: isVisible,
                  decoration: textFieldInputDecoration.copyWith(
                      hintText: 'password'.tr,
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isVisible = !isVisible;
                            });
                          },
                          icon: Icon(isVisible
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined))),
                  validator: (value) {
                    if (value.isEmpty) {
                      // print('value empty');
                      return "enter_password".tr;
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    setState(() {
                      _passwordController.text = value;
                    });
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                Text('must_be_at_least'.tr,
                    style: robotoBlack.copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xff5c6678))),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: _passwordController,
                  obscureText: isVisible,
                  decoration: textFieldInputDecoration.copyWith(
                      hintText: 'confirm_password'.tr,
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isVisible = !isVisible;
                            });
                          },
                          icon: Icon(isVisible
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined))),
                  validator: (value) {
                    if (value.isEmpty) {
                      // print('value empty');
                      return "enter_confirm_password".tr;
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    setState(() {
                      _passwordController.text = value;
                    });
                  },
                ),
                SizedBox(height: 10),
                Text('both_password_must_match'.tr,
                    style: robotoBlack.copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xff5c6678))),
                SizedBox(
                  height: 46,
                ),
                CustomButton(
                  radius: 12,
                  buttonText: 'reset_password'.tr,
                  fontSize: 17,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
