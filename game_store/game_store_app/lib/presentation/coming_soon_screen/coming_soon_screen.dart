import 'package:game_store_app/presentation/home_screen_container_page/models/home_screen_container_model.dart';

import '../coming_soon_screen/widgets/coming_soon_item_widget.dart';
import '../home_screen_container_page/models/coming_soon_game_model.dart';
import 'controller/coming_soon_controller.dart';
import 'models/coming_soon_item_model.dart';
import 'package:flutter/material.dart';
import 'package:game_store_app/core/app_export.dart';
import 'package:game_store_app/widgets/app_bar/appbar_image.dart';
import 'package:game_store_app/widgets/app_bar/appbar_title.dart';
import 'package:game_store_app/widgets/app_bar/custom_app_bar.dart';

class ComingSoonScreen extends GetWidget<ComingSoonController> {
  List<ComingSoonGames> comingSoonData = HomeScreenContainerModel.getComingSoonGames();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{
        Get.back();
        return true;
      },
      child: Scaffold(
          backgroundColor: ColorConstant.whiteA700,
          appBar: CustomAppBar(
              height: getVerticalSize(66),
              leadingWidth: 44,
              leading: AppbarImage(
                  height: getSize(24),
                  width: getSize(24),
                  svgPath: ImageConstant.imgArrowleftBlack900,
                  margin: getMargin(left: 20, top: 17, bottom: 25),
                  onTap: () {
                    onTapArrowleft12();
                  }),
              centerTitle: true,
              title: AppbarTitle(text: "lbl_coming_soon".tr),
              styleType: Style.bgFillWhiteA700),
          body: SafeArea(
            child: Padding(
                padding: getPadding(left: 0, top: 24, right: 0),
                child: ListView.separated(
                    padding: getPadding(left: 20,right: 20),
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: getVerticalSize(16));
                    },
                    itemCount: comingSoonData.length,
                    itemBuilder: (context, index) {
                      ComingSoonGames model = comingSoonData[index];
                      return ComingSoonItemWidget(model,
                          onTapRecomendedforyo: () {
                            onTapRecomendedforyo();
                          });
                    })),
          )),
    );
  }

  onTapRecomendedforyo() {
    Get.toNamed(AppRoutes.detailsGameScreen);
  }

  onTapArrowleft12() {
    Get.back();
  }
}
