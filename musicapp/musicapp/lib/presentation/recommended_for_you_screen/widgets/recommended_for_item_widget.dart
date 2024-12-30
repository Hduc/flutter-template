import 'package:flutter/material.dart';
import 'package:musicapp/core/app_export.dart';
import 'package:musicapp/presentation/home_screen_page/controller/home_screen_controller.dart';

import '../../home_screen_page/models/list18271_item_model.dart';
import '../../my_wishlist_screen/controller/my_wishlist_controller.dart';
import '../controller/recommended_for_you_controller.dart';

// ignore: must_be_immutable
class RecommendedForItemWidget extends StatelessWidget {
  RecommendedForItemWidget(
    this.recommendedForItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  RecommendedData recommendedForItemModelObj;

  RecommendedForYouController controller =
      Get.put(RecommendedForYouController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MyWishlistController>(
      init: MyWishlistController(),
      builder: (myWishlistController) => GetBuilder<HomeScreenController>(
        init: HomeScreenController(),
        builder: (controller) => GestureDetector(
            onTap: () {
              Get.toNamed(
                AppRoutes.songsDetailScreen,
              );
            },
            child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: AppDecoration.fill2.copyWith(
                  color: appTheme.containerColor,
                  borderRadius: BorderRadiusStyle.roundedBorder16,
                ),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getPadding(all: 4),
                        child: Container(
                            height: getSize(214),
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    getHorizontalSize(16)),
                                image: DecorationImage(
                                    image: AssetImage(
                                        recommendedForItemModelObj.image!),
                                    fit: BoxFit.fill)),
                            child: GestureDetector(
                              onTap: () {
                                controller.setLikePosition(
                                    recommendedForItemModelObj);
                                recommendedForItemModelObj.isLike!
                                    ? myWishlistController.addFavList(
                                        recommendedForItemModelObj.image,
                                        recommendedForItemModelObj.title,
                                        recommendedForItemModelObj.subtitle,
                                        recommendedForItemModelObj.isLike)
                                    : myWishlistController.removeListItem(
                                        recommendedForItemModelObj.title);
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
                                          svgPath: recommendedForItemModelObj
                                                  .isLike!
                                              ? ImageConstant.imgLikeFillIcon
                                              : ImageConstant.imgClock,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )),
                      ),
                      Padding(
                          padding: getPadding(left: 8, right: 8, top: 8),
                          child: Text(recommendedForItemModelObj.title!,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextThemeHelper.titleMediumSemiBold)),
                      Padding(
                          padding:
                              getPadding(left: 8, right: 8, top: 4, bottom: 5),
                          child: Text(recommendedForItemModelObj.subtitle!,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.bodyMedium))
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
