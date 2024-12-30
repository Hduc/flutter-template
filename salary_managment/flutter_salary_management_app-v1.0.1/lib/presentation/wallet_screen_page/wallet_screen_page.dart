import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../wallet_screen_page/widgets/closelist_item_widget.dart';
import '../wallet_screen_page/widgets/grosscard_item_widget.dart';
import '../wallet_screen_page/widgets/transactioncomponentlist_item_widget.dart';
import 'controller/wallet_screen_controller.dart';
import 'models/closelist_item_model.dart';
import 'models/grosscard_item_model.dart';
import 'models/transactioncomponentlist_item_model.dart';
import 'models/wallet_screen_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_salary_management_app/core/app_export.dart';
import 'package:flutter_salary_management_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:flutter_salary_management_app/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class WalletScreenPage extends StatelessWidget {
  WalletScreenPage({Key? key}) : super(key: key);

  WalletScreenController controller =
      Get.put(WalletScreenController(WalletScreenModel().obs));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: _buildAppBar(),
        body: SafeArea(
      child: SizedBox(
          width: SizeUtils.width,
          child: Column(
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
                  title: AppbarSubtitle(text: "lbl_wallet".tr),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    padding: EdgeInsets.only(top: 16.v, bottom: 20.h),
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.h),
                        child: AnimationLimiter(
                          child: Column(
                            children: AnimationConfiguration.toStaggeredList(
                              duration: const Duration(milliseconds: 375),
                              childAnimationBuilder: (widget) => SlideAnimation(
                                horizontalOffset: 50.0,
                                child: FadeInAnimation(
                                  child: widget,
                                ),
                              ),
                              children: [
                                _buildSalary(),
                                  SizedBox(height: 16.v),
                                  _buildGrossCard(),
                                  SizedBox(height: 21.v),
                                  _buildTransactionHeadline(
                                      onTapViewAll: () {
                                        Get.toNamed(AppRoutes.spedningScreen);
                                      },
                                      transactionHistoryText: "lbl_spending".tr,
                                      viewAllText: "lbl_view_all".tr),
                                  SizedBox(height: 18.v),
                                  _buildCloseList(),
                                  SizedBox(height: 21.v),
                                  _buildTransactionHeadline(
                                      onTapViewAll: () {
                                        Get.toNamed(AppRoutes.transactionHistoryScreen);
                                      },
                                      transactionHistoryText:
                                          "msg_transaction_history".tr,
                                      viewAllText: "lbl_view_all".tr),
                                  SizedBox(height: 18.v),
                                  _buildTransactionComponentList()
                              ],
                            ),
                          ),
                        ),
                        // child: Column(children: [
                        //   _buildSalary(),
                        //   SizedBox(height: 16.v),
                        //   _buildGrossCard(),
                        //   SizedBox(height: 21.v),
                        //   _buildTransactionHeadline(
                        //       onTapViewAll: () {
                        //         Get.toNamed(AppRoutes.spedningScreen);
                        //       },
                        //       transactionHistoryText: "lbl_spending".tr,
                        //       viewAllText: "lbl_view_all".tr),
                        //   SizedBox(height: 18.v),
                        //   _buildCloseList(),
                        //   SizedBox(height: 21.v),
                        //   _buildTransactionHeadline(
                        //       onTapViewAll: () {
                        //         Get.toNamed(AppRoutes.transactionHistoryScreen);
                        //       },
                        //       transactionHistoryText:
                        //           "msg_transaction_history".tr,
                        //       viewAllText: "lbl_view_all".tr),
                        //   SizedBox(height: 18.v),
                        //   _buildTransactionComponentList()
                        // ]),
                    )),
              ),
            ],
          )),
    ));
  }

  /// Section Widget
  // PreferredSizeWidget _buildAppBar() {
  //   return CustomAppBar(
  //       centerTitle: true,
  //       title: AppbarSubtitle(text: "lbl_wallet".tr),
  //       styleType: Style.bgOutline_1);
  // }

  /// Section Widget
  Widget _buildSalary() {
    return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 18.v),
        decoration: AppDecoration.outlineGray200
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("lbl_current_salary".tr, style: theme.textTheme.titleMedium),
              SizedBox(height: 19.v),
              Text("lbl_32_000_00".tr, style: theme.textTheme.headlineMedium)
            ]));
  }

  /// Section Widget
  Widget _buildGrossCard() {
    return SizedBox(
        height: 180.v,
        child: Obx(() => ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 16.h);
            },
            itemCount: controller
                .walletScreenModelObj.value.grosscardItemList.value.length,
            itemBuilder: (context, index) {
              GrosscardItemModel model = controller
                  .walletScreenModelObj.value.grosscardItemList.value[index];
              return GrosscardItemWidget(model);
            })));
  }

  /// Section Widget
  Widget _buildCloseList() {
    return SizedBox(
        height: 166.v,
        child: Obx(() => ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 16.h);
            },
            itemCount: controller
                .walletScreenModelObj.value.closelistItemList.value.length,
            itemBuilder: (context, index) {
              CloselistItemModel model = controller
                  .walletScreenModelObj.value.closelistItemList.value[index];
              return CloselistItemWidget(model, onTapClose: () {
                onTapClose();
              });
            })));
  }

  /// Section Widget
  Widget _buildTransactionComponentList() {
    return Obx(() => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 16.v);
        },
        itemCount: controller.walletScreenModelObj.value
            .transactioncomponentlistItemList.value.length,
        itemBuilder: (context, index) {
          TransactioncomponentlistItemModel model = controller
              .walletScreenModelObj
              .value
              .transactioncomponentlistItemList
              .value[index];
          return TransactioncomponentlistItemWidget(model,
              onTapTransactionComponent: () {
            onTapTransactionComponent();
          });
        }));
  }

  /// Common widget
  Widget _buildTransactionHeadline({
    required String transactionHistoryText,
    required String viewAllText,
    required Function onTapViewAll,
  }) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(transactionHistoryText,
              style: CustomTextStyles.titleLargeBlack90001
                  .copyWith(color: appTheme.black90001)),
          Padding(
              padding: EdgeInsets.only(top: 2.v, bottom: 3.v),
              child: GestureDetector(
                onTap: () {
                  onTapViewAll();
                },
                child: Text(viewAllText,
                    style: CustomTextStyles.bodyMediumBlack90001_1
                        .copyWith(color: appTheme.black90001)),
              ))
        ]);
  }

  /// Navigates to the historyTransactionScreen when the action is triggered.
  onTapClose() {
    Get.toNamed(AppRoutes.historyTransactionScreen);
  }

  /// Navigates to the historyTransactionScreen when the action is triggered.
  onTapTransactionComponent() {
    Get.toNamed(
      AppRoutes.historyTransactionScreen,
    );
  }
}
