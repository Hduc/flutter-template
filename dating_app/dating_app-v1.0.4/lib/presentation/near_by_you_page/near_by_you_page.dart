import 'controller/near_by_you_controller.dart';
import 'models/near_by_you_model.dart';
import 'package:dating_app/core/app_export.dart';
import 'package:dating_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NearByYouPage extends StatelessWidget {
  NearByYouPage({Key? key})
      : super(
          key: key,
        );

  NearByYouController controller =
      Get.put(NearByYouController(NearByYouModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SizedBox(
        width: mediaQueryData.size.width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: double.maxFinite,
                margin: getMargin(
                  top: 24,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: getVerticalSize(
                        585,
                      ),
                      width: getHorizontalSize(
                        16,
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgRectangle4394,
                            height: getVerticalSize(
                              585,
                            ),
                            width: getHorizontalSize(
                              16,
                            ),
                            radius: BorderRadius.circular(
                              getHorizontalSize(
                                8,
                              ),
                            ),
                            alignment: Alignment.center,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgRectangle4395585x16,
                            height: getVerticalSize(
                              585,
                            ),
                            width: getHorizontalSize(
                              16,
                            ),
                            alignment: Alignment.center,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: getVerticalSize(
                        585,
                      ),
                      width: getHorizontalSize(
                        364,
                      ),
                      margin: getMargin(
                        left: 16,
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.person1,
                            height: getVerticalSize(
                              585,
                            ),
                            width: getHorizontalSize(
                              364,
                            ),
                            radius: BorderRadius.circular(
                              getHorizontalSize(
                                32,
                              ),
                            ),
                            alignment: Alignment.center,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              padding: getPadding(
                                left: 16,
                                top: 24,
                                right: 16,
                                bottom: 24,
                              ),
                              decoration: AppDecoration
                                  .gradientnameblack900opacity0nameblack900opacity085
                                  .copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder32,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgImagescroller,
                                    height: getVerticalSize(
                                      3,
                                    ),
                                    width: getHorizontalSize(
                                      316,
                                    ),
                                    margin: getMargin(
                                      left: 8,
                                    ),
                                  ),
                                  Spacer(),
                                  CustomElevatedButton(
                                    text: "lbl_2_5_km".tr,
                                    leftIcon: Container(
                                      margin: getMargin(
                                        right: 1,
                                      ),
                                      child: CustomImageView(
                                        svgPath: ImageConstant.imgRewind,
                                      ),
                                    ),
                                    buttonStyle: CustomButtonStyles
                                        .fillGray50TL6
                                        .copyWith(
                                            fixedSize: MaterialStateProperty
                                                .all<Size>(Size(
                                      getHorizontalSize(
                                        77,
                                      ),
                                      getVerticalSize(
                                        28,
                                      ),
                                    ))),
                                    buttonTextStyle:
                                        CustomTextStyles.bodyMediumWhiteA700,
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 13,
                                    ),
                                    child: Text(
                                      "msg_jenny_wilson_24".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles
                                          .titleLargeWhiteA700,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 14,
                                    ),
                                    child: Text(
                                      "lbl_new_york_usa".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          CustomTextStyles.bodyLargeWhiteA700,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 8,
                                      top: 17,
                                    ),
                                    child: Row(
                                      children: [
                                        Card(
                                          clipBehavior: Clip.antiAlias,
                                          elevation: 0,
                                          margin: EdgeInsets.all(0),
                                          color: appTheme.whiteA700,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder12,
                                          ),
                                          child: Container(
                                            height: getVerticalSize(
                                              41,
                                            ),
                                            width: getHorizontalSize(
                                              150,
                                            ),
                                            padding: getPadding(
                                              top: 9,
                                              bottom: 9,
                                            ),
                                            decoration:
                                                AppDecoration.white.copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder12,
                                            ),
                                            child: Stack(
                                              children: [
                                                CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowrightBlack900,
                                                  height: getSize(
                                                    22,
                                                  ),
                                                  width: getSize(
                                                    22,
                                                  ),
                                                  alignment: Alignment.center,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Card(
                                          clipBehavior: Clip.antiAlias,
                                          elevation: 0,
                                          margin: getMargin(
                                            left: 16,
                                          ),
                                          color: theme.colorScheme.primary,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder12,
                                          ),
                                          child: Container(
                                            height: getVerticalSize(
                                              41,
                                            ),
                                            width: getHorizontalSize(
                                              150,
                                            ),
                                            padding: getPadding(
                                              top: 9,
                                              bottom: 9,
                                            ),
                                            decoration:
                                                AppDecoration.fill.copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder12,
                                            ),
                                            child: Stack(
                                              children: [
                                                CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgIcheart,
                                                  height: getSize(
                                                    22,
                                                  ),
                                                  width: getSize(
                                                    22,
                                                  ),
                                                  alignment: Alignment.center,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: getVerticalSize(
                        585,
                      ),
                      width: getHorizontalSize(
                        16,
                      ),
                      margin: getMargin(
                        left: 16,
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgRectangle4394585x16,
                            height: getVerticalSize(
                              585,
                            ),
                            width: getHorizontalSize(
                              16,
                            ),
                            radius: BorderRadius.circular(
                              getHorizontalSize(
                                8,
                              ),
                            ),
                            alignment: Alignment.center,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              padding: getPadding(
                                top: 81,
                                bottom: 81,
                              ),
                              decoration: AppDecoration
                                  .gradientnameblack900opacity0nameblack900opacity085
                                  .copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder8,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Spacer(),
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.imgLocationGray50,
                                    height: getVerticalSize(
                                      28,
                                    ),
                                    width: getHorizontalSize(
                                      1,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 8,
                                    ),
                                    child: Text(
                                      "msg_jenny_wilson_242".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles
                                          .titleLargeWhiteA700,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 8,
                                    ),
                                    child: Text(
                                      "lbl_new_york_usa".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          CustomTextStyles.bodyLargeWhiteA700,
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
