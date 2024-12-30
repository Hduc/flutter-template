// ignore_for_file: must_be_immutable

import 'package:flutter/services.dart';
import 'package:hair_salon_app/presentation/chat_page/chat_page.dart';
import 'package:hair_salon_app/presentation/explore_dalon_details_page/explore_dalon_details_page.dart';
import 'package:hair_salon_app/presentation/my_booking_cancelled_tab_container_page/my_booking_cancelled_tab_container_page.dart';
import 'package:hair_salon_app/presentation/profile_page/profile_page.dart';

import '../home_page/home_page.dart';
import 'controller/home_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/widgets/custom_bottom_bar.dart';

class HomePageScreen extends GetWidget<HomePageController> {
  List<Widget> listScreen = [
    HomePage(),
    ExploreDalonDetailsPage(),
    MyBookingCancelledTabContainerPage(),
    ChatPage(),
    ProfilePage()
  ];

  Future<bool> _requestPop() {
    if (controller.selectedIndex != 0) {
      // controller.change(0);
      controller.selectedIndex.value = 0;
    } else {
      SystemNavigator.pop();
    }
    return new Future.value(false);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _requestPop,
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: ColorConstant.whiteA700,
          body: Obx(() {
            return listScreen[controller.selectedIndex.value];
          }),
          bottomNavigationBar:
              CustomBottomBar(onChanged: (BottomBarEnum type) {})),
    );
  }
}
