import 'package:dating_app/core/app_export.dart';
import 'package:dating_app/presentation/chats_two_page/chats_two_page.dart';
import 'package:dating_app/presentation/likes_list_page/likes_list_page.dart';
import 'package:dating_app/presentation/location_access_container_page/location_access_container_page.dart';
import 'package:dating_app/presentation/profile_page/profile_page.dart';
import 'package:dating_app/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

import '../../data/pref_data.dart';

import 'controller/location_access_container1_controller.dart';

// ignore: must_be_immutable
class LocationAccessContainer1Screen
    extends GetWidget<LocationAccessContainer1Controller> {
   LocationAccessContainer1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return GetBuilder<LocationAccessContainer1Controller>(builder: (controller) {
      // ignore: deprecated_member_use
      return WillPopScope(
        onWillPop: () {

          if (PrefData.currentIndex == 0) {
            {
              showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  backgroundColor: Colors.white,
                  shape:  RoundedRectangleBorder(borderRadius:
                  BorderRadius.all(Radius.circular(16))),
                  insetPadding: getPadding(left: getSize(27),right: getSize(27)),
                  title: Padding(
                    padding: getPadding(left: getSize(15),right: getSize(15)),
                    child: Text('Are you sure you want to Exit ?',style: TextStyle(
                      color: Colors.black,
                      fontSize: getFontSize(18),
                      fontWeight: FontWeight.w600,
                    ),),
                  ),

                  actions: <Widget>[
                    Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Get.back();
                            },
                            child: Padding(
                              padding: getPadding(left: getSize(30),bottom: getSize(20)),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                      color: Color(0xFFAA6BE9),
                                      width: getSize(1.5),
                                    )
                                ),
                                child: Padding(
                                  padding:  getPadding(top: getSize(14),bottom: getSize(14)),
                                  child: Center(
                                    child: Text(
                                      'No',style: TextStyle(
                                      color: Color(0xFFAA6BE9),
                                      fontSize: getFontSize(18),
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
                          width: getSize(20),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: ()  {
                              PrefData.currentIndex =0;
                              Get.back();
                              controller.onExit();
                            },
                            child: Padding(
                              padding: getPadding(right: getSize(30),bottom: getSize(20)),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color(0xFFAA6BE9),
                                ),
                                child: Padding(
                                  padding:  getPadding(top: getSize(14),bottom: getSize(14)),
                                  child: Center(
                                    child: Text(
                                      'Yes',style: TextStyle(
                                      color: Colors.white,
                                      fontSize: getFontSize(18),
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

                  ],
                ),
              );
              controller.update();
            }
          }
          else {
            PrefData.currentIndex = 0;
            controller.update();
          }
          return Future(() => false);
          },

        child: Scaffold(
            backgroundColor: Colors.white,
            body : Center(
              child: pageList.elementAt(PrefData.currentIndex),
            ),

            bottomNavigationBar:
            CustomBottomBar(onChanged: (BottomBarEnum type) {
              Get.toNamed(getCurrentRoute(type), id: 1);
            })
        ),
      );
    },init: LocationAccessContainer1Controller(),);
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

  ///Handling page based on route
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
  List<Widget> pageList =[
    LocationAccessContainerPage(),
    LikesListPage(),
    ChatsTwoPage(),
    ProfilePage(),

  ];

}
