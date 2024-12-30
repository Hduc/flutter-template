import '../home_screen_container_page/models/home_screen_container_model.dart';
import '../home_screen_container_page/models/top_games_model.dart';
import '../top_games_screen/widgets/top_games_item_widget.dart';
import 'controller/top_games_controller.dart';
import 'models/top_games_item_model.dart';
import 'package:flutter/material.dart';
import 'package:game_store_app/core/app_export.dart';
import 'package:game_store_app/widgets/app_bar/appbar_image.dart';
import 'package:game_store_app/widgets/app_bar/appbar_title.dart';
import 'package:game_store_app/widgets/app_bar/custom_app_bar.dart';

class TopGamesScreen extends GetWidget<TopGamesController> {
  List<TopGames> topGame = HomeScreenContainerModel.getTopGames();
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
                    onTapArrowleft8();
                  }),
              centerTitle: true,
              title: AppbarTitle(text: "lbl_top_games".tr),
              styleType: Style.bgFillWhiteA700),
          body: SafeArea(
            child: Padding(
                padding: getPadding(left: 20, top: 24, right: 20),
                child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: getVerticalSize(16));
                    },
                    itemCount: topGame.length,
                    itemBuilder: (context, index) {
                      TopGames model = topGame[index];
                      return TopGamesItemWidget(model,
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

  onTapArrowleft8() {
    Get.back();
  }
}
