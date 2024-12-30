
// ignore_for_file: deprecated_member_use

import '../history_transaction_screen_tab_container_screen/history_transaction_screen_tab_container_screen.dart';
import 'controller/home_screen_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_salary_management_app/core/app_export.dart';
import 'package:flutter_salary_management_app/presentation/home_screen_page/home_screen_page.dart';
import 'package:flutter_salary_management_app/presentation/profile_page/profile_page.dart';
import 'package:flutter_salary_management_app/presentation/wallet_screen_page/wallet_screen_page.dart';
import 'package:flutter_salary_management_app/widgets/custom_bottom_bar.dart';

class HomeScreenContainerScreen
    extends GetWidget<HomeScreenContainerController> {
  const HomeScreenContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  WillPopScope(
      onWillPop: () {
        return controller.onExit(context);
      },
      child: Scaffold(
          body:
          GetBuilder<HomeScreenContainerController>(builder: (controller) {
            return controller.viewWidget;
          },init: HomeScreenContainerController(),),

          bottomNavigationBar:
          CustomBottomBar(
              onChanged: (BottomMenuModel type) {


                controller.onChange(type.widget!);

              })),
    );
    // return SafeArea(
    //     child: Scaffold(
    //         body: Navigator(
    //             key: Get.nestedKey(1),
    //             initialRoute: AppRoutes.homeScreenPage,
    //             onGenerateRoute: (routeSetting) => GetPageRoute(
    //                 page: () => getCurrentPage(routeSetting.name!),
    //                 transition: Transition.noTransition)),
    //         bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  // Widget _buildBottomBar() {
  //   return CustomBottomBar(onChanged: (BottomBarEnum type) {
  //     Get.toNamed(getCurrentRoute(type), id: 1);
  //   });
  // }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homeScreenPage;
      case BottomBarEnum.Wallet:
        return AppRoutes.walletScreenPage;
      case BottomBarEnum.History:
        return AppRoutes.historyEmptyScreenPage;
      case BottomBarEnum.Profile:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeScreenPage:
        return HomeScreenPage();
      case AppRoutes.walletScreenPage:
        return WalletScreenPage();
      case AppRoutes.historyTransactionScreenTabContainerScreen:
        return HistoryTransactionScreenTabContainerScreen();
      case AppRoutes.profilePage:
        return ProfilePage();
      default:
        return DefaultWidget();
    }
  }
}
