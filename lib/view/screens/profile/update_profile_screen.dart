import 'package:intl/intl.dart';
import 'package:sixam_mart/controller/auth_controller.dart';
import 'package:sixam_mart/controller/user_controller.dart';
import 'package:sixam_mart/data/model/response/response_model.dart';
import 'package:sixam_mart/data/model/response/userinfo_model.dart';
import 'package:sixam_mart/helper/responsive_helper.dart';
import 'package:sixam_mart/util/dimensions.dart';
import 'package:sixam_mart/util/images.dart';
import 'package:sixam_mart/util/styles.dart';
import 'package:sixam_mart/view/base/custom_button.dart';
import 'package:sixam_mart/view/base/custom_snackbar.dart';
import 'package:sixam_mart/view/base/footer_view.dart';
import 'package:sixam_mart/view/base/menu_drawer.dart';
import 'package:sixam_mart/view/base/not_logged_in_screen.dart';
import 'package:sixam_mart/view/base/web_menu_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UpdateProfileScreen extends StatefulWidget {
  @override
  State<UpdateProfileScreen> createState() => _UpdateProfileScreenState();
}

class _UpdateProfileScreenState extends State<UpdateProfileScreen> {
  String _selectedDate;
  final FocusNode _firstNameFocus = FocusNode();
  final FocusNode _lastNameFocus = FocusNode();
  final FocusNode _emailFocus = FocusNode();
  final FocusNode _phoneFocus = FocusNode();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  TextEditingController _dobController = TextEditingController();
  bool _isLoggedIn;

  @override
  void initState() {
    super.initState();

    _isLoggedIn = Get.find<AuthController>().isLoggedIn();
    if (_isLoggedIn && Get.find<UserController>().userInfoModel == null) {
      Get.find<UserController>().getUserInfo();
    }
    Get.find<UserController>().initData();
  }

  @override
  Widget build(BuildContext context) {
    _dobController.text = _selectedDate;
    return Scaffold(
      backgroundColor: Theme.of(context).cardColor,
      appBar: ResponsiveHelper.isDesktop(context) ? WebMenuBar() : null,
      endDrawer: MenuDrawer(),
      body: GetBuilder<UserController>(builder: (userController) {
        if (userController.userInfoModel != null &&
            _phoneController.text.isEmpty) {
          _firstNameController.text = userController.userInfoModel.fName ?? '';
          _lastNameController.text = userController.userInfoModel.lName ?? '';
          _phoneController.text = userController.userInfoModel.phone ?? '';
          _emailController.text = userController.userInfoModel.email ?? '';
        }

        return _isLoggedIn
            ? userController.userInfoModel != null
                ?
                // ProfileBgWidget(
                //     backButton: true,
                //     circularImage: ImagePickerWidget(
                //       image:
                //           '${Get.find<SplashController>().configModel.baseUrls.customerImageUrl}/${userController.userInfoModel.image}',
                //       onTap: () => userController.pickImage(),
                //       rawFile: userController.rawFile,
                //     ),
                //     mainWidget:
                SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 60),
                        Padding(
                          padding: const EdgeInsets.only(left: 30, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
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
                                      'my_profile'.tr,
                                      style: robotoRegular.copyWith(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          color: Get.isDarkMode
                                              ? Colors.white
                                              : Color(0xff000000)),
                                    ),
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  _updateProfile(userController);
                                },
                                child: Text(
                                  'update'.tr.toUpperCase(),
                                  style: robotoRegular.copyWith(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff0eacd7)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 30),
                        Divider(
                          thickness: 4,
                        ),
                        SizedBox(height: 19),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(children: [
                            Scrollbar(
                                child: SingleChildScrollView(
                              physics: BouncingScrollPhysics(),
                              padding: ResponsiveHelper.isDesktop(context)
                                  ? EdgeInsets.zero
                                  : EdgeInsets.all(
                                      Dimensions.PADDING_SIZE_SMALL),
                              child: Center(
                                  child: FooterView(
                                minHeight: 0.45,
                                child: SizedBox(
                                    width: Dimensions.WEB_MAX_WIDTH,
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'first_name'.tr,
                                            style: robotoRegular.copyWith(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: Theme.of(context)
                                                    .disabledColor),
                                          ),
                                          SizedBox(height: 10),
                                          Container(
                                            color: Get.isDarkMode
                                                ? Colors.transparent
                                                : Colors.white,
                                            child: TextFormField(
                                              controller: _firstNameController,
                                              focusNode: _firstNameFocus,

                                              decoration:
                                                  textFieldInputDecoration2
                                                      .copyWith(),
                                              // validator: (value) {
                                              //   if (value.isEmpty) {
                                              //     // print('value empty');
                                              //     return "enter_password".tr;
                                              //   } else {
                                              //     return null;
                                              //   }
                                              // },
                                              onSaved: (value) {
                                                setState(() {
                                                  // password = value!.trim();
                                                });
                                              },
                                            ),
                                          ),

                                          // MyTextField(
                                          //   hintText: 'first_name'.tr,
                                          //   controller: _firstNameController,
                                          //   focusNode: _firstNameFocus,
                                          //   nextFocus: _lastNameFocus,
                                          //   inputType: TextInputType.name,
                                          //   capitalization:
                                          //       TextCapitalization.words,
                                          // ),
                                          SizedBox(height: 20),

                                          Text(
                                            'last_name'.tr,
                                            style: robotoRegular.copyWith(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: Theme.of(context)
                                                    .disabledColor),
                                          ),
                                          SizedBox(height: 10),
                                          Container(
                                            color: Get.isDarkMode
                                                ? Colors.transparent
                                                : Colors.white,
                                            child: TextFormField(
                                              controller: _lastNameController,
                                              focusNode: _lastNameFocus,
                                              decoration:
                                                  textFieldInputDecoration2
                                                      .copyWith(),
                                              // validator: (value) {
                                              //   if (value.isEmpty) {
                                              //     // print('value empty');
                                              //     return "enter_password".tr;
                                              //   } else {
                                              //     return null;
                                              //   }
                                              // },
                                              onSaved: (value) {
                                                setState(() {
                                                  // password = value!.trim();
                                                });
                                              },
                                            ),
                                          ),

                                          // MyTextField(
                                          //   hintText: 'last_name'.tr,
                                          //   controller: _lastNameController,
                                          //   focusNode: _lastNameFocus,
                                          //   nextFocus: _emailFocus,
                                          //   inputType: TextInputType.name,
                                          //   capitalization:
                                          //       TextCapitalization.words,
                                          // ),
                                          SizedBox(height: 20),

                                          Text(
                                            'phone_number'.tr,
                                            style: robotoRegular.copyWith(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: Theme.of(context)
                                                    .disabledColor),
                                          ),
                                          SizedBox(height: 10),
                                          Container(
                                            color: Get.isDarkMode
                                                ? Colors.transparent
                                                : Colors.white,
                                            child: TextFormField(
                                              controller: _phoneController,
                                              focusNode: _phoneFocus,
                                              decoration:
                                                  textFieldInputDecoration2
                                                      .copyWith(),
                                              // validator: (value) {
                                              //   if (value.isEmpty) {
                                              //     // print('value empty');
                                              //     return "enter_password".tr;
                                              //   } else {
                                              //     return null;
                                              //   }
                                              // },
                                              onSaved: (value) {
                                                setState(() {
                                                  // password = value!.trim();
                                                });
                                              },
                                            ),
                                          ),
                                          // MyTextField(
                                          //   hintText: 'email'.tr,
                                          //   controller: _emailController,
                                          //   focusNode: _emailFocus,
                                          //   inputAction: TextInputAction.done,
                                          //   inputType: TextInputType.emailAddress,
                                          // ),
                                          SizedBox(height: 20),

                                          Text(
                                            'email_address'.tr,
                                            style: robotoRegular.copyWith(
                                                fontSize:
                                                    Dimensions.fontSizeSmall,
                                                color: Theme.of(context)
                                                    .disabledColor),
                                          ),
                                          SizedBox(height: 10),
                                          Container(
                                            color: Get.isDarkMode
                                                ? Colors.transparent
                                                : Colors.white,
                                            child: TextFormField(
                                              controller: _emailController,
                                              focusNode: _emailFocus,
                                              decoration:
                                                  textFieldInputDecoration2
                                                      .copyWith(),
                                              // validator: (value) {
                                              //   if (value.isEmpty) {
                                              //     // print('value empty');
                                              //     return "enter_password".tr;
                                              //   } else {
                                              //     return null;
                                              //   }
                                              // },
                                              onSaved: (value) {
                                                setState(() {
                                                  // password = value!.trim();
                                                });
                                              },
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                          Text(
                                            'to_change_your_email'.tr,
                                            style: robotoRegular.copyWith(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: Theme.of(context)
                                                    .disabledColor),
                                          ),

                                          SizedBox(height: 20),
                                          Text(
                                            'dob'.tr,
                                            style: robotoRegular.copyWith(
                                                fontSize:
                                                    Dimensions.fontSizeSmall,
                                                color: Theme.of(context)
                                                    .disabledColor),
                                          ),
                                          SizedBox(height: 10),
                                          Container(
                                            color: Get.isDarkMode
                                                ? Colors.transparent
                                                : Colors.white,
                                            child: TextFormField(
                                              controller: _dobController,
                                              // focusNode: _emailFocus,
                                              decoration:
                                                  textFieldInputDecoration2
                                                      .copyWith(
                                                          hintText:
                                                              "DD/MM/YYYY",
                                                          suffixIcon: InkWell(
                                                            onTap: () {
                                                              _presentDatePicker();
                                                            },
                                                            child: Image.asset(
                                                                Images
                                                                    .icProCalender),
                                                          )),
                                              // validator: (value) {
                                              //   if (value.isEmpty) {
                                              //     // print('value empty');
                                              //     return "enter_password".tr;
                                              //   } else {
                                              //     return null;
                                              //   }
                                              // },
                                              onChanged: (Value) {
                                                setState(() {
                                                  Value = _selectedDate;
                                                });
                                              },

                                              // onSaved: (value) {
                                              //   setState(() {
                                              //     value =
                                              //         _selectedDate.toString();
                                              //     // password = value!.trim();
                                              //   });
                                              // },
                                            ),
                                          ),
                                          SizedBox(height: 12),
                                          Text(
                                            'verify_your_age'.tr,
                                            style: robotoRegular.copyWith(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: Theme.of(context)
                                                    .disabledColor),
                                          ),

                                          SizedBox(height: 37),

                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                'change_password'.tr,
                                                style: robotoRegular.copyWith(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 16,
                                                    color: Get.isDarkMode
                                                        ? Color(0xffffffff)
                                                        : Color(0xff000000)),
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  changePassDialog();
                                                },
                                                child: Text(
                                                  'edit'.tr.toUpperCase(),
                                                  style: robotoRegular.copyWith(
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 16,
                                                      color: Color(0xffbf1d2d)),
                                                ),
                                              ),
                                            ],
                                          ),

                                          SizedBox(height: 55),
                                          Text(
                                            'social_account'.tr,
                                            style: robotoRegular.copyWith(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16,
                                                color: Get.isDarkMode
                                                    ? Color(0xffffffff)
                                                    : Color(0xff000000)),
                                          ),
                                          SizedBox(height: 26),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Image.asset(
                                                      Images.icProApple,
                                                      color: Get.isDarkMode
                                                          ? Color(0xffffffff)
                                                          : Color(0xff000000),
                                                      width: 16,
                                                      height: 22,
                                                    ),
                                                    SizedBox(width: 18),
                                                    Text(
                                                      'apple_id'.tr,
                                                      style: robotoRegular.copyWith(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: Get.isDarkMode
                                                              ? Theme.of(
                                                                      context)
                                                                  .disabledColor
                                                              : Color(
                                                                  0xff000000)),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Text(
                                                'Not Connected',
                                                style: robotoRegular.copyWith(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w400,
                                                    color: Theme.of(context)
                                                        .disabledColor),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 34),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Image.asset(
                                                      Images.icProFacebook,
                                                      width: 16,
                                                      height: 22,
                                                    ),
                                                    SizedBox(width: 18),
                                                    Text(
                                                      'facebook'.tr,
                                                      style: robotoRegular.copyWith(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: Get.isDarkMode
                                                              ? Theme.of(
                                                                      context)
                                                                  .disabledColor
                                                              : Color(
                                                                  0xff000000)),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Text(
                                                'Not Connected',
                                                style: robotoRegular.copyWith(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w400,
                                                    color: Theme.of(context)
                                                        .disabledColor),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 34),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Image.asset(
                                                      Images.icProGoogle,
                                                      width: 16,
                                                      height: 22,
                                                    ),
                                                    SizedBox(width: 18),
                                                    Text(
                                                      'email'.tr,
                                                      style: robotoRegular.copyWith(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: Get.isDarkMode
                                                              ? Theme.of(
                                                                      context)
                                                                  .disabledColor
                                                              : Color(
                                                                  0xff000000)),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Text(
                                                'Not Connected',
                                                style: robotoRegular.copyWith(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w400,
                                                    color: Theme.of(context)
                                                        .disabledColor),
                                              ),
                                            ],
                                          ),
                                          ResponsiveHelper.isDesktop(context)
                                              ? Padding(
                                                  padding: const EdgeInsets
                                                          .only(
                                                      top: Dimensions
                                                          .PADDING_SIZE_LARGE),
                                                  child: UpdateProfileButton(
                                                      isLoading: userController
                                                          .isLoading,
                                                      onPressed: () {
                                                        return _updateProfile(
                                                            userController);
                                                      }),
                                                )
                                              : SizedBox.shrink(),
                                        ])),
                              )),
                            )),
                            SizedBox(
                              height: 79,
                            )
                            // ResponsiveHelper.isDesktop(context)
                            //     ? SizedBox.shrink()
                            //     : UpdateProfileButton(
                            //         isLoading: userController.isLoading,
                            //         onPressed: () =>
                            //             _updateProfile(userController)),
                          ]),
                        ),
                      ],
                    ),
                  )
                // ),
                // )
                : Center(child: CircularProgressIndicator())
            : NotLoggedInScreen();
      }),
    );
  }

  void _presentDatePicker() {
    // showDatePicker is a pre-made funtion of Flutter
    showDatePicker(
            context: context,
            // initialDate: DateTime(DateTime.now().year - 3),
            firstDate: DateTime(1960),
            lastDate: DateTime(DateTime.now().year - 3),
            initialDate: DateTime(1995))
        .then((pickedDate) {
      // Check if no date is selected
      if (pickedDate == null) {
        return;
      }

      // using state so that the UI will be rerendered when date is picked
      setState(() {
        _selectedDate = DateFormat("dd/MM/yyyy").format(pickedDate);
      });

      print('selected date----->' + _selectedDate.toString());
    });
  }

  void changePassDialog() {
    Get.dialog(AlertDialog(
      title: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'change_password'.tr,
                style: robotoRegular.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color:
                        Get.isDarkMode ? Color(0xffffffff) : Color(0xff09323e)),
              ),
              InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.close,
                    size: 12,
                    color:
                        Get.isDarkMode ? Color(0xffffffff) : Color(0xff000000),
                  ))
            ],
          ),
          SizedBox(height: 10),
          Text(
            'its_good_idea'.tr,
            style: robotoRegular.copyWith(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0xff979797)),
          ),
        ],
      ),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Get.isDarkMode ? Colors.transparent : Colors.white,
              child: TextFormField(
                // controller: _emailController,
                // focusNode: _emailFocus,
                decoration: textFieldInputDecoration2.copyWith(
                  hintText: "current".tr,
                ),
                // validator: (value) {
                //   if (value.isEmpty) {
                //     // print('value empty');
                //     return "enter_password".tr;
                //   } else {
                //     return null;
                //   }
                // },
                onSaved: (value) {
                  setState(() {
                    // password = value!.trim();
                  });
                },
              ),
            ),
            SizedBox(height: 20),
            Container(
              color: Get.isDarkMode ? Colors.transparent : Colors.white,
              child: TextFormField(
                // controller: _emailController,
                // focusNode: _emailFocus,
                decoration: textFieldInputDecoration2.copyWith(
                  hintText: "new".tr,
                ),
                // validator: (value) {
                //   if (value.isEmpty) {
                //     // print('value empty');
                //     return "enter_password".tr;
                //   } else {
                //     return null;
                //   }
                // },
                onSaved: (value) {
                  setState(() {
                    // password = value!.trim();
                  });
                },
              ),
            ),
            SizedBox(height: 20),
            Container(
              color: Get.isDarkMode ? Colors.transparent : Colors.white,
              child: TextFormField(
                // controller: _emailController,
                // focusNode: _emailFocus,
                decoration: textFieldInputDecoration2.copyWith(
                  hintText: "retype_new".tr,
                ),
                // validator: (value) {
                //   if (value.isEmpty) {
                //     // print('value empty');
                //     return "enter_password".tr;
                //   } else {
                //     return null;
                //   }
                // },
                onSaved: (value) {
                  setState(() {
                    // password = value!.trim();
                  });
                },
              ),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'forgotten_pass'.tr,
                style: robotoRegular.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).disabledColor),
              ),
            ),
            SizedBox(height: 45),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 93, vertical: 15),
              decoration: BoxDecoration(
                  color: Color(0xffbf1d2d),
                  borderRadius: BorderRadius.circular(10)),
              child: Text('save'.tr),
            ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 54),
            //   child: CustomButton(buttonText: "save".tr),
            // )
          ],
        ),
      ),
    ));
  }

  void _updateProfile(UserController userController) async {
    String _firstName = _firstNameController.text.trim();
    String _lastName = _lastNameController.text.trim();
    String _email = _emailController.text.trim();
    String _phoneNumber = _phoneController.text.trim();
    if (userController.userInfoModel.fName == _firstName &&
        userController.userInfoModel.lName == _lastName &&
        userController.userInfoModel.phone == _phoneNumber &&
        userController.userInfoModel.email == _emailController.text &&
        userController.pickedFile == null) {
      showCustomSnackBar('change_something_to_update'.tr);
    } else if (_firstName.isEmpty) {
      showCustomSnackBar('enter_your_first_name'.tr);
    } else if (_lastName.isEmpty) {
      showCustomSnackBar('enter_your_last_name'.tr);
    } else if (_email.isEmpty) {
      showCustomSnackBar('enter_email_address'.tr);
    } else if (!GetUtils.isEmail(_email)) {
      showCustomSnackBar('enter_a_valid_email_address'.tr);
    } else if (_phoneNumber.isEmpty) {
      showCustomSnackBar('enter_phone_number'.tr);
    } else if (_phoneNumber.length < 6) {
      showCustomSnackBar('enter_a_valid_phone_number'.tr);
    } else {
      UserInfoModel _updatedUser = UserInfoModel(
          fName: _firstName,
          lName: _lastName,
          email: _email,
          phone: _phoneNumber);
      ResponseModel _responseModel = await userController.updateUserInfo(
          _updatedUser, Get.find<AuthController>().getUserToken());
      if (_responseModel.isSuccess) {
        showCustomSnackBar('profile_updated_successfully'.tr, isError: false);
      } else {
        showCustomSnackBar(_responseModel.message);
      }
    }
  }
}

class UpdateProfileButton extends StatelessWidget {
  final bool isLoading;
  final Function onPressed;
  const UpdateProfileButton(
      {Key key, @required this.isLoading, @required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return !isLoading
        ? CustomButton(
            onPressed: onPressed,
            margin: EdgeInsets.all(Dimensions.PADDING_SIZE_SMALL),
            buttonText: 'update'.tr,
          )
        : Center(child: CircularProgressIndicator());
  }
}
