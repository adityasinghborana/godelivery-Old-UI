import 'package:pointer_interceptor/pointer_interceptor.dart';
import 'package:sixam_mart/controller/category_controller.dart';
import 'package:sixam_mart/controller/splash_controller.dart';
import 'package:sixam_mart/helper/responsive_helper.dart';
import 'package:sixam_mart/helper/route_helper.dart';
import 'package:sixam_mart/util/dimensions.dart';
import 'package:sixam_mart/util/styles.dart';
import 'package:sixam_mart/view/base/custom_image.dart';
import 'package:sixam_mart/view/base/footer_view.dart';
import 'package:sixam_mart/view/base/no_data_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryScreen extends StatefulWidget {
  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  double _ratio;
  @override
  Widget build(BuildContext context) {
    Get.find<CategoryController>().getCategoryList(false);
    return Container(
      width: Dimensions.WEB_MAX_WIDTH,
      padding: EdgeInsets.symmetric(horizontal: Dimensions.PADDING_SIZE_SMALL),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        color: Theme.of(context).cardColor,
      ),
      child: StreamBuilder<Object>(
          stream: null,
          builder: (context, snapshot) {
            return
                // Scaffold(
                //         // appBar: CustomAppBar(title: 'categories'.tr),
                //         // endDrawer: MenuDrawer(),
                //         body: SafeArea(
                //child:
                Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                FooterView(child:
                    GetBuilder<CategoryController>(builder: (catController) {
                  return catController.categoryList != null
                      ? catController.categoryList.length > 0
                          ? Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                SizedBox(height: 20),
                                Text('all_categories'.tr,
                                    style: robotoBlack.copyWith(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 24,
                                        color: Color(0xff000000))),
                                SizedBox(height: 20),
                                SizedBox(
                                  height: 420,
                                  child: GridView.builder(
                                    //physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount:
                                          ResponsiveHelper.isDesktop(context)
                                              ? 6
                                              : ResponsiveHelper.isTab(context)
                                                  ? 4
                                                  : 3,
                                      childAspectRatio: (1 / 1),
                                      mainAxisSpacing:
                                          Dimensions.PADDING_SIZE_SMALL,
                                      crossAxisSpacing:
                                          Dimensions.PADDING_SIZE_SMALL,
                                    ),
                                    padding: EdgeInsets.all(
                                        Dimensions.PADDING_SIZE_SMALL),
                                    itemCount:
                                        catController.categoryList.length,
                                    itemBuilder: (context, index) {
                                      return InkWell(
                                        onTap: () => Get.toNamed(
                                            RouteHelper.getCategoryItemRoute(
                                          catController.categoryList[index].id,
                                          catController
                                              .categoryList[index].name,
                                        )),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Theme.of(context).cardColor,
                                            borderRadius: BorderRadius.circular(
                                                Dimensions.RADIUS_SMALL),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.grey[
                                                      Get.isDarkMode
                                                          ? 800
                                                          : 200],
                                                  blurRadius: 5,
                                                  spreadRadius: 1)
                                            ],
                                          ),
                                          alignment: Alignment.center,
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          Dimensions
                                                              .RADIUS_SMALL),
                                                  child: CustomImage(
                                                    height: 50,
                                                    width: 50,
                                                    fit: BoxFit.cover,
                                                    image:
                                                        '${Get.find<SplashController>().configModel.baseUrls.categoryImageUrl}/${catController.categoryList[index].image}',
                                                  ),
                                                ),
                                                SizedBox(
                                                    height: Dimensions
                                                        .PADDING_SIZE_EXTRA_SMALL),
                                                Text(
                                                  catController
                                                      .categoryList[index].name,
                                                  textAlign: TextAlign.center,
                                                  style: robotoMedium.copyWith(
                                                      fontSize: Dimensions
                                                          .fontSizeSmall),
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ]),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            )
                          : NoDataScreen(text: 'no_category_found'.tr)
                      : Center(child: CircularProgressIndicator());
                })),
              ],
            );
            //     ),
            //   );
          }),
    );
  }
}
