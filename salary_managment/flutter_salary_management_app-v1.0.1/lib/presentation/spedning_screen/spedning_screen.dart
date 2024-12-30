import '../spedning_screen/widgets/closegrid_item_widget.dart';
import 'controller/spedning_controller.dart';
import 'models/closegrid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_salary_management_app/core/app_export.dart';
import 'package:flutter_salary_management_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:flutter_salary_management_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:flutter_salary_management_app/widgets/app_bar/custom_app_bar.dart';

class SpedningScreen extends GetWidget<SpedningController> {
  const SpedningScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: _buildAppBar(),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 20.v),
              // decoration: AppDecoration.outlineGray300,
              decoration: BoxDecoration(
                // color: appTheme.gray200,
                border: Border(
                  bottom: BorderSide(
                    color: appTheme.gray200,
                    width: 1.h,
                  ),
                ),
              ),
              child: CustomAppBar(
                centerTitle: true,

                leading:
                AppbarLeadingImage(
                    imagePath: ImageConstant.imgArrowLeft,
                    // margin: EdgeInsets.only(left: 16.h, top: 27.v, bottom: 28.v),
                    onTap: () {
                      onTapArrowLeft();
                    }),
                title: AppbarSubtitle(
                  text: "lbl_spending".tr,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 16.h, top: 24.v, right: 16.h),
                  child: Obx(() => GridView.builder(
                    // shrinkWrap: true,
                      padding: EdgeInsets.only(bottom: 20.v),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: 167.v,
                          crossAxisCount: 2,
                          mainAxisSpacing: 16.h,
                          crossAxisSpacing: 16.h),
                      physics: BouncingScrollPhysics(),
                      itemCount: controller
                          .spedningModelObj.value.closegridItemList.value.length,
                      itemBuilder: (context, index) {
                        ClosegridItemModel model = controller.spedningModelObj
                            .value.closegridItemList.value[index];
                        return animationFunction(index, ClosegridItemWidget(model, onTapClose: () {
                          onTapClose();
                        }));
                      }))),
            ),
          ],
        ));
  }

  /// Section Widget
  // PreferredSizeWidget _buildAppBar() {
  //   return CustomAppBar(
  //       leadingWidth: 40.h,
  //       leading: AppbarLeadingImage(
  //           imagePath: ImageConstant.imgArrowLeft,
  //           margin: EdgeInsets.only(left: 16.h, top: 27.v, bottom: 28.v),
  //           onTap: () {
  //             onTapArrowLeft();
  //           }),
  //       centerTitle: true,
  //       title: AppbarSubtitle(text: "lbl_spending".tr),
  //       styleType: Style.bgOutline);
  // }

  /// Navigates to the historyTransactionScreen when the action is triggered.
  onTapClose() {
    Get.toNamed(AppRoutes.historyTransactionScreen);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
