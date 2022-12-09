import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:sixam_mart/util/app_constants.dart';
import 'package:sixam_mart/util/dimensions.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:sixam_mart/util/images.dart';
import 'package:sixam_mart/util/styles.dart';
import 'package:sixam_mart/view/screens/checkout/widget/payment_succesful_dialog.dart';

class PaymentScreen extends StatefulWidget {
  //final OrderModel orderModel;
  // PaymentScreen({@required
  //  this.orderModel
  // });

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  String selectedUrl;
  double value = 0.0;
  bool _isLoading = true;
  PullToRefreshController pullToRefreshController;
  // MyInAppBrowser browser;

  @override
  void initState() {
    super.initState();
    // selectedUrl = '${AppConstants.BASE_URL}/payment-mobile?customer_id=${widget.orderModel.userId}&order_id=${widget.orderModel.id}';

    _initData();
  }

  void _initData() async {
    // browser = MyInAppBrowser(orderID: widget.orderModel.id.toString(), orderType: widget.orderModel.orderType);

    if (Platform.isAndroid) {
      await AndroidInAppWebViewController.setWebContentsDebuggingEnabled(true);

      bool swAvailable = await AndroidWebViewFeature.isFeatureSupported(
          AndroidWebViewFeature.SERVICE_WORKER_BASIC_USAGE);
      bool swInterceptAvailable =
          await AndroidWebViewFeature.isFeatureSupported(
              AndroidWebViewFeature.SERVICE_WORKER_SHOULD_INTERCEPT_REQUEST);

      if (swAvailable && swInterceptAvailable) {
        AndroidServiceWorkerController serviceWorkerController =
            AndroidServiceWorkerController.instance();
        await serviceWorkerController
            .setServiceWorkerClient(AndroidServiceWorkerClient(
          shouldInterceptRequest: (request) async {
            print(request);
            return null;
          },
        ));
      }
    }

    pullToRefreshController = PullToRefreshController(
      options: PullToRefreshOptions(
        color: Colors.black,
      ),
      onRefresh: () async {
        // if (Platform.isAndroid) {
        //   browser.webViewController.reload();
        // } else if (Platform.isIOS) {
        //   browser.webViewController.loadUrl(
        //       urlRequest:
        //           URLRequest(url: await browser.webViewController.getUrl()));
        // }
      },
    );
    // browser.pullToRefreshController = pullToRefreshController;

    // await browser.openUrlRequest(
    //   urlRequest: URLRequest(url: Uri.parse(selectedUrl)),
    //   options: InAppBrowserClassOptions(
    //     inAppWebViewGroupOptions: InAppWebViewGroupOptions(
    //       crossPlatform: InAppWebViewOptions(
    //           useShouldOverrideUrlLoading: true, useOnLoadResource: true),
    //     ),
    //   ),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      //onWillPop: () => _exitApp(),
      child: Scaffold(
          // backgroundColor: Theme.of(context).primaryColor,
          //appBar: CustomAppBar(title: 'payment'.tr, onBackPressed: () => _exitApp()),
          body: Column(
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
                  'payment_method'.tr,
                  style: robotoRegular.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff000000)),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Divider(
            thickness: 4,
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'account_profile_for_security'.tr,
                  style: robotoRegular.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff979797)),
                ),
                SizedBox(height: 15),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Color(0xff979797),
                      )),
                  child: Row(
                    // mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        Images.imgAtmCard,
                        width: 31,
                        height: 23,
                      ),
                      SizedBox(width: 20),
                      Text(
                        'add_card'.tr,
                        style: robotoRegular.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff09323e)),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                InkWell(
                  onTap: () {
                    Get.dialog(PaymentSuccessfulDialog());
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Color(0xff979797),
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          Images.imgPaypal,
                          width: 49,
                          height: 14,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      )
          //old code
          // Container(
          //   width: Dimensions.WEB_MAX_WIDTH,
          //   child: Stack(
          //     children: [
          //       _isLoading
          //           ? Center(
          //               child: CircularProgressIndicator(
          //                   valueColor: AlwaysStoppedAnimation<Color>(
          //                       Theme.of(context).primaryColor)),
          //             )
          //           : SizedBox.shrink(),
          //     ],
          //   ),
          // ),
          ),
    );
  }

  // Future<bool> _exitApp() async {
  //   return Get.dialog(PaymentFailedDialog(orderID: widget.orderModel.id.toString()));
  // }

}

// class MyInAppBrowser extends InAppBrowser {

//   // final String orderID;
//   // final String orderType;
//   // MyInAppBrowser(
//   //     {@required this.orderID,
//   //     @required this.orderType,
//   //     int windowId,
//   //     UnmodifiableListView<UserScript> initialUserScripts})
//   //     : super(windowId: windowId, initialUserScripts: initialUserScripts);

//   bool _canRedirect = true;

//   @override
//   Future onBrowserCreated() async {
//     print("\n\nBrowser Created!\n\n");
//   }

//   @override
//   Future onLoadStart(url) async {
//     print("\n\nStarted: $url\n\n");
//     _redirect(url.toString());
//   }

//   @override
//   Future onLoadStop(url) async {
//     pullToRefreshController?.endRefreshing();
//     print("\n\nStopped: $url\n\n");
//     _redirect(url.toString());
//   }

//   @override
//   void onLoadError(url, code, message) {
//     pullToRefreshController?.endRefreshing();
//     print("Can't load [$url] Error: $message");
//   }

//   @override
//   void onProgressChanged(progress) {
//     if (progress == 100) {
//       pullToRefreshController?.endRefreshing();
//     }
//     print("Progress: $progress");
//   }

//   @override
//   void onExit() {
//     if (_canRedirect) {
//       // Get.dialog(PaymentFailedDialog(orderID: orderID));
//     }
//     print("\n\nBrowser closed!\n\n");
//   }

//   @override
//   Future<NavigationActionPolicy> shouldOverrideUrlLoading(
//       navigationAction) async {
//     print("\n\nOverride ${navigationAction.request.url}\n\n");
//     return NavigationActionPolicy.ALLOW;
//   }

//   @override
//   void onLoadResource(response) {
//     print("Started at: " +
//         response.startTime.toString() +
//         "ms ---> duration: " +
//         response.duration.toString() +
//         "ms " +
//         (response.url ?? '').toString());
//   }

//   @override
//   void onConsoleMessage(consoleMessage) {
//     print("""
//     console output:
//       message: ${consoleMessage.message}
//       messageLevel: ${consoleMessage.messageLevel.toValue()}
//    """);
//   }

//   void _redirect(String url) {
//     if (_canRedirect) {
//       bool _isSuccess =
//           url.contains('success') && url.contains(AppConstants.BASE_URL);
//       bool _isFailed =
//           url.contains('fail') && url.contains(AppConstants.BASE_URL);
//       bool _isCancel =
//           url.contains('cancel') && url.contains(AppConstants.BASE_URL);
//       if (_isSuccess || _isFailed || _isCancel) {
//         _canRedirect = false;
//         close();
//       }
//       if (_isSuccess) {
//         // Get.offNamed(RouteHelper.getOrderSuccessRoute(orderID));
//       } else if (_isFailed || _isCancel) {
//         // Get.offNamed(RouteHelper.getOrderSuccessRoute(orderID));
//       }
//     }
//   }
// }
