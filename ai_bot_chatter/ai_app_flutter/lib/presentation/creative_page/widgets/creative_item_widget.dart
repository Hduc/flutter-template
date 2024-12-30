import '../controller/creative_controller.dart';
import '../models/creative_item_model.dart';
import 'package:ai_app_flutter/core/app_export.dart';
import 'package:ai_app_flutter/widgets/custom_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CreativeItemWidget extends StatelessWidget {
  CreativeItemWidget(this.creativeItemModelObj);

  CreativeItemModel creativeItemModelObj;

  var controller = Get.find<CreativeController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: getPadding(
            left: 4,
            top: 6,
            right: 4,
            bottom: 6,
          ),
          decoration: AppDecoration.fillDeeporange50.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder16,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgMusiccd1,
                height: getSize(
                  86,
                ),
                width: getSize(
                  86,
                ),
                margin: getMargin(
                  top: 11,
                ),
              ),
              CustomButton(
                height: getVerticalSize(
                  48,
                ),
                width: getHorizontalSize(
                  171,
                ),
                text: "lbl_songs_lyrics".tr,
                margin: getMargin(
                  top: 14,
                ),
                variant: ButtonVariant.FillWhiteA700,
                padding: ButtonPadding.PaddingAll13,
                fontStyle: ButtonFontStyle.AirbnbCerealWBd16,
              ),
            ],
          ),
        ),
        Container(
          height: getVerticalSize(
            171,
          ),
          width: getHorizontalSize(
            179,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: getPadding(
                    all: 4,
                  ),
                  decoration: AppDecoration.fillBlue50.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder16,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: getVerticalSize(
                          48,
                        ),
                        width: getHorizontalSize(
                          171,
                        ),
                        margin: getMargin(
                          top: 115,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.whiteA700,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: getPadding(
                    left: 47,
                    right: 42,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgSuccessstory1,
                        height: getSize(
                          86,
                        ),
                        width: getSize(
                          86,
                        ),
                        margin: getMargin(
                          left: 3,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 31,
                        ),
                        child: Obx(
                          () => Text(
                            creativeItemModelObj.titleTxt.value,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtHeadline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
