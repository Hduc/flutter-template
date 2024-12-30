import '../../home_screen_page/controller/home_screen_controller.dart';
import '../controller/my_wishlist_controller.dart';
import '../models/my_wishlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:musicapp/core/app_export.dart';
import 'package:musicapp/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class MyWishlistItemWidget extends StatelessWidget {
  MyWishlistItemWidget(
    this.myWishlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MyWishlistItemModel myWishlistItemModelObj;

  MyWishlistController controller  = Get.put(MyWishlistController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MyWishlistController>(
      init: MyWishlistController(),
      builder: (myWishlistController) => GetBuilder<HomeScreenController>(
        init: HomeScreenController(),
        builder: (controller) => GestureDetector(
            onTap: () {
              // ignore: unnecessary_statements
              onTapJustforyou;
            },
            child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: AppDecoration.fill2.copyWith(
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
                              borderRadius:
                              BorderRadius.circular(getHorizontalSize(16)),
                              image: DecorationImage(
                                  image: AssetImage(
                                      myWishlistItemModelObj.image!),
                                  fit: BoxFit.fill)),
                          child: CustomIconButton(
                            onTap: () {
                              controller
                                  .setLikePosition(myWishlistItemModelObj);
                              myWishlistController.removeListItem(
                                  myWishlistItemModelObj.title);
                            },
                            height: 32,
                            width: 32,
                            margin: getMargin(
                              top: 4,
                              right: 4,
                            ),
                            padding: getPadding(
                              all: 8,
                            ),
                            alignment: Alignment.topRight,
                            child: CustomImageView(
                              svgPath: myWishlistItemModelObj.isLike!
                                  ? ImageConstant.imgLikeFillIcon
                                  : ImageConstant.imgClock,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                          padding: getPadding(left: 8, right: 8, top: 8),
                          child: Text(myWishlistItemModelObj.title!,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextThemeHelper.titleMediumSemiBold)),
                      Padding(
                          padding:
                          getPadding(left: 8, right: 8, top: 4, bottom: 5),
                          child: Text(myWishlistItemModelObj.subTitle!,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.bodyMedium))
                    ]))),
      ),
    );
  }

  onTapJustforyou() {
    Get.toNamed(
      AppRoutes.songsDetailScreen,
    );
  }
}
