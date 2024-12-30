import 'package:flutter/services.dart';
import 'package:game_store_app/presentation/download_screen/download_screen.dart';
import 'package:game_store_app/presentation/profile_screen/profile_screen.dart';

import '../../widgets/app_bar/custum_bottom_bar_controller.dart';
import '../../widgets/custom_button.dart';
import 'controller/home_screen_container1_controller.dart';
import 'package:flutter/material.dart';
import 'package:game_store_app/core/app_export.dart';
import 'package:game_store_app/presentation/coupon_code_page/coupon_code_page.dart';
import 'package:game_store_app/presentation/home_screen_container_page/home_screen_container_page.dart';
import 'package:game_store_app/widgets/custom_bottom_bar.dart';

class HomeScreenContainer1Screen
    extends GetWidget<HomeScreenContainer1Controller> {
  CustomBottomBarController customBottomBarController = Get.put(CustomBottomBarController());

  List<Widget> screen = [HomeScreenContainerPage(),DownloadScreen(),CouponCodePage(),ProfileScreen()];
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CustomBottomBarController>(
      init: CustomBottomBarController(),
      builder:(controller) =>  WillPopScope(
        onWillPop: () async {
         if(controller.selectedIndex==0){
           showDialog(
             barrierDismissible: false,
             context: context,
             builder: (context) {
               return AlertDialog(
                 insetPadding: EdgeInsets.zero,
                 shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(getHorizontalSize(20))),
                 contentPadding: EdgeInsets.zero,
                 content: Padding(
                   padding: getPadding(all: 20),
                   child: Column(
                     mainAxisSize: MainAxisSize.min,
                     children: [
                       Text("msg_are_you".tr,
                           overflow: TextOverflow.ellipsis,
                           textAlign: TextAlign.left,
                           style: AppStyle.txtAeonikBold21),
                       SizedBox(
                         height: getVerticalSize(0),
                       ),
                       Row(
                         children: [
                           CustomButton(
                               width: getSize(162),
                               height: getVerticalSize(48),
                               text: "lbl_no".tr,
                               fontStyle:
                               ButtonFontStyle.AeonikBold18LightblueA700,
                               variant: ButtonVariant.BlueWhite,
                               margin: getMargin(top: 44),
                               padding: ButtonPadding.PaddingAll13,
                               onTap: () {
                                 Get.back();
                               }),
                           SizedBox(
                             width: getHorizontalSize(10),
                           ),
                           CustomButton(
                               width: getSize(162),
                               height: getVerticalSize(48),
                               text: "lbl_yes".tr,
                               margin: getMargin(top: 44),
                               padding: ButtonPadding.PaddingAll13,
                               onTap: () {
                                 if(controller.selectedIndex==0){
                                   closeApp();
                                 }
                                 else{
                                   controller.getIndex(0);
                                   Get.back();
                                 }

                               }),
                         ],
                       ),
                     ],
                   ),
                 ),
               );
             },
           );
         }
         else{
          controller.getIndex(0);
          // Get.back();
          }
          return false;
        },
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            // body: Navigator(
            //     key: Get.nestedKey(1),
            //     initialRoute: AppRoutes.homeScreenContainerPage,
            //     onGenerateRoute: (routeSetting) => GetPageRoute(
            //         page: () => getCurrentPage(routeSetting.name!),
            //         transition: Transition.noTransition)),
            body: screen[controller.selectedIndex],
            bottomNavigationBar: CustomBottomBar(onChanged: (BottomBarEnum type) {
              Get.toNamed(getCurrentRoute(type), id: 1);
            })),
      ),
    );
  }
  closeApp() {
    Future.delayed(const Duration(milliseconds: 1000), () {
      SystemNavigator.pop();
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Group4138:
        return AppRoutes.homeScreenContainerPage;
      case BottomBarEnum.Group4135:
        return AppRoutes.downloadScreen;
      case BottomBarEnum.Stroke12:
        return AppRoutes.couponCodePage;
      case BottomBarEnum.profile:
        return AppRoutes.profileScreen;
      default:
        return "/";
    }
  }


  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeScreenContainerPage:
        return HomeScreenContainerPage();
      case AppRoutes.downloadScreen:
        return DownloadScreen();
      case AppRoutes.couponCodePage:
        return CouponCodePage();
      case AppRoutes.profileScreen:
        return ProfileScreen();
      default:
        return DefaultWidget();
    }
  }
}
