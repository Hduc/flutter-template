import 'controller/service_detail_two_container1_controller.dart';
import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/presentation/chat_page/chat_page.dart';
import 'package:hair_salon_app/presentation/explore_dalon_details_page/explore_dalon_details_page.dart';
import 'package:hair_salon_app/presentation/my_booking_cancelled_tab_container_page/my_booking_cancelled_tab_container_page.dart';
import 'package:hair_salon_app/presentation/profile_page/profile_page.dart';
import 'package:hair_salon_app/presentation/service_detail_two_container_page/service_detail_two_container_page.dart';
import 'package:hair_salon_app/widgets/custom_bottom_bar.dart';

class ServiceDetailTwoContainer1Screen
    extends GetWidget<ServiceDetailTwoContainer1Controller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Navigator(
            key: Get.nestedKey(1),
            initialRoute: AppRoutes.serviceDetailTwoContainerPage,
            onGenerateRoute: (routeSetting) => GetPageRoute(
                page: () => getCurrentPage(routeSetting.name!),
                transition: Transition.noTransition)),
        bottomNavigationBar:
            CustomBottomBar(onChanged: (BottomBarEnum type) {}));
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.serviceDetailTwoContainerPage:
        return ServiceDetailTwoContainerPage();
      case AppRoutes.exploreDalonDetailsPage:
        return ExploreDalonDetailsPage();
      case AppRoutes.myBookingCancelledTabContainerPage:
        return MyBookingCancelledTabContainerPage();
      case AppRoutes.chatPage:
        return ChatPage();
      case AppRoutes.profilePage:
        return ProfilePage();
      default:
        return ServiceDetailTwoContainerPage();
    }
  }
}
