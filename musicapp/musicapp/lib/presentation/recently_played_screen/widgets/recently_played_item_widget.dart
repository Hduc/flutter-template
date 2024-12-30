import '../../home_screen_page/controller/home_screen_controller.dart';
import '../../home_screen_page/models/list18271_item_model.dart';
import '../../my_wishlist_screen/controller/my_wishlist_controller.dart';
import '../controller/recently_played_controller.dart';
import 'package:flutter/material.dart';
import 'package:musicapp/core/app_export.dart';

// ignore: must_be_immutable
class RecentlyPlayedItemWidget extends StatelessWidget {
  RecentlyPlayedItemWidget(
    this.recentlyPlayedItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  List18271ItemModel recentlyPlayedItemModelObj;

  RecentlyPlayedController recentlyPlayedController = Get.put(RecentlyPlayedController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MyWishlistController>(
      init: MyWishlistController(),
      builder:(myWishlistController) => GetBuilder<HomeScreenController>(
        init: HomeScreenController(),
        builder:(controller) =>  GestureDetector(
            onTap: () {
              Get.toNamed(
                AppRoutes.songsDetailScreen,
              );
            },
            child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: AppDecoration.fill2.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder16,
                ),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    mainAxisAlignment:
                    MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getPadding(all: 4),
                        child: Container(
                          height: getSize(214),
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(getHorizontalSize(16)),
                              image: DecorationImage(
                                  image: AssetImage(recentlyPlayedItemModelObj.image!),
                                  fit: BoxFit.fill)),
                          child: GestureDetector(
                            onTap: () {
                              controller.setLikePosition(recentlyPlayedItemModelObj);
                              recentlyPlayedItemModelObj.isLike!
                                  ? myWishlistController.addFavList(
                                  recentlyPlayedItemModelObj.image,
                                  recentlyPlayedItemModelObj.title,
                                  recentlyPlayedItemModelObj.subtitle,
                                  recentlyPlayedItemModelObj.isLike)
                                  : myWishlistController.removeListItem(
                                  recentlyPlayedItemModelObj.title);
                            },
                            child: Padding(
                              padding: getPadding(top: 4, right: 4),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color:
                                        Colors.black.withOpacity(0.40)),
                                    child: Padding(
                                      padding: getPadding(all: 8),
                                      child: CustomImageView(
                                        svgPath: recentlyPlayedItemModelObj
                                            .isLike!
                                            ? ImageConstant.imgLikeFillIcon
                                            : ImageConstant.imgClock,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )













                        ),
                      ),


                      Padding(
                          padding:
                          getPadding(left: 8,right: 8, top: 8),
                          child: Text(
                              recentlyPlayedItemModelObj.title!,
                              overflow:
                              TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextThemeHelper
                                  .titleMediumSemiBold)),
                      Padding(
                          padding: getPadding(
                              left: 8,right: 8, top: 4, bottom: 5),
                          child: Text(
                              recentlyPlayedItemModelObj.subtitle!,
                              overflow:
                              TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme
                                  .textTheme.bodyMedium))
                    ]))),
      ),
    );
  }
}
onTapJustforyou() {
  Get.toNamed(
    AppRoutes.songsDetailScreen,
  );
}