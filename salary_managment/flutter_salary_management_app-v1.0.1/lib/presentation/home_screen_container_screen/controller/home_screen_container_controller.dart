import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_salary_management_app/core/app_export.dart';
import 'package:flutter_salary_management_app/presentation/home_screen_container_screen/models/home_screen_container_model.dart';

import '../../home_screen_page/home_screen_page.dart';

/// A controller class for the HomeScreenContainerScreen.
///
/// This class manages the state of the HomeScreenContainerScreen, including the
/// current homeScreenContainerModelObj
class HomeScreenContainerController extends GetxController {
  Rx<HomeScreenContainerModel> homeScreenContainerModelObj =
      HomeScreenContainerModel().obs;
  RxInt selectedIndex = 0.obs;
  onChange(Widget type) {
    viewWidget = type;
    update();
  }
  Widget viewWidget = HomeScreenPage();
  onExit(BuildContext context) {
    print("index===$selectedIndex");
    if (selectedIndex.value != 0) {
      selectedIndex.value = 0;
      onChange(HomeScreenPage());
      update();
    } else {
      showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius:
              BorderRadius.circular(16.h)),
          insetPadding: EdgeInsets.only(left: 16.h, right: 16.h),
          title: Padding(
            padding: EdgeInsets.only(left: 15.h, right: 15.h),
            child: Text('Are you sure you want to Exit ?',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22.fSize,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center),
          ),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 0.h),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Padding(
                        padding: EdgeInsets.only(left: 15.h),
                        child: Container(
                          height: 56.h,

                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.h),
                              border: Border.all(
                                color: theme.colorScheme.primary,
                                width: 1.5.h,
                              )),
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: 14.h, bottom: 14.h),
                            child: Center(
                              child: Text(
                                'No',
                                style: TextStyle(
                                  color: theme.colorScheme.primary,
                                  fontSize: 18.h.fSize,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.h,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Get.back();
                        if (Platform.isIOS) {
                          exit(0);
                        } else {
                          SystemNavigator.pop();
                        }
                      },
                      child: Padding(
                        padding: EdgeInsets.only(right: 15.h),
                        child: Container(
                          height: 56.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.h),
                            color: theme.colorScheme.primary,
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: 14.v, bottom: 14.h),
                            child: Center(
                              child: Text(
                                'Yes',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.fSize,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );

    }
  }
}
