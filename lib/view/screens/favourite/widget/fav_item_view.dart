import 'package:sixam_mart/controller/wishlist_controller.dart';
import 'package:sixam_mart/util/dimensions.dart';
import 'package:sixam_mart/view/base/footer_view.dart';
import 'package:sixam_mart/view/base/item_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart/view/screens/favourite/widget/fav_store_list_tile.dart';

class FavItemView extends StatelessWidget {
  final bool isStore;
  final bool isSearch;
  FavItemView({@required this.isStore, this.isSearch = false});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<WishListController>(builder: (wishController) {
        return RefreshIndicator(
          onRefresh: () async {
            await wishController.getWishList();
          },
          child: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            child: Column(
              children: [
                FooterView(
                  child: Container(
                    width: Dimensions.WEB_MAX_WIDTH,
                    child: isStore
                        ? ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 5,
                            itemBuilder: (BuildContext context, int index) {
                              return FavStoreListTile();
                            })
                        : ItemsView(
                            isStore: isStore,
                            items: wishController.wishItemList,
                            stores: wishController.wishStoreList,
                            noDataText: 'no_wish_data_found'.tr,
                            isFeatured: true,
                          ),
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
