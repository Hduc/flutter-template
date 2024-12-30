import 'package:investment_app/presentation/homepage_vthree_container_screen/homepage_vthree_container_screen.dart';

import 'controller/withdraw_success_controller.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/widgets/custom_button.dart';
import 'package:investment_app/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class WithdrawSuccessBottomsheet extends StatelessWidget {
  WithdrawSuccessBottomsheet(this.controller);

  WithdrawSuccessController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: size.width,
        padding: getPadding(
          left: 24,
          top: 8,
          right: 24,
          bottom: 8,
        ),
        decoration: AppDecoration.fillWhiteA700.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL32,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: getVerticalSize(
                151.00,
              ),
              width: getHorizontalSize(
                200.00,
              ),
              margin: getMargin(
                top: 57,
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
                            svgPath: ImageConstant.imgStar321x21,
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
                                borderRadius: BorderRadiusStyle.circleBorder40,
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
                            svgPath: ImageConstant.imgStar59x9,
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
                    svgPath: ImageConstant.imgStar79x9,
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
                    svgPath: ImageConstant.imgStar611x11,
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
                    svgPath: ImageConstant.imgStar422x22,
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
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: getPadding(
                  left: 85,
                  top: 5,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgStar88x8,
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
            ),
            Container(
              width: getHorizontalSize(
                266.00,
              ),
              margin: getMargin(
                top: 41,
              ),
              child: Text(
                "msg_withdrawals_are".tr,
                maxLines: null,
                textAlign: TextAlign.center,
                style: AppStyle.txtInterBold32.copyWith(
                  height: getVerticalSize(
                    1.01,
                  ),
                ),
              ),
            ),
            Container(
              width: getHorizontalSize(
                271.00,
              ),
              margin: getMargin(
                top: 11,
              ),
              child: Text(
                "msg_the_withdrawal_process".tr,
                maxLines: null,
                textAlign: TextAlign.center,
                style: AppStyle.txtInterRegular16.copyWith(
                  height: getVerticalSize(
                    1.5,
                  ),
                ),
              ),
            ),
            Container(
              margin: getMargin(
                top: 22,
              ),
              padding: getPadding(
                all: 16,
              ),
              decoration: AppDecoration.outlineGray2001.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder24,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomIconButton(
                    height: 40,
                    width: 40,
                    shape: IconButtonShape.RoundedBorder12,
                    padding: IconButtonPadding.PaddingAll1,
                    child: CustomImageView(
                      svgPath: ImageConstant.imgAirplane3,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 12,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_bank_bca".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterBold14Gray800.copyWith(
                            height: getVerticalSize(
                              1.19,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 7,
                          ),
                          child: Text(
                            "msg_account_ending_3278".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterRegularblack.copyWith(
                              height: getVerticalSize(
                                1.27,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: getPadding(
                      top: 11,
                      bottom: 11,
                    ),
                    child: Text(
                      "lbl_20_423".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterBold14Green500.copyWith(
                        height: getVerticalSize(
                          1.19,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            CustomButton(
              onTap: (){Get.off(HomepageVthreeContainerScreen());},
              height: 56,
              width: 327,
              text: "lbl_ok".tr,
              margin: getMargin(
                top: 24,
              ),
            ),
            Container(
              height: getVerticalSize(
                5.00,
              ),
              width: getHorizontalSize(
                130.00,
              ),
              margin: getMargin(
                top: 27,
              ),
              decoration: BoxDecoration(
                color: ColorConstant.black900,
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    2.00,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
