import 'package:flutter/material.dart';
import 'package:musicapp/core/app_export.dart';
import 'package:musicapp/widgets/app_bar/appbar_image.dart';
import 'package:musicapp/widgets/app_bar/appbar_title.dart';

import '../home_screen_page/controller/home_screen_controller.dart';
import '../home_screen_page/models/list18271_item_model.dart';
import '../recently_played_screen/widgets/recently_played_item_widget.dart';
import 'controller/recently_played_controller.dart';



class RecentlyPlayedScreen extends StatefulWidget {
  const RecentlyPlayedScreen({super.key});

  @override
  State<RecentlyPlayedScreen> createState() => _RecentlyPlayedScreenState();
}

class _RecentlyPlayedScreenState extends State<RecentlyPlayedScreen> {
 RecentlyPlayedController recentlyPlayedController = Get.put(RecentlyPlayedController());
 HomeScreenController controller = Get.put(HomeScreenController());
 @override
 void initState() {
   setSafeAreaColor();
  super.initState();
 }
 @override
 Widget build(BuildContext context) {
  return WillPopScope(
      onWillPop: () async {
       Get.back();
       return true;
      },
      child: Scaffold(
          backgroundColor: appTheme.bgColor,
          body:  Column(
            children: [
              SizedBox(height: getVerticalSize(24),),
              Container(
                color: appTheme.bgColor,
                child:
                Padding(
                  padding:getPadding(left: 20,right: 20,top: 24,bottom: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppbarImage(
                          height: getSize(24),
                          width: getSize(24),
                          svgPath:PrefUtils().getThemeData() == "primary"?ImageConstant.imgArrowleft:ImageConstant.imgArrowleftWhite,

                          onTap: () {
                            onTapArrowleft3();
                          }),
                      AppbarTitle(text: "lbl_recently_played".tr),
                      SizedBox()
                    ],
                  ),
                )


              ),
              Expanded(
                child: ListView(
                  children: [
                    GridView.builder(
                      padding: getPadding(top: 0,left: 20,right: 20,bottom: 16),
                      primary: false,
                      shrinkWrap: true,
                      itemCount: controller.recentPlayData.length,
                      gridDelegate:
                      SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: getVerticalSize(284),
                          crossAxisCount: 2,
                          mainAxisSpacing: getHorizontalSize(16),
                          crossAxisSpacing: getHorizontalSize(16))
                      , itemBuilder: (context, index) {

                      List18271ItemModel model = controller.recentPlayData[index];
                      return RecentlyPlayedItemWidget(model);
                    },),
                  ],
                ),
              ),
            ],
          ),
      ));
 }


 onTapArrowleft3() {
  Get.back();
 }
}




