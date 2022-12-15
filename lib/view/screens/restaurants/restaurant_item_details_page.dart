import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart/util/images.dart';
import 'package:sixam_mart/util/styles.dart';
import 'package:sixam_mart/view/screens/restaurants/restaurant_item_tab_page.dart';

class RestaurantItemDetailsPage extends StatefulWidget {
  const RestaurantItemDetailsPage({Key key}) : super(key: key);

  @override
  State<RestaurantItemDetailsPage> createState() =>
      _RestaurantItemDetailsPageState();
}

class _RestaurantItemDetailsPageState extends State<RestaurantItemDetailsPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: 3, initialIndex: 0, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Container(
            //   decoration: BoxDecoration(
            //     color: Colors.grey,
            //   ),
            // ),
            Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        Images.imgRestaurantItem,
                      ))),
            ),
          ],
        ),
        Positioned(
            top: 50,
            left: 20,
            child: InkWell(
                onTap: () {
                  Get.back();
                },
                child: Image.asset(Images.icBackArrow))),
        Positioned(
          top: 200,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 500,
            decoration: BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(14),
                    topRight: Radius.circular(14))),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sweet Goat',
                        style: robotoRegular.copyWith(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff09323e)),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Tomato sauce, morzzarella cheese, goat cheese, spinach and onions.',
                        style: robotoRegular.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff09323e)),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'something_extra'.tr,
                        style: robotoRegular.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff09323e)),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  color: Color(0xfff3f3f3),
                  child: TabBar(
                    controller: _tabController,
                    indicatorColor: Color(0xffbf1d2d),
                    indicatorWeight: 3,
                    labelColor: Color(0xff09323e),
                    unselectedLabelColor: Color(0xff09323e),
                    unselectedLabelStyle: robotoRegular.copyWith(
                        //color: Theme.of(context).disabledColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                    labelStyle: robotoBold.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      //color: Theme.of(context).primaryColor
                    ),
                    tabs: [
                      Tab(text: 'size_'.tr),
                      Tab(
                        text: 'base'.tr,
                      ),
                      Tab(
                        text: 'toppings'.tr,
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: TabBarView(controller: _tabController, children: [
                    RestaurantItemTabPage(
                      isSized: true,
                      isBase: false,
                      isToppings: false,
                    ),
                    RestaurantItemTabPage(
                      isBase: true,
                      isSized: false,
                      isToppings: false,
                    ),
                    RestaurantItemTabPage(
                      isToppings: true,
                      isSized: false,
                      isBase: false,
                    )
                  ]),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  padding: EdgeInsets.symmetric(vertical: 15),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xffbf1d2d),
                      borderRadius: BorderRadius.circular(9)),
                  child: Center(
                    child: Text(
                      'continue'.tr,
                      style: robotoRegular.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xffffffff)),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    ));
  }
}
