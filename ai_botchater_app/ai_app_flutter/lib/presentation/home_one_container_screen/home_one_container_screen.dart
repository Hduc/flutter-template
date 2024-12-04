// ignore_for_file: deprecated_member_use

import 'package:flutter/services.dart';

import 'controller/home_one_container_controller.dart';
import 'package:ai_app_flutter/core/app_export.dart';
import 'package:ai_app_flutter/presentation/account_page/account_page.dart';
import 'package:ai_app_flutter/presentation/business_page/business_page.dart';
import 'package:ai_app_flutter/presentation/home_one_page/home_one_page.dart';
import 'package:ai_app_flutter/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeOneContainerScreen extends GetWidget<HomeOneContainerController> {
  Future<bool> _requestPop() {
    if (controller.selectedIndex != 0) {
      // controller.change(0);
      controller.selectedIndex.value = 0;
    } else {
      SystemNavigator.pop();
    }
    return new Future.value(false);
  }


  List<Widget> listScreen = [
    HomeOnePage(),
    BusinessPage(),
    // HistoryScreen(),
    AccountPage()
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _requestPop,
      child: SafeArea(
          child: Obx(
        () => Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: listScreen[controller.selectedIndex.value],
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              // Get.toNamed(getCurrentRoute(type), id: 1);
            })),
      )),
    );
  }
}
