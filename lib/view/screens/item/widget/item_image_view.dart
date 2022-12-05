import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart/controller/item_controller.dart';
import 'package:sixam_mart/helper/responsive_helper.dart';
import 'package:sixam_mart/util/images.dart';

class ItemImageView extends StatefulWidget {
  @override
  State<ItemImageView> createState() => _ItemImageViewState();
}

class _ItemImageViewState extends State<ItemImageView> {
  // final Item item;
  final PageController _controller = PageController();
  List<String> _imageList = [];
  List images = [
    Images.icSliderImage,
    Images.icSliderImage,
    Images.icSliderImage,
    Images.icSliderImage,
  ];

  var _sliderIndex = 0;

  int totalCount = 0;

  @override
  void initState() {
    setState(() {
      totalCount = images.length;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // _imageList.add(item.image);
    // _imageList.addAll(item.images);

    return GetBuilder<ItemController>(
      builder: (itemController) {
        // String _baseUrl = item.availableDateStarts == null ? Get.find<SplashController>().
        // configModel.baseUrls.itemImageUrl : Get.find<SplashController>().configModel.baseUrls.campaignImageUrl;
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
              // onTap: () => Navigator.of(context).pushNamed(
              //   RouteHelper.getItemImagesRoute(item),
              //   arguments: ItemImageView(item: item),
              // ),
              child: Stack(children: [
                SizedBox(
                  height: ResponsiveHelper.isDesktop(context)
                      ? 350
                      : MediaQuery.of(context).size.width * 0.7,
                  child:

                      //old code
                      // PageView.builder(
                      //   controller: _controller,
                      //   itemCount: images.length,
                      //   itemBuilder: (context, index) {
                      //     return
                      // ClipRRect(
                      //         borderRadius: BorderRadius.circular(10),
                      //         child: Image.asset(
                      //           images[index],
                      //           height: 200,
                      //           width: MediaQuery.of(context).size.width,
                      //         )
                      //         //  CustomImage(
                      //         //   image: Images.imgBanana,
                      //         //   height: 200,
                      //         //   width: MediaQuery.of(context).size.width,
                      //         // ),
                      //         );
                      //   },
                      //   onPageChanged: (index) {
                      //     _sliderIndex = index;
                      //   },
                      // ),

                      CarouselSlider.builder(
                    itemCount: 4,
                    // pageSnapping: true,
                    // onPageChanged: (page) {},
                    // controller: _pageController,
                    itemBuilder: (context, index, _) {
                      return ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            images[index],
                            height: 200,
                            width: MediaQuery.of(context).size.width,
                          )
                          //  CustomImage(
                          //   image: Images.imgBanana,
                          //   height: 200,
                          //   width: MediaQuery.of(context).size.width,
                          // ),
                          );
                    },
                    options: CarouselOptions(
                      // height: 137,
                      height: 400,
                      viewportFraction: 1,
                      initialPage: 0,
                      autoPlay: true,
                      autoPlayAnimationDuration: const Duration(seconds: 3),
                      onPageChanged: (index, carouselPageChangedReason) {
                        setState(() {
                          _sliderIndex = index;
                        });
                      },
                    ),
                  ),
                ),
                totalCount != 0
                    ? Positioned(
                        bottom: 10,
                        left: 0,
                        right: 0,
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: DotsIndicator(
                            // dotsCount: 2,
                            dotsCount: totalCount,
                            position: _sliderIndex.toDouble(),
                            decorator: DotsDecorator(
                              color: Color(0xff0EACD7).withOpacity(0.15),
                              activeColor: Color(0xff0EACD7),
                              spacing: EdgeInsets.symmetric(
                                  horizontal: 3, vertical: 8),
                              size: Size.square(6),
                              // activeSize: const Size(18.0, 5.0),
                              // activeColor: Theme.of(context).primaryColor,
                              // activeShape: RoundedRectangleBorder(
                              //   borderRadius: BorderRadius.circular(5.0),
                              // ),
                            ),
                          ),
                        ),
                      )
                    : const SizedBox.shrink(),
                // Positioned(
                //   left: 0,
                //   right: 0,
                //   bottom: 0,
                //   child: Padding(
                //     padding:
                //         EdgeInsets.only(bottom: Dimensions.PADDING_SIZE_SMALL),
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       children:
                //           _indicators(context, itemController, _imageList),
                //     ),
                //   ),
                // ),
              ]),
            ),
          ],
        );
      },
    );
  }

  List<Widget> _indicators(BuildContext context, ItemController itemController,
      List<String> _imageList) {
    List<Widget> indicators = [];
    for (int index = 0; index < _imageList.length; index++) {
      indicators.add(TabPageSelectorIndicator(
        backgroundColor: index == itemController.imageSliderIndex
            ? Theme.of(context).primaryColor
            : Colors.white,
        borderColor: Colors.white,
        size: 10,
      ));
    }
    return indicators;
  }
}
