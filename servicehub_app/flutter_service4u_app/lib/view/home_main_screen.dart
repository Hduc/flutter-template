import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:service_hub_app/utils/color_category.dart';
import 'package:service_hub_app/view/notification_tab/notification_screen.dart';
import 'package:service_hub_app/view/profile_tab/profile_screen.dart';
import 'package:service_hub_app/view/sign_in/sign_in_empty_state.dart';

import '../controller/controller.dart';
import '../utils/constant.dart';
import '../utils/constantWidget.dart';
import '../utils/drawe_data.dart';
import '../utils/pref_data.dart';
import 'booking_tab/booking_tab_screen.dart';
import 'home_tab/home_screen.dart';


class HomeMainScreen extends StatefulWidget {
  const HomeMainScreen({Key? key}) : super(key: key);


  @override
  State<HomeMainScreen> createState() => _HomeMainScreenState();
}

class _HomeMainScreenState extends State<HomeMainScreen> {
  closeApp() {
    Future.delayed(const Duration(milliseconds: 1000), () {
      SystemNavigator.pop();
    });
  }
  HomeMainScreenController homeMainScreenController =
  Get.put(HomeMainScreenController());

  @override
  Widget build(BuildContext context) {
    initializeScreenSize(context);
    return GetBuilder<HomeMainScreenController>(
      init: HomeMainScreenController(),
      builder: (homeMainScreenController) => WillPopScope(
        onWillPop: () async{
          if (homeMainScreenController.selectedIndex == 0) {
            showDialog(
              barrierDismissible: false,
              context: context,
              builder: (context) {
                return AlertDialog(
                    insetPadding: EdgeInsets.all(16.h),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.h)),
                    contentPadding: EdgeInsets.zero,
                    content: Container(
                        width: 396.h,
                        padding:
                        EdgeInsets.only(top: 38.h, bottom: 38.h),
                        // decoration: AppDecoration.white.copyWith(
                        //
                        //     borderRadius: BorderRadiusStyle.roundedBorder16),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            getCustomFont("Are you sure exit app?",
                                24.sp, Color(0XFF000000), 2,
                                fontWeight: FontWeight.w700,
                                textAlign: TextAlign.center),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 30.w,
                                top: 28.h,
                                right: 30.w,
                                bottom: 2.h,
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                      child: getCustomButton("No", () {
                                        Get.back();
                                      },
                                          color: buttonColor,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: buttonColor,
                                              style: BorderStyle.solid,
                                              width: 1.0.w,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(40.h),
                                          ),
                                          buttonheight: 50.h)),
                                  SizedBox(
                                    width: 10.h,
                                  ),

                                  Expanded(
                                      child: getCustomButton("Yes", () {
                                        if (homeMainScreenController.selectedIndex == 0) {
                                          closeApp();
                                        } else {
                                          homeMainScreenController.getIndex(0);
                                          Get.back();
                                        }
                                      }, buttonheight: 50.h)),
                                ],
                              ),
                            ),
                          ],
                        )));
              },
            );
          } else {
            homeMainScreenController.getIndex(0);
            // Get.back();
          }
          // closeApp();
          return false;
        },
        child: Scaffold(
          backgroundColor: context.theme.backgroundColor,
          key:HomeMainScreenController.drawerKey,
          drawer: Drawer(
            child: DrawerData()
          ),
          body: _body(),
          bottomNavigationBar: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 27),
                      color: regularBlack.withOpacity(0.04),
                      spreadRadius: -4,
                      blurRadius: 12),
                ],
              ),
              child: ClipRRect(

                child: BottomNavigationBar(
                    backgroundColor: const Color(0XFFFFFFFF),
                    currentIndex: homeMainScreenController.selectedIndex,
                    onTap: (index) {
                      homeMainScreenController.getIndex(index);
                      // setState(() {
                      //   currentvalue = index;
                      // });
                      homeMainScreenController.onChange(index);
                    },
                    type: BottomNavigationBarType.fixed,
                    items: [
                      BottomNavigationBarItem(
                          activeIcon: Column(
                            children: [
                              getSvgImage("selected_home_icon.svg"),
                              getVerSpace(4.h),
                              getSvgImage("blue_line_hor.svg"),
                            ],
                          ),
                          icon:  getSvgImage("unselected_home_icon.svg"),
                          label: ''),
                      BottomNavigationBarItem(
                          activeIcon: Column(
                            children: [


                              getSvgImage("select_booking_icon.svg"),
                              getVerSpace(4.h),
                              getSvgImage("blue_line_hor.svg"),
                            ],
                          ),
                          icon:  getSvgImage("unselect_booking_icon.svg"),
                          label: ''),
                      BottomNavigationBarItem(
                          activeIcon: Column(
                            children: [


                              getSvgImage("selected_notification_icon.svg"),
                              getVerSpace(4.h),
                              getSvgImage("blue_line_hor.svg"),
                            ],
                          ),
                          icon: getSvgImage("unselected_notification_icon.svg"),
                          label: ''),
                      BottomNavigationBarItem(
                          activeIcon: Column(
                            children: [


                              getSvgImage("selected_profile_icon.svg"),
                              getVerSpace(4.h),
                              getSvgImage("blue_line_hor.svg"),
                            ],
                          ),
                          icon: getSvgImage("profile_icon.svg"),
                          label: ''),
                    ]),
              )),
        ),
      ),
    );
  }

  _body() {
    switch (homeMainScreenController.selectedIndex) {
      case 0:
        return HomeScreen();
      case 1:
        return BookingScreen();
    //FavouriteItemScreen();

      case 2:
        return NotificationScreen();
    //NoCartItemScreen();
      case 3:
        return ProfileScreen();
      default:
        return const Center(
          child: Text("inavalid"),
        );
    }
  }
}
