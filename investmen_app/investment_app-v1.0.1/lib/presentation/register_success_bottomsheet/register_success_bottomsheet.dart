import 'package:investment_app/presentation/homepage_vthree_container_screen/homepage_vthree_container_screen.dart';

import 'controller/register_success_controller.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class RegisterSuccessBottomsheet extends StatelessWidget {
  RegisterSuccessBottomsheet(this.controller);

  RegisterSuccessController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: size.width,
        padding: getPadding(
          left: 17,
          top: 40,
          right: 17,
          bottom: 40,
        ),
        decoration: AppDecoration.fillWhiteA700.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL32,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                height: getVerticalSize(
                  151.00,
                ),
                width: getHorizontalSize(
                  200.00,
                ),
                margin: getMargin(
                  top: 25,
                ),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle1934stroke,
                      height: getVerticalSize(
                        125.00,
                      ),
                      width: getHorizontalSize(
                        105.00,
                      ),
                      alignment: Alignment.topCenter,
                      margin: getMargin(
                        top: 4,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: getPadding(
                          top: 25,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgStar3,
                              height: getSize(
                                21.00,
                              ),
                              width: getSize(
                                21.00,
                              ),
                              margin: getMargin(
                                bottom: 68,
                              ),
                            ),
                            Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 0,
                              margin: getMargin(
                                left: 34,
                                top: 9,
                              ),
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  color: ColorConstant.whiteA70033,
                                  width: getHorizontalSize(
                                    2.00,
                                  ),
                                ),
                                borderRadius: BorderRadiusStyle.circleBorder40,
                              ),
                              child: Container(
                                height: getSize(
                                  80.00,
                                ),
                                width: getSize(
                                  80.00,
                                ),
                                padding: getPadding(
                                  all: 22,
                                ),
                                decoration:
                                    AppDecoration.outlineWhiteA70033.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder40,
                                ),
                                child: Stack(
                                  children: [
                                    CustomImageView(
                                      svgPath: ImageConstant.imgCheckmark,
                                      height: getSize(
                                        34.00,
                                      ),
                                      width: getSize(
                                        34.00,
                                      ),
                                      alignment: Alignment.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgStar5,
                              height: getSize(
                                9.00,
                              ),
                              width: getSize(
                                9.00,
                              ),
                              margin: getMargin(
                                left: 10,
                                top: 16,
                                bottom: 64,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: getVerticalSize(
                          6.00,
                        ),
                        width: getHorizontalSize(
                          200.00,
                        ),
                        margin: getMargin(
                          bottom: 15,
                        ),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(
                              0,
                              0.5,
                            ),
                            end: Alignment(
                              1,
                              0.5,
                            ),
                            colors: [
                              ColorConstant.teal5099,
                              ColorConstant.teal5099,
                              ColorConstant.teal5099,
                            ],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: getVerticalSize(
                          6.00,
                        ),
                        width: getHorizontalSize(
                          105.00,
                        ),
                        margin: getMargin(
                          bottom: 1,
                        ),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(
                              0,
                              0.5,
                            ),
                            end: Alignment(
                              1,
                              0.5,
                            ),
                            colors: [
                              ColorConstant.teal5099,
                              ColorConstant.teal5099,
                              ColorConstant.teal5099,
                            ],
                          ),
                        ),
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgStar7,
                      height: getSize(
                        9.00,
                      ),
                      width: getSize(
                        9.00,
                      ),
                      alignment: Alignment.topRight,
                      margin: getMargin(
                        right: 85,
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgStar6,
                      height: getSize(
                        11.00,
                      ),
                      width: getSize(
                        11.00,
                      ),
                      alignment: Alignment.bottomLeft,
                      margin: getMargin(
                        left: 39,
                        bottom: 17,
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgStar4,
                      height: getSize(
                        22.00,
                      ),
                      width: getSize(
                        22.00,
                      ),
                      alignment: Alignment.bottomRight,
                      margin: getMargin(
                        right: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                left: 91,
                top: 5,
              ),
              child: Row(
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgStar8,
                    height: getSize(
                      8.00,
                    ),
                    width: getSize(
                      8.00,
                    ),
                  ),
                  Container(
                    height: getVerticalSize(
                      6.00,
                    ),
                    width: getHorizontalSize(
                      55.00,
                    ),
                    margin: getMargin(
                      left: 43,
                    ),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(
                          0,
                          0.5,
                        ),
                        end: Alignment(
                          1,
                          0.5,
                        ),
                        colors: [
                          ColorConstant.teal5099,
                          ColorConstant.teal5099,
                          ColorConstant.teal5099,
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: getHorizontalSize(
                327.00,
              ),
              margin: getMargin(
                left: 6,
                top: 49,
              ),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "msg_congratulations2".tr,
                      style: TextStyle(
                        color: ColorConstant.gray800,
                        fontSize: getFontSize(
                          32,
                        ),
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: getVerticalSize(
                          1.5,
                        ),
                      ),
                    ),
                    TextSpan(
                      text: "lbl_102".tr,
                      style: TextStyle(
                        color: ColorConstant.blue700,
                        fontSize: getFontSize(
                          32,
                        ),
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: getVerticalSize(
                          1.5,
                        ),
                      ),
                    ),
                    TextSpan(
                      text: "lbl_register_bonus".tr,
                      style: TextStyle(
                        color: ColorConstant.gray800,
                        fontSize: getFontSize(
                          32,
                        ),
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: getVerticalSize(
                          1.5,
                        ),
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: getHorizontalSize(
                328.00,
              ),
              margin: getMargin(
                left: 11,
                top: 8,
              ),
              child: Text(
                "msg_you_already_registered".tr,
                maxLines: null,
                textAlign: TextAlign.center,
                style: AppStyle.txtInterRegular16.copyWith(
                  height: getVerticalSize(
                    1.24,
                  ),
                ),
              ),
            ),
            CustomButton(
              onTap: () {
                PrefUtils.setIsLogin(false);
                Get.off(HomepageVthreeContainerScreen());
              },
              height: 56,
              width: 327,
              text: "msg_view_my_portfolio".tr,
              margin: getMargin(
                left: 6,
                top: 22,
              ),
            ),
            CustomButton(
              onTap: () {
                PrefUtils.setIsLogin(false);
                Get.off(HomepageVthreeContainerScreen());
              },
              height: 56,
              width: 327,
              text: "msg_back_to_starbucks".tr,
              margin: getMargin(
                left: 6,
                top: 8,
              ),
              variant: ButtonVariant.OutlineBlue700,
              fontStyle: ButtonFontStyle.InterBold16,
            ),
          ],
        ),
      ),
    );
  }
}
