import '../recent_transaction_screen/widgets/transactioncomponent1_item_widget.dart';
import 'controller/recent_transaction_controller.dart';
import 'models/transactioncomponent1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_salary_management_app/core/app_export.dart';
import 'package:flutter_salary_management_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:flutter_salary_management_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:flutter_salary_management_app/widgets/app_bar/custom_app_bar.dart';

class RecentTransactionScreen extends GetWidget<RecentTransactionController> {
  const RecentTransactionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

        // appBar: _buildAppBar(),
        body: SafeArea(
          child: Column(
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
                  leading: AppbarLeadingImage(
                              imagePath: ImageConstant.imgArrowLeft,
                              // margin: EdgeInsets.only(left: 16.h, top: 27.v, bottom: 28.v),
                              onTap: () {
                                onTapArrowLeft();
                              }),
                  title: AppbarSubtitle(
                    text: "msg_recent_transction".tr,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                    padding: EdgeInsets.only(left: 16.h, top: 24.v, right: 16.h),
                    child: Obx(() => ListView.separated(
                      padding: EdgeInsets.only(bottom: 20.h),
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (context, index) {
                          return SizedBox(height: 16.v);
                        },
                        itemCount: controller.recentTransactionModelObj.value
                            .transactioncomponent1ItemList.value.length,
                        itemBuilder: (context, index) {
                          Transactioncomponent1ItemModel model = controller
                              .recentTransactionModelObj
                              .value
                              .transactioncomponent1ItemList
                              .value[index];
                            return animationFunction(index, Transactioncomponent1ItemWidget(model,
                                onTapTransactionComponent: () {
                                  onTapTransactionComponent();
                                }));
                        }))),
              ),
            ],
          ),
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
  //       title: AppbarSubtitle(text: "msg_recent_transction".tr),
  //       styleType: Style.bgOutline);
  // }

  /// Navigates to the historyTransactionScreen when the action is triggered.
  onTapTransactionComponent() {
    Get.toNamed(AppRoutes.historyTransactionScreen);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
