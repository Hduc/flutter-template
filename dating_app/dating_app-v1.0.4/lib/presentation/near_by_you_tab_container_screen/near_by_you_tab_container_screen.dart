import 'package:dating_app/core/app_export.dart';
import 'package:dating_app/presentation/chats_two_page/chats_two_page.dart';
import 'package:dating_app/presentation/home_page/home_page.dart';
import 'package:dating_app/presentation/likes_list_page/likes_list_page.dart';
import 'package:dating_app/presentation/location_access_container_page/location_access_container_page.dart';
import 'package:dating_app/presentation/profile_page/profile_page.dart';

import 'package:dating_app/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'controller/near_by_you_tab_container_controller.dart';

class NearByYouTabContainerScreen
    extends GetWidget<NearByYouTabContainerController> {
  const NearByYouTabContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        backgroundColor: appTheme.whiteA700,

        body: SafeArea(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Text('Hi, Ronald richards',style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),)
                      ],
                    )
                  ],
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 15.h),
                  child: Container(
                      height: getVerticalSize(46),
                      width:double.infinity,
                      margin: getMargin(top: 23),
                      decoration: BoxDecoration(
                        color: appTheme.gray50,
                        borderRadius: BorderRadius.circular(50.r)
                      ),
                      child: TabBar(
                          controller: controller.tabviewController,
                          labelColor: appTheme.whiteA700,

                          labelStyle: TextStyle(),
                          unselectedLabelColor: appTheme.black900,
                          unselectedLabelStyle: TextStyle(),

                          indicator: BoxDecoration(
                              color: appTheme.deepPurple300,
                              borderRadius: BorderRadius.circular(
                                50.r,
                                 )),
                          tabs: [
                            Tab(
                                child: Text("lbl_for_you".tr,
                                    overflow: TextOverflow.ellipsis)),
                            Tab(
                                child: Text("lbl_near_by_you".tr,
                                    overflow: TextOverflow.ellipsis))
                          ])),
                ),
                SizedBox(
                    height: getVerticalSize(500.h),
                    child: TabBarView(
                        controller: controller.tabviewController,
                        children: [HomePage(), HomePage()]))
              ]),
        ),
        bottomNavigationBar:
            CustomBottomBar(onChanged: (BottomBarEnum type) {
          Get.toNamed(getCurrentRoute(type), id: 1);
        })
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.locationAccessContainerPage;
      case BottomBarEnum.Likes:
        return AppRoutes.likesListPage;
      case BottomBarEnum.Chat:
        return AppRoutes.chatsTwoPage;
      case BottomBarEnum.Profile:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

//Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.locationAccessContainerPage:
        return LocationAccessContainerPage();
      case AppRoutes.likesListPage:
        return LikesListPage();
      case AppRoutes.chatsTwoPage:
        return ChatsTwoPage();
      case AppRoutes.profilePage:
        return ProfilePage();
      default:
        return DefaultWidget();
    }
  }
  onTapSearch() {
    Get.toNamed(
      AppRoutes.searchScreen,
    );
  }
  onTapSettings() {
    Get.toNamed(
      AppRoutes.filterScreen,
    );
  }
}
