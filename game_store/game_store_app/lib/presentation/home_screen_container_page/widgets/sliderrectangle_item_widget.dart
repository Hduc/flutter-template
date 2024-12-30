import '../controller/home_screen_container_controller.dart';
import '../models/sliderrectangle_item_model.dart';
import 'package:flutter/material.dart';
import 'package:game_store_app/core/app_export.dart';
import 'package:game_store_app/widgets/custom_button.dart';

// ignore: must_be_immutable
class SliderrectangleItemWidget extends StatelessWidget {
  SliderrectangleItemWidget(this.sliderrectangleItemModelObj);

  SliderrectangleItemModel sliderrectangleItemModelObj;

  var controller = Get.find<HomeScreenContainerController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        170,
      ),
      width: getHorizontalSize(
        388,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: sliderrectangleItemModelObj.image,
            height: getVerticalSize(
              170,
            ),
            width: getHorizontalSize(
              388,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                20,
              ),
            ),
            alignment: Alignment.center,
          ),




          Align(
            alignment: Alignment.center,
            child: Container(
              width: double.infinity,
              height: getVerticalSize(
                170,
              ),
              decoration: AppDecoration.gradientBlack9009eBlack90000.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Padding(
                padding: getPadding(left: 16,right: 16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: getHorizontalSize(
                        135,
                      ),
                      child: Text(
                        sliderrectangleItemModelObj.title!,
                        maxLines: null,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtAeonikBold19WhiteA700,
                      ),
                    ),
                    SizedBox(height: getVerticalSize(16),),
                    CustomButton(
                      height: getVerticalSize(
                        29,
                      ),
                      width: getHorizontalSize(
                        103,
                      ),
                      text: "lbl_play_now".tr,
                      margin: getMargin(
                        top: 0,
                      ),
                      shape: ButtonShape.RoundedBorder14,
                      padding: ButtonPadding.PaddingAll6,
                      fontStyle: ButtonFontStyle.AeonikBold14,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
