import '../transaction_history_screen/widgets/transactioncomponent2_item_widget.dart';
import 'controller/transaction_history_controller.dart';
import 'models/transactioncomponent2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_salary_management_app/core/app_export.dart';
import 'package:flutter_salary_management_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:flutter_salary_management_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:flutter_salary_management_app/widgets/app_bar/custom_app_bar.dart';

class TransactionHistoryScreen extends GetWidget<TransactionHistoryController> {
  const TransactionHistoryScreen({Key? key}) : super(key: key);

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
                    color: appTheme.gray300,
                    width: 1.h,
                  ),
                ),
              ),
              child: CustomAppBar(
                centerTitle: true,
                leading:         AppbarLeadingImage(
                    imagePath: ImageConstant.imgArrowLeft,
                    // margin: EdgeInsets.only(left: 16.h, top: 27.v, bottom: 28.v),
                    onTap: () {
                      onTapArrowLeft();
                    }),
                title: AppbarSubtitle(text: "msg_transaction_history".tr),
              ),
            ),
            Expanded(
              child: Obx(() => ListView.separated(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  padding: EdgeInsets.all(16.h),

                  separatorBuilder: (context, index) {
                    return SizedBox(height: 16.v);
                  },
                  itemCount: controller.transactionHistoryModelObj.value
                      .transactioncomponent2ItemList.value.length,
                  itemBuilder: (context, index) {
                    Transactioncomponent2ItemModel model = controller
                        .transactionHistoryModelObj
                        .value
                        .transactioncomponent2ItemList
                        .value[index];
                    return animationFunction(index, Transactioncomponent2ItemWidget(model,
                        onTapTransactionComponent: () {
                          onTapTransactionComponent();
                        }));
                  })),
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
  //       title: AppbarSubtitle(text: "msg_transaction_history".tr),
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
