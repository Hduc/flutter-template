import '../controller/vouncher_controller.dart';
import '../models/vouncher_item_model.dart';
import 'package:flutter/material.dart';
import 'package:game_store_app/core/app_export.dart';
import 'package:game_store_app/widgets/custom_button.dart';

// ignore: must_be_immutable
class VouncherItemWidget extends StatelessWidget {
  VouncherItemWidget(this.vouncherItemModelObj);

  VouncherItemModel vouncherItemModelObj;

  var controller = Get.find<VouncherController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: Container(
        decoration: AppDecoration.outlineBlack90011.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: getVerticalSize(
                164,
              ),
              width: getHorizontalSize(
                388,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgBiggestgames2,
                    height: getVerticalSize(
                      164,
                    ),
                    width: getHorizontalSize(
                      388,
                    ),
                    radius: BorderRadius.only(
                      topLeft: Radius.circular(
                        getHorizontalSize(
                          20,
                        ),
                      ),
                      topRight: Radius.circular(
                        getHorizontalSize(
                          20,
                        ),
                      ),
                    ),
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: getPadding(
                        left: 16,
                        top: 15,
                        right: 16,
                        bottom: 15,
                      ),
                      decoration:
                          AppDecoration.gradientBlack900Bluegray10000.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderTL20,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 85,
                            ),
                            child: Text(
                              "lbl_pubg_mobile".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtSubheadWhiteA700,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 8,
                            ),
                            child: Text(
                              "lbl_60_uc".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtHeadlineWhiteA700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                left: 16,
                top: 11,
                right: 16,
                bottom: 5,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Obx(
                        () => Text(
                          vouncherItemModelObj.redeemcodepubgTxt.value,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtHeadline,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 9,
                        ),
                        child: Obx(
                          () => Text(
                            vouncherItemModelObj.until31jul2022Txt.value,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtBodyGray600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  CustomButton(
                    height: getVerticalSize(
                      39,
                    ),
                    width: getHorizontalSize(
                      92,
                    ),
                    text: "lbl_claim".tr,
                    margin: getMargin(
                      top: 3,
                      bottom: 8,
                    ),
                    padding: ButtonPadding.PaddingAll13,
                    fontStyle: ButtonFontStyle.AeonikBold14,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
