import 'package:flutter/material.dart';
import 'package:musicapp/core/app_export.dart';

import '../../my_wishlist_screen/controller/my_wishlist_controller.dart';
import '../controller/home_screen_controller.dart';
import '../models/list18271_item_model.dart';

// ignore: must_be_immutable
class List18271ItemWidget extends StatelessWidget {
  List18271ItemWidget(
    this.list18271ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  List18271ItemModel list18271ItemModelObj;

  HomeScreenController homeScreenController = Get.put(HomeScreenController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MyWishlistController>(
      init: MyWishlistController(),
      builder:(myWishlistController) =>  GetBuilder<HomeScreenController>(
        init: HomeScreenController(),
        builder:(controller) =>  Padding(
          padding: getPadding(left: 8, right: 8),
          child: GestureDetector(
            onTap: (){
              Get.toNamed(
                AppRoutes.songsDetailScreen,
              );
            },
            child: Container(
              width: getSize(149),
              height: double.infinity,
              decoration: AppDecoration.fill2.copyWith(
                color: appTheme.containerColor,
                borderRadius: BorderRadiusStyle.roundedBorder16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: getPadding(all: 4),
                    child: Container(
                      height: getSize(170),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(getHorizontalSize(16)),
                          image: DecorationImage(
                              image: AssetImage(list18271ItemModelObj.image!),
                              fit: BoxFit.fill)),
                      child: GestureDetector(
                        onTap: (){
                          controller.setLikePosition(list18271ItemModelObj);
                          list18271ItemModelObj.isLike!
                              ? myWishlistController.addFavList(
                              list18271ItemModelObj.image,
                              list18271ItemModelObj.title,
                              list18271ItemModelObj.subtitle,
                              list18271ItemModelObj.isLike)
                              : myWishlistController.removeListItem(
                              list18271ItemModelObj.title);
                        },
                        child: Padding(
                          padding: getPadding(top: 4,right: 4),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(

                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.black.withOpacity(0.40)
                                ),
                                child: Padding(
                                  padding: getPadding(all: 8),
                                  child: CustomImageView(
                                    svgPath:list18271ItemModelObj.isLike!?ImageConstant.imgLikeFillIcon: ImageConstant.imgClock,
                                  ),
                                ),


                              ),
                            ],
                          ),
                        ),
                      )

                    ),
                  ),
                  SizedBox(
                    height: getVerticalSize(4),
                  ),
                  Padding(
                    padding: getPadding(left: 8, right: 8),
                    child: Text(
                      list18271ItemModelObj.title!,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: TextThemeHelper.titleMediumSemiBold,
                    ),
                  ),
                  SizedBox(
                    height: getVerticalSize(4),
                  ),
                  Padding(
                    padding: getPadding(left: 8, right: 8),
                    child: Text(
                      list18271ItemModelObj.subtitle!,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
