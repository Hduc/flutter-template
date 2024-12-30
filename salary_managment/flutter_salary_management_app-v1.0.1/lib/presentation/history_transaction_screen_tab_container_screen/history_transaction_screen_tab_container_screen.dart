import '../history_payment_screen_page/history_payment_screen_page.dart';
import '../history_transaction_screen_page/history_transaction_screen_page.dart';
import 'controller/history_transaction_screen_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_salary_management_app/core/app_export.dart';
import 'package:flutter_salary_management_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:flutter_salary_management_app/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class HistoryTransactionScreenTabContainerScreen
    extends GetWidget<HistoryTransactionScreenTabContainerController> {
  const HistoryTransactionScreenTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
                  // leading: AppbarLeadingImage(
                  //     imagePath: ImageConstant.imgArrowLeft,
                  //     margin: EdgeInsets.only(left: 16.h, top: 27.v, bottom: 28.v),
                  //     onTap: () {
                  //       onTapArrowLeft();
                  //     }),
                  centerTitle: true,
                  title: AppbarSubtitle(
                    text: "lbl_history".tr,
                  ),
                ),
              ),
              SizedBox(height: 18.v),
              _buildTabview(),

              Expanded(
                child: TabBarView(
                  // controller: controller.tabviewController,
                  children: [
                    HistoryPaymentScreenPage(),
                    HistoryTransactionScreenPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
        // bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  // PreferredSizeWidget _buildAppBar() {
  //   return CustomAppBar(
  //     centerTitle: true,
  //     title: AppbarSubtitle(
  //       text: "lbl_history".tr,
  //     ),
  //     styleType: Style.bgOutline_1,
  //   );
  // }

  /// Section Widget
  Widget _buildTabview() {
    return TabBar(
      // controller: controller.tabviewController,
      // isScrollable: true,
      indicatorSize: TabBarIndicatorSize.tab,
      labelColor: theme.colorScheme.primary,
      unselectedLabelColor: appTheme.gray600,
      indicatorColor: theme.colorScheme.primary,
      tabs: [
        Tab(
          child: Text(
            "lbl_payment".tr,
          ),
        ),
        Tab(
          child: Text(
            "lbl_transaction".tr,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  // Widget _buildBottomBar() {
  //   return CustomBottomBar(
  //     onChanged: (BottomBarEnum type) {
  //       Get.toNamed(getCurrentRoute(type), id: 1);
  //     },
  //   );
  // }

  ///Handling route based on bottom click actions
  // String getCurrentRoute(BottomBarEnum type) {
  //   switch (type) {
  //     case BottomBarEnum.Home:
  //       return AppRoutes.homeScreenPage;
  //     case BottomBarEnum.Wallet:
  //       return AppRoutes.walletScreenPage;
  //     case BottomBarEnum.History:
  //       return AppRoutes.historyEmptyScreenPage;
  //     case BottomBarEnum.Profile:
  //       return AppRoutes.profilePage;
  //     default:
  //       return "/";
  //   }
  // }
  //
  // ///Handling page based on route
  // Widget getCurrentPage(String currentRoute) {
  //   switch (currentRoute) {
  //     case AppRoutes.homeScreenPage:
  //       return HomeScreenPage();
  //     case AppRoutes.walletScreenPage:
  //       return WalletScreenPage();
  //     case AppRoutes.historyEmptyScreenPage:
  //       return HistoryEmptyScreenPage();
  //     case AppRoutes.profilePage:
  //       return ProfilePage();
  //     default:
  //       return DefaultWidget();
  //   }
  // }
}
