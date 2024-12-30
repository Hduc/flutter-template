
// ignore_for_file: unused_import

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_salary_management_app/core/app_export.dart';
import 'package:flutter_salary_management_app/presentation/wallet_screen_page/wallet_screen_page.dart';

import '../presentation/history_transaction_screen_tab_container_screen/history_transaction_screen_tab_container_screen.dart';
import '../presentation/home_screen_container_screen/controller/home_screen_container_controller.dart';
import '../presentation/home_screen_page/home_screen_page.dart';
import '../presentation/profile_page/profile_page.dart';

// ignore: must_be_immutable
class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({
    Key? key,
    this.onChanged,
  }) : super(
          key: key,
        );

  HomeScreenContainerController controller =
  Get.put(HomeScreenContainerController());
  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      widget: HomeScreenPage(),
      icon: ImageConstant.homeBottom,
      activeIcon: ImageConstant.homeActive,
      title: "lbl_home".tr,

      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      widget: WalletScreenPage(),
      icon: ImageConstant.walletBottom,
      activeIcon: ImageConstant.walletActive,
      title: "lbl_wallet".tr,
      type: BottomBarEnum.Wallet,
    ),
    BottomMenuModel(
      widget: HistoryTransactionScreenTabContainerScreen(),
      icon: ImageConstant.histoybottom,
      activeIcon: ImageConstant.historyActive,
      title: "lbl_history".tr,
      type: BottomBarEnum.History,
    ),
    BottomMenuModel(
      widget: ProfilePage(),
      icon: ImageConstant.profileBottom,
      activeIcon: ImageConstant.pofileActive,
      title: "lbl_profile".tr,
      type: BottomBarEnum.Profile,
    )
  ];

  Function(BottomMenuModel)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
    //  height: Platform.isIOS ? 100.h : 88.h,
      decoration: BoxDecoration(
        color: appTheme.whiteA700,
        // border: Border.all(
        //   color: appTheme.gray200,
        //   width: 1.h,
        // ),
        boxShadow: [
          BoxShadow(
            color: Color(0x07000000),
            // spreadRadius: 2.h,
            blurRadius: 16.h,
            offset: Offset(
              0,
              -6,
            ),
          ),
        ],
      ),
      child: Obx(
        () => BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedFontSize: 0,
          elevation: 0,
          currentIndex: controller.selectedIndex.value,
          type: BottomNavigationBarType.fixed,
          items: List.generate(bottomMenuList.length, (index) {
            return BottomNavigationBarItem(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: bottomMenuList[index].icon,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    color: appTheme.gray600,
                    margin: EdgeInsets.only(top: 16.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 10.v,
                      bottom: 17.v,
                    ),
                    child: Text(
                      bottomMenuList[index].title ?? "",
                      style: CustomTextStyles.bodyMediumGray60013.copyWith(
                        color: appTheme.gray600,
                      ),
                    ),
                  ),
                ],
              ),
              activeIcon: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: bottomMenuList[index].activeIcon,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    color: theme.colorScheme.primary,
                    margin: EdgeInsets.only(top: 16.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 10.v,
                      bottom: 17.v,
                    ),
                    child: Text(
                      bottomMenuList[index].title ?? "",
                      style: CustomTextStyles.bodyMediumPrimary.copyWith(
                        color: theme.colorScheme.primary,
                      ),
                    ),
                  ),
                ],
              ),
              label: '',
            );
          }),
          onTap: (index) {
            controller.selectedIndex.value = index;
            onChanged?.call(bottomMenuList[index]);
          },
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Home,
  Wallet,
  History,
  Profile,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    this.widget,
    required this.type,
  });

  String icon;

  String activeIcon;
  Widget? widget;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18.fSize,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
