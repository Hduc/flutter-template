import '../our_pakage_screen/widgets/ourpakage_item_widget.dart';
import 'controller/our_pakage_controller.dart';
import 'models/ourpakage_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/widgets/app_bar/appbar_image.dart';
import 'package:hair_salon_app/widgets/app_bar/appbar_title.dart';
import 'package:hair_salon_app/widgets/app_bar/custom_app_bar.dart';

class OurPakageScreen extends GetWidget<OurPakageController> {
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
                  onTapArrowleft28();
                }),
            centerTitle: true,
            title: AppbarTitle(text: "lbl_our_package".tr),
            styleType: Style.bgFillWhiteA700),
        body: SafeArea(
          child: Obx(() => GridView.builder(
              padding: getPadding(left: 16, top: 8, right: 16),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: getVerticalSize(184),
                  crossAxisCount: 2,
                  mainAxisSpacing: getVerticalSize(24),
                  crossAxisSpacing: getVerticalSize(19)),
              physics: BouncingScrollPhysics(),
              itemCount: controller
                  .ourPakageModelObj.value.ourpakageItemList.length,
              itemBuilder: (context, index) {
                OurpakageItemModel model = controller
                    .ourPakageModelObj.value.ourpakageItemList[index];
                return OurpakageItemWidget(model);
              })),
        ));
  }

  onTapArrowleft28() {
    Get.back();
  }
}
