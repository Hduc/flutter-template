import '../categories_screen/widgets/categories_item_widget.dart';
import '../home_screen_container_page/models/home_screen_container_model.dart';
import '../home_screen_container_page/models/listgroup4152_item_model.dart';
import 'controller/categories_controller.dart';
import 'models/categories_item_model.dart';
import 'package:flutter/material.dart';
import 'package:game_store_app/core/app_export.dart';
import 'package:game_store_app/widgets/app_bar/appbar_image.dart';
import 'package:game_store_app/widgets/app_bar/appbar_title.dart';
import 'package:game_store_app/widgets/app_bar/custom_app_bar.dart';
import 'package:game_store_app/widgets/custom_search_view.dart';

class CategoriesScreen extends GetWidget<CategoriesController> {
  List<Listgroup4152ItemModel> categoryList = HomeScreenContainerModel.getCAtegory();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
            height: getVerticalSize(66),
            leadingWidth: 44,
            leading: AppbarImage(
                height: getSize(24),
                width: getSize(24),
                svgPath: ImageConstant.imgArrowleftBlack900,
                margin: getMargin(left: 20, top: 17, bottom: 25),
                onTap: () {
                  onTapArrowleft10();
                }),
            centerTitle: true,
            title: AppbarTitle(text: "lbl_categories".tr),
            styleType: Style.bgFillWhiteA700),
        body: SafeArea(
          child: Container(
              width: double.maxFinite,
              padding: getPadding(left: 19, top: 16, right: 19, bottom: 16),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomSearchView(
                        controller: controller.searchController,
                        hintText: "lbl_search".tr,
                        prefix: Container(
                            margin: getMargin(
                                left: 16, top: 12, right: 8, bottom: 12),
                            child: CustomImageView(
                                svgPath: ImageConstant.imgSearch)),
                        prefixConstraints:
                            BoxConstraints(maxHeight: getVerticalSize(48)),
                      ),
                    Expanded(
                        child: Padding(
                            padding: getPadding(left: 1, top: 24),
                            child: GridView.builder(
                                shrinkWrap: true,
                                gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    mainAxisExtent: getVerticalSize(120),
                                    crossAxisCount: 3,
                                    mainAxisSpacing:
                                    getHorizontalSize(16),
                                    crossAxisSpacing:
                                    getHorizontalSize(16)),
                                physics: BouncingScrollPhysics(),
                                itemCount: categoryList.length,
                                itemBuilder: (context, index) {
                                  Listgroup4152ItemModel model = categoryList[index];
                                  return CategoriesItemWidget(model,
                                      onTapColumnrocketone: () {
                                        onTapColumnrocketone();
                                      });
                                })))
                  ])),
        ));
  }

  onTapColumnrocketone() {
    Get.toNamed(AppRoutes.recomendedForYouScreen);
  }

  onTapArrowleft10() {
    Get.back();
  }
}
