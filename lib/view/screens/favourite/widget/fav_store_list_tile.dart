import 'package:flutter/widgets.dart';
import 'package:sixam_mart/util/images.dart';
import 'package:sixam_mart/util/styles.dart';

class FavStoreListTile extends StatefulWidget {
  const FavStoreListTile({Key key}) : super(key: key);

  @override
  State<FavStoreListTile> createState() => _FavStoreListTileState();
}

class _FavStoreListTileState extends State<FavStoreListTile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: const EdgeInsets.only(left: 20, right: 17, top: 30),
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Container(
                        height: 166,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage(
                              Images.imgFavStoreImage,
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                    top: 7,
                    left: -1,
                    child: Image.asset(
                      Images.imgDiscount,
                      // width: 108,
                      // height: 22,
                    )),
                Positioned(
                    top: 30,
                    left: -1,
                    child: Image.asset(
                      Images.imgDelivery,
                      // width: 108,
                      // height: 22,
                    )),
                Positioned(
                  left: 3,
                  top: 11,
                  child: Text(
                    "Spend N 10,000",
                    style: robotoMedium.copyWith(
                      color: Color(0xffffffff),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Positioned(
                  left: 3,
                  top: 33,
                  child: Text(
                    "Get Free Delivery",
                    style: robotoMedium.copyWith(
                      color: Color(0xffffffff),
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Positioned(
                    top: 8,
                    right: 20,
                    child: Image.asset(Images.imgStoreHeart)),
                Positioned(
                    left: 7,
                    bottom: 0,
                    child: Image.asset(Images.imgStoreImgBg)),
                Positioned(
                  right: 20,
                  bottom: 14,
                  child: Text(
                    "20-30 Mins",
                    style: robotoMedium.copyWith(
                      color: Color(0xffffffff),
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                )
              ],
            )),
        Padding(
          padding: const EdgeInsets.only(left: 25, top: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Mary's Kitchen",
                style: robotoMedium.copyWith(
                  color: Color(0xff09323e),
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(Images.icRating),
                  SizedBox(width: 2),
                  Text(
                    "4.6 Excellent",
                    style: robotoMedium.copyWith(
                      color: Color(0xff75bf27),
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(width: 4),
                  Container(
                    height: 5,
                    width: 5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffc4c4c4)),
                  ),
                  SizedBox(width: 5),
                  Text(
                    "American",
                    style: robotoMedium.copyWith(
                      color: Color(0xff979797),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(width: 5),
                  Container(
                    height: 5,
                    width: 5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffc4c4c4)),
                  ),
                  SizedBox(width: 5),
                  Text(
                    "Chiken",
                    style: robotoMedium.copyWith(
                      color: Color(0xff979797),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(width: 5),
                  Container(
                    height: 5,
                    width: 5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffc4c4c4)),
                  ),
                  SizedBox(width: 5),
                  Text(
                    "Pizza",
                    style: robotoMedium.copyWith(
                      color: Color(0xff979797),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(width: 5),
                  Container(
                    height: 5,
                    width: 5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffc4c4c4)),
                  ),
                  SizedBox(width: 5),
                  Text(
                    "Fries",
                    style: robotoMedium.copyWith(
                      color: Color(0xff979797),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 7),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "N5000 Delivery",
                    style: robotoMedium.copyWith(
                      color: Color(0xff979797),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(width: 5),
                  Container(
                    height: 13,
                    width: 2,
                    decoration: BoxDecoration(
                        // borderRadius: BorderRadius.circular(10),
                        color: Color(0xffc4c4c4)),
                  ),
                  SizedBox(width: 5),
                  Text(
                    "2.4 miles away",
                    style: robotoMedium.copyWith(
                      color: Color(0xff979797),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
