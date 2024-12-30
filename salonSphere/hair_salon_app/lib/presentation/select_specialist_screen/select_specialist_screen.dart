import '../select_specialist_screen/widgets/select_item_widget.dart';
import 'controller/select_specialist_controller.dart';
import 'models/select_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/widgets/app_bar/appbar_image.dart';
import 'package:hair_salon_app/widgets/app_bar/appbar_title.dart';
import 'package:hair_salon_app/widgets/app_bar/custom_app_bar.dart';

class SelectSpecialistScreen extends GetWidget<SelectSpecialistController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                    onTapArrowleft12();
                  }),
              centerTitle: true,
              title: AppbarTitle(text: "msg_select_specialist".tr),
              styleType: Style.bgFillWhiteA700),
          body: Obx(() => ListView.separated(
              padding: getPadding(left: 16, top: 16, right: 16),
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(height: getVerticalSize(24));
              },
              itemCount: controller
                  .selectSpecialistModelObj.value.selectItemList.length,
              itemBuilder: (context, index) {
                SelectItemModel model = controller
                    .selectSpecialistModelObj.value.selectItemList[index];
                return SelectItemWidget(model,index);
              }))),
    );
  }

  onTapArrowleft12() {
    Get.back();
  }
}
