import 'package:sixam_mart/controller/auth_controller.dart';
import 'package:sixam_mart/controller/notification_controller.dart';
import 'package:sixam_mart/controller/splash_controller.dart';
import 'package:sixam_mart/helper/route_helper.dart';
import 'package:sixam_mart/util/dimensions.dart';
import 'package:sixam_mart/util/images.dart';
import 'package:sixam_mart/util/styles.dart';
import 'package:sixam_mart/view/base/footer_view.dart';
import 'package:sixam_mart/view/base/menu_drawer.dart';
import 'package:sixam_mart/view/base/not_logged_in_screen.dart';
import 'package:sixam_mart/view/screens/notification/notification_category_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationScreen extends StatefulWidget {
  final bool fromNotification;
  const NotificationScreen({this.fromNotification = false});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  void _loadData() async {
    Get.find<NotificationController>().clearNotification();
    if (Get.find<SplashController>().configModel == null) {
      await Get.find<SplashController>().getConfigData();
    }
    if (Get.find<AuthController>().isLoggedIn()) {
      Get.find<NotificationController>().getNotificationList(true);
    }
  }

  @override
  void initState() {
    super.initState();

    _loadData();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (widget.fromNotification) {
          Get.offAllNamed(RouteHelper.getInitialRoute());
          return true;
        } else {
          Get.back();
          return true;
        }
      },
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).cardColor,
            elevation: 0,
            // toolbarHeight: 100,
            centerTitle: true,
            title: Text(
              'notification'.tr,
              style: robotoRegular.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff000000)),
            ),
          ),

          // CustomAppBar(
          //     title: 'notification'.tr,
          //     onBackPressed: () {
          //       if (widget.fromNotification) {
          //         Get.offAllNamed(RouteHelper.getInitialRoute());
          //       } else {
          //         Get.back();
          //       }
          //     }),
          endDrawer: MenuDrawer(),
          body:
              // Get.find<AuthController>().isLoggedIn()
              //     ?
              GetBuilder<NotificationController>(
                  builder: (notificationController) {
            if (notificationController.notificationList != null) {
              notificationController.saveSeenNotificationCount(
                  notificationController.notificationList.length);
            }
            List<DateTime> _dateTimeList = [];
            return
                // notificationController.notificationList != null
                //     ? notificationController.notificationList.length > 0
                //         ?
                RefreshIndicator(
              onRefresh: () async {
                await notificationController.getNotificationList(true);
              },
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30, top: 20),
                      child: SingleChildScrollView(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('all'.tr,
                                style: robotoBlack.copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff000000))),
                            SizedBox(width: 12),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 3, vertical: 3),
                              decoration: BoxDecoration(
                                  color: Color(0xff0eacd7),
                                  borderRadius: BorderRadius.circular(4)),
                              child: Text('8'.tr,
                                  style: robotoBlack.copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xffffffff))),
                            ),
                            Expanded(
                              child: SizedBox(
                                height: 15,
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: 5,
                                    shrinkWrap: true,
                                    //physics: NeverScrollableScrollPhysics(),
                                    itemBuilder: ((context, index) {
                                      return NotificationCategoryListTile();
                                    })),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 5,
                    ),
                    SizedBox(
                      height: 800,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Scrollbar(
                                child: FooterView(
                              child: SizedBox(
                                  width: Dimensions.WEB_MAX_WIDTH,
                                  child: Expanded(
                                    child: ListView.builder(
                                      itemCount: 20,
                                      // notificationController
                                      //     .notificationList.length,
                                      padding: EdgeInsets.all(
                                          Dimensions.PADDING_SIZE_SMALL),
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      itemBuilder: (context, index) {
                                        // DateTime _originalDateTime =
                                        //     DateConverter.dateTimeStringToDate(
                                        //         notificationController
                                        //             .notificationList[index].createdAt);
                                        // DateTime _convertedDate = DateTime(
                                        //     _originalDateTime.year,
                                        //     _originalDateTime.month,
                                        //     _originalDateTime.day);
                                        // bool _addTitle = false;
                                        // if (!_dateTimeList.contains(_convertedDate)) {
                                        //   _addTitle = true;
                                        //   _dateTimeList.add(_convertedDate);
                                        // }
                                        return Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20, vertical: 10),
                                          child: Container(
                                            width: double.infinity,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Image.asset(
                                                      Images.icNotification,
                                                      height: 42,
                                                      width: 41,
                                                    ),
                                                    // ClipOval(
                                                    //     child: CustomImage(
                                                    //   isNotification: true,
                                                    //   height: 40,
                                                    //   width: 40,
                                                    //   fit: BoxFit.cover,
                                                    //   image:
                                                    //       '${Get.find<SplashController>().configModel.baseUrls.notificationImageUrl}'
                                                    //       '/${notificationController.notificationList[index].data.image}',
                                                    // )),
                                                    SizedBox(width: 12),
                                                    Expanded(
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text(
                                                                  'restaurants',
                                                                  style: robotoBlack.copyWith(
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w700,
                                                                      color: Color(
                                                                          0xff000000))),
                                                              Text('1m ago.',
                                                                  style: robotoBlack.copyWith(
                                                                      fontSize:
                                                                          12,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                      color: Color(
                                                                              0xff979797)
                                                                          .withOpacity(
                                                                              0.5))),
                                                            ],
                                                          ),
                                                          SizedBox(height: 4),
                                                          Text(
                                                              'I\'m wating at the door, please collect your order',
                                                              style: robotoBlack.copyWith(
                                                                  fontSize: 12,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color: Color(
                                                                      0xff979797))),
                                                        ],
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        );

                                        // Column(
                                        //     crossAxisAlignment:
                                        //         CrossAxisAlignment.start,
                                        //     children: [
                                        //       _addTitle
                                        //           ? Padding(
                                        //               padding: EdgeInsets.only(
                                        //                   bottom: Dimensions
                                        //                       .PADDING_SIZE_EXTRA_SMALL),
                                        //               child: Text(DateConverter
                                        //                   .dateTimeStringToDateOnly(
                                        //                       notificationController
                                        //                           .notificationList[
                                        //                               index]
                                        //                           .createdAt)),
                                        //             )
                                        //           : SizedBox(),
                                        //       InkWell(
                                        //         onTap: () {
                                        //           showDialog(
                                        //               context: context,
                                        //               builder: (BuildContext
                                        //                   context) {
                                        //                 return NotificationDialog(
                                        //                     notificationModel:
                                        //                         notificationController
                                        //                                 .notificationList[
                                        //                             index]);
                                        //               });
                                        //         },
                                        //         child: Padding(
                                        //           padding: EdgeInsets.symmetric(
                                        //               vertical: Dimensions
                                        //                   .PADDING_SIZE_EXTRA_SMALL),
                                        //           child: Row(children: [
                                        //             ClipOval(
                                        //                 child: CustomImage(
                                        //               isNotification: true,
                                        //               height: 40,
                                        //               width: 40,
                                        //               fit: BoxFit.cover,
                                        //               image:
                                        //                   '${Get.find<SplashController>().configModel.baseUrls.notificationImageUrl}'
                                        //                   '/${notificationController.notificationList[index].data.image}',
                                        //             )),
                                        //             SizedBox(
                                        //                 width: Dimensions
                                        //                     .PADDING_SIZE_SMALL),
                                        //             Expanded(
                                        //                 child: Column(
                                        //                     crossAxisAlignment:
                                        //                         CrossAxisAlignment
                                        //                             .start,
                                        //                     children: [
                                        //                   Text(
                                        //                     notificationController
                                        //                             .notificationList[
                                        //                                 index]
                                        //                             .data
                                        //                             .title ??
                                        //                         '',
                                        //                     maxLines: 1,
                                        //                     overflow:
                                        //                         TextOverflow
                                        //                             .ellipsis,
                                        //                     style: robotoMedium
                                        //                         .copyWith(
                                        //                             fontSize:
                                        //                                 Dimensions
                                        //                                     .fontSizeSmall),
                                        //                   ),
                                        //                   Text(
                                        //                     notificationController
                                        //                             .notificationList[
                                        //                                 index]
                                        //                             .data
                                        //                             .description ??
                                        //                         '',
                                        //                     maxLines: 1,
                                        //                     overflow:
                                        //                         TextOverflow
                                        //                             .ellipsis,
                                        //                     style: robotoRegular
                                        //                         .copyWith(
                                        //                             fontSize:
                                        //                                 Dimensions
                                        //                                     .fontSizeSmall),
                                        //                   ),
                                        //                 ])),
                                        //           ]),
                                        //         ),
                                        //       ),
                                        //       Padding(
                                        //         padding:
                                        //             EdgeInsets.only(left: 50),
                                        //         child: Divider(
                                        //             color: Theme.of(context)
                                        //                 .disabledColor,
                                        //             thickness: 1),
                                        //       ),
                                        //     ]);
                                      },
                                    ),
                                  )),
                            )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
            //     : NoDataScreen(
            //         text: 'no_notification_found'.tr, showFooter: true)
            // : Center(child: CircularProgressIndicator());
          })
          // : NotLoggedInScreen(),
          ),
    );
  }
}
