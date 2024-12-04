import '../spot_market_stats_screen/widgets/listlogo_item_widget.dart';
import 'controller/spot_market_stats_controller.dart';
import 'models/listlogo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/widgets/custom_icon_button.dart';

class SpotMarketStatsScreen extends GetWidget<SpotMarketStatsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.lightBlue900,
        body: SafeArea(
          child: Container(
              height: size.height,
              width: size.width,
              child: Stack(alignment: Alignment.topRight, children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                        height: getVerticalSize(251.00),
                        width: getHorizontalSize(width),
                        padding: getPadding(
                            left: 24, top: 16, right: 24, bottom: 16),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(ImageConstant.imgGroup14),
                                fit: BoxFit.fill)),
                        child: Stack(children: [
                          CustomIconButton(
                              height: 50,
                              width: 50,
                              variant: IconButtonVariant.FillWhiteA70014,
                              alignment: Alignment.topLeft,
                              onTap: () {
                                onTapBtnArrowleft();
                              },
                              child: CustomImageView(
                                  svgPath: ImageConstant
                                      .imgArrowleftWhiteA70050x50))
                        ]))),
                CustomImageView(
                    imagePath: ImageConstant.imgRectangle1933,
                    height: getVerticalSize(175.00),
                    width: getHorizontalSize(253.00),
                    alignment: Alignment.topRight),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                        margin: getMargin(top: 90),
                        padding: getPadding(all: 24),
                        decoration: AppDecoration.fillWhiteA700.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderTL32),
                        child: Obx(() => ListView.separated(
                            physics: BouncingScrollPhysics(),
                            shrinkWrap: true,
                            separatorBuilder: (context, index) {
                              return SizedBox(height: getVerticalSize(8.00));
                            },
                            itemCount: controller.spotMarketStatsModelObj
                                .value.listlogoItemList.length,
                            itemBuilder: (context, index) {
                              ListlogoItemModel model = controller
                                  .spotMarketStatsModelObj
                                  .value
                                  .listlogoItemList[index];
                              return ListlogoItemWidget(model);
                            })))),
                Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                        padding: getPadding(top: 28),
                        child: Text("msg_sbux_market_stats".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterSemiBold20
                                .copyWith(height: getVerticalSize(1.12)))))
              ])),
        ));
  }

  onTapBtnArrowleft() {
    Get.back();
  }
}
