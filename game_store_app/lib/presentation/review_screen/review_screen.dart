import '../review_screen/widgets/review_item_widget.dart';
import 'controller/review_controller.dart';
import 'models/review_item_model.dart';
import 'package:flutter/material.dart';
import 'package:game_store_app/core/app_export.dart';
import 'package:game_store_app/widgets/app_bar/appbar_image.dart';
import 'package:game_store_app/widgets/app_bar/appbar_title.dart';
import 'package:game_store_app/widgets/app_bar/custom_app_bar.dart';
import 'package:game_store_app/widgets/custom_search_view.dart';

import 'models/review_model.dart';

class ReviewScreen extends GetWidget<ReviewController> {
  List<ReviewItemModel> search = ReviewModel.getSearchData();
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
                  onTapArrowleft6();
                }),
            centerTitle: true,
            title: AppbarTitle(text: "lbl_search".tr),
            styleType: Style.bgFillWhiteA700),
        body: SafeArea(
          child: Container(
              width: double.maxFinite,
              padding: getPadding(left: 20, top: 16, right: 20, bottom: 16),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomSearchView(
                        focusNode: FocusNode(),
                        autofocus: true,
                        controller: controller.searchController,
                        hintText: "Search games",
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
                            padding: getPadding(top: 16),
                            child: ListView.separated(
                                physics: BouncingScrollPhysics(),
                                shrinkWrap: true,
                                separatorBuilder: (context, index) {
                                  return SizedBox(
                                      height: getVerticalSize(16));
                                },
                                itemCount: search.length,
                                itemBuilder: (context, index) {
                                  ReviewItemModel model = search[index];
                                  return ReviewItemWidget(model,
                                      onTapRecomendedforyo: () {
                                        onTapRecomendedforyo();
                                      });
                                })))
                  ])),
        ));
  }

  onTapRecomendedforyo() {
    Get.toNamed(AppRoutes.detailsGameScreen);
  }

  onTapArrowleft6() {
    Get.back();
  }
}
