import 'package:hair_salon_app/presentation/home_page_screen/controller/home_page_controller.dart';
import 'package:hair_salon_app/presentation/home_page_screen/models/category_model.dart';

import '../categories_screen/widgets/categories_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/widgets/app_bar/appbar_image.dart';
import 'package:hair_salon_app/widgets/app_bar/appbar_title.dart';
import 'package:hair_salon_app/widgets/app_bar/custom_app_bar.dart';

class CategoriesScreen extends GetWidget<HomePageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
            height: getVerticalSize(81),
            leadingWidth: 42,
            leading: AppbarImage(
                height: getVerticalSize(24),
                width: getHorizontalSize(26),
                svgPath: ImageConstant.imgArrowleft,
                margin: getMargin(left: 16, top: 28, bottom: 28),
                onTap: () {
                  onTapArrowleft();
                }),
            centerTitle: true,
            title: AppbarTitle(text: "lbl_categories".tr),
            styleType: Style.bgFillWhiteA700),
        body: SafeArea(
          child: Obx(() => GridView.builder(
            padding: getPadding(top: 16,left: 16,right: 16),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: getVerticalSize(116),
                  crossAxisCount: 3,
                  mainAxisSpacing: getVerticalSize(30),
                  crossAxisSpacing: getVerticalSize(63)),
              physics: BouncingScrollPhysics(),
              itemCount: controller.categroryList.length,
              itemBuilder: (context, index) {
                CategoryModel model = controller.categroryList[index];
                return CategoriesItemWidget(model,
                    onTapColumnellipsesi: () {
                      if (index == 0) {
                        onTapHaircut();
                      } else if (index == 1) {
                        onTapMakeup();
                      } else if (index == 2) {
                        onTapMassage();
                      } else if (index == 3) {
                        onTapManicure();
                      }
                });
              })),
        ));
  }

  onTapHaircut() {
    Get.toNamed(
      AppRoutes.nearbyLocationThreeScreen,
    );
    // TODO: implement Actions
  }

  onTapMakeup() {
    // TODO: implement Actions
    Get.toNamed(
      AppRoutes.nearbyLocation1Screen,
    );
  }

  onTapMassage() {
    // TODO: implement Actions
    Get.toNamed(
      AppRoutes.nearbyLocationOne1Screen,
    );
  }

  onTapManicure() {
    // TODO: implement Actions
    Get.toNamed(
      AppRoutes.nearbyLocationTwoScreen,
    );
  }

  onTapArrowleft() {
    Get.back();
  }
}
