import 'package:flutter/services.dart';

import '../explore_games_screen/widgets/explore_games_item_widget.dart';
import '../home_screen_container_page/models/home_screen_container_model.dart';
import '../home_screen_container_page/models/listgroup4152_item_model.dart';
import 'controller/explore_games_controller.dart';
import 'models/explore_games_item_model.dart';
import 'package:flutter/material.dart';
import 'package:game_store_app/core/app_export.dart';
import 'package:game_store_app/widgets/app_bar/appbar_image.dart';
import 'package:game_store_app/widgets/app_bar/appbar_title.dart';
import 'package:game_store_app/widgets/app_bar/custom_app_bar.dart';
import 'package:game_store_app/widgets/custom_button.dart';

class ExploreGamesScreen extends GetWidget<ExploreGamesController> {
  List<Listgroup4152ItemModel> categoryList = HomeScreenContainerModel.getCAtegory();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{
        closeApp();
        return false;
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
                    onTapArrowleft3();
                  }),
              centerTitle: true,
              title: AppbarTitle(text: "lbl_explore_game".tr),
              styleType: Style.bgFillWhiteA700),
          body: SafeArea(
            child: Container(
                width: double.maxFinite,
                padding: getPadding( top: 27, bottom: 27),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("msg_what_s_the_game".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: AppStyle.txtBodyBlack900),
                      Expanded(
                          child: Padding(
                              padding: getPadding(left: 1, top: 29,),
                              child: GridView.builder(
                                padding: getPadding(left: 20,right: 20),
                                  shrinkWrap: true,
                                  gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      mainAxisExtent: getVerticalSize(120),
                                      crossAxisCount: 3,
                                      mainAxisSpacing:
                                      getHorizontalSize(16),
                                      crossAxisSpacing:
                                      getHorizontalSize(16)),
                                  physics: BouncingScrollPhysics(),
                                  itemCount:categoryList.length,
                                  itemBuilder: (context, index) {
                                    Listgroup4152ItemModel model = categoryList[index];
                                    return ExploreGamesItemWidget(model);
                                  }))),
                      SizedBox(height: getVerticalSize(16),),
                      Padding(
                        padding: getPadding(left: 20,right: 20,top: 16),
                        child: CustomButton(
                            height: getVerticalSize(56),
                            text: "lbl_next".tr,
                            onTap: () {
                              onTapNext();
                            }),
                      ),
                    ])),
          ),

    ));
  }

  onTapNext() {
    PrefUtils.setIsExploler(false);
    Get.toNamed(
      AppRoutes.homeScreenContainer1Screen,
    );
  }
  closeApp() {
    Future.delayed(const Duration(milliseconds: 1000), () {
      SystemNavigator.pop();
    });
  }
  onTapArrowleft3() {
   closeApp();
  }
}
