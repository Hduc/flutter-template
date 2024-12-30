import '../home_screen_container_page/models/home_screen_container_model.dart';
import '../home_screen_container_page/models/recomended_game_model.dart';
import '../recomended_for_you_one_screen/widgets/listrectangle30_item_widget.dart';
import 'controller/recomended_for_you_one_controller.dart';
import 'models/listrectangle30_item_model.dart';
import 'package:flutter/material.dart';
import 'package:game_store_app/core/app_export.dart';
import 'package:game_store_app/widgets/app_bar/appbar_image.dart';
import 'package:game_store_app/widgets/app_bar/appbar_title.dart';
import 'package:game_store_app/widgets/app_bar/custom_app_bar.dart';
import 'package:game_store_app/widgets/custom_search_view.dart';

class RecomendedForYouOneScreen
    extends GetWidget<RecomendedForYouOneController> {
  List<RecomendedData> recomendedData = HomeScreenContainerModel.getRecomendedGames();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{
        Get.back();
        return true;
      },
      child: Scaffold(
          resizeToAvoidBottomInset: false,
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
                    onTapArrowleft9();
                  }),
              centerTitle: true,
              title: AppbarTitle(text: "msg_recomended_for_you".tr),
              styleType: Style.bgFillWhiteA700),
          body: SafeArea(
            child: Container(
                width: double.maxFinite,
                padding: getPadding(left: 0, top: 16, right: 0, bottom: 16),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getPadding(left: 20,right: 20),
                        child: CustomSearchView(
                            controller: controller.searchController,
                            hintText: "lbl_search".tr,
                            prefix: Container(
                                margin: getMargin(
                                    left: 16, top: 12, right: 8, bottom: 12),
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgSearch)),
                            prefixConstraints:
                                BoxConstraints(maxHeight: getVerticalSize(48)),
                           ),
                      ),
                      Expanded(
                          child: Padding(
                              padding: getPadding(top: 24),
                              child: ListView.separated(
                                  padding: getPadding(left: 20,right: 20),
                                  physics: BouncingScrollPhysics(),
                                  shrinkWrap: true,
                                  separatorBuilder: (context, index) {
                                    return SizedBox(
                                        height: getVerticalSize(16));
                                  },
                                  itemCount: recomendedData
                                      .length,
                                  itemBuilder: (context, index) {
                                    RecomendedData model = recomendedData[index];
                                    return Listrectangle30ItemWidget(model,
                                        onTapRecomendedforyo: () {
                                          onTapRecomendedforyo();
                                        });
                                  })))
                    ])),
          )),
    );
  }

  onTapRecomendedforyo() {
    Get.toNamed(AppRoutes.detailsGameScreen);
  }

  onTapArrowleft9() {
    Get.back();
  }
}
