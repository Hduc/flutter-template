import '../recomended_for_you_screen/widgets/recomended_for_item_widget.dart';
import 'controller/recomended_for_you_controller.dart';
import 'models/recomended_for_item_model.dart';
import 'package:flutter/material.dart';
import 'package:game_store_app/core/app_export.dart';
import 'package:game_store_app/widgets/app_bar/appbar_image.dart';
import 'package:game_store_app/widgets/app_bar/appbar_title.dart';
import 'package:game_store_app/widgets/app_bar/custom_app_bar.dart';

import 'models/recomended_for_you_model.dart';

class RecomendedForYouScreen extends GetWidget<RecomendedForYouController> {
  List<RecomendedForItemModel> action = RecomendedForYouModel.getActionData();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  onTapArrowleft11();
                }),
            centerTitle: true,
            title: AppbarTitle(text: "lbl_action".tr),
            styleType: Style.bgFillWhiteA700),
        body: SafeArea(
          child: Padding(
              padding: getPadding(left: 20, top: 24, right: 20),
              child: ListView.separated(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: getVerticalSize(16));
                  },
                  itemCount:action.length,
                  itemBuilder: (context, index) {
                    RecomendedForItemModel model = action[index];
                    return RecomendedForItemWidget(model,
                        onTapRecomendedforyo: () {
                          onTapRecomendedforyo();
                        });
                  })),
        ));
  }

  onTapRecomendedforyo() {
    Get.toNamed(AppRoutes.detailsGameScreen);
  }

  onTapArrowleft11() {
    Get.back();
  }
}
