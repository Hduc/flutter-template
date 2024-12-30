import 'package:flutter/material.dart';
import 'package:musicapp/core/app_export.dart';
import 'package:musicapp/widgets/app_bar/appbar_image.dart';
import 'package:musicapp/widgets/app_bar/appbar_title.dart';

import '../home_screen_page/controller/home_screen_controller.dart';
import '../home_screen_page/models/list18271_item_model.dart';
import '../recommended_for_you_screen/widgets/recommended_for_item_widget.dart';
import 'controller/my_wishlist_controller.dart';

class MyWishlistScreen extends StatefulWidget {
  const MyWishlistScreen({super.key});

  @override
  State<MyWishlistScreen> createState() => _MyWishlistScreenState();
}

class _MyWishlistScreenState extends State<MyWishlistScreen> {
  MyWishlistController myWishlistController = Get.put(MyWishlistController());
  HomeScreenController homeScreenController = Get.put(HomeScreenController());
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
            body: Column(
              children: [
                SizedBox(
                  height: getVerticalSize(35),
                ),
                Container(
                    color: appTheme.bgColor,
                    child: Padding(
                      padding:
                      getPadding(left: 20, right: 20, top: 24, bottom: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppbarImage(
                              height: getSize(24),
                              width: getSize(24),
                              svgPath: PrefUtils().getThemeData() == "primary"
                                  ? ImageConstant.imgArrowleft
                                  : ImageConstant.imgArrowleftWhite,
                              onTap: () {
                                Get.back();
                              }),
                          AppbarTitle(text: "lbl_my_wishlist".tr),
                          SizedBox()
                        ],
                      ),
                    )),
                Expanded(
                  child: ListView(
                    children: [
                      GridView.builder(
                        padding:
                        getPadding(top: 0, left: 20, right: 20, bottom: 16),
                        primary: false,
                        shrinkWrap: true,
                        itemCount: homeScreenController.recommendedData.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisExtent: getVerticalSize(284),
                            crossAxisCount: 2,
                            mainAxisSpacing: getHorizontalSize(16),
                            crossAxisSpacing: getHorizontalSize(16)),
                        itemBuilder: (context, index) {
                          RecommendedData data =
                          homeScreenController.recommendedData[index];
                          return RecommendedForItemWidget(data);
                        },
                      )
                    ],
                  ),
                ),
              ],
            ),));
  }

  onTapArrowleft14() {
    Get.back();
  }
}
