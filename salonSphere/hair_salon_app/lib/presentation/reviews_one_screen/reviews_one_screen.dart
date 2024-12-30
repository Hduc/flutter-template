import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/widgets/app_bar/appbar_image.dart';
import 'package:hair_salon_app/widgets/app_bar/appbar_title.dart';
import 'package:hair_salon_app/widgets/app_bar/custom_app_bar.dart';

import '../reviews_one_screen/widgets/reviewsone_item_widget.dart';
import '../reviews_screen/controller/reviews_controller.dart';
import '../reviews_screen/models/reviews_model.dart';

class ReviewsOneScreen extends GetWidget<ReviewsController> {
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
                  onTapArrowleft21();
                }),
            centerTitle: true,
            title: AppbarTitle(text: "lbl_categories".tr),
            styleType: Style.bgFillWhiteA700),
        body: SafeArea(
          child: GetBuilder<ReviewsController>(
              init: ReviewsController(),
              builder: (controller) => ListView.separated(
                  padding: getPadding(top: 16, right: 16, left: 16),
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: getVerticalSize(24));
                  },
                  itemCount: controller.reviewList.length,
                  itemBuilder: (context, index) {
                    ReviewsModel model = controller.reviewList[index];
                    return ReviewsoneItemWidget(model);
                  })),
        ));
  }

  onTapArrowleft21() {
    Get.back();
  }
}
