import '../homepage_vtwo_screen/widgets/homepage_vtwo_item_widget.dart';
import 'controller/homepage_vtwo_controller.dart';
import 'models/homepage_vtwo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/widgets/app_bar/appbar_circleimage.dart';
import 'package:investment_app/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:investment_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:investment_app/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:investment_app/widgets/app_bar/custom_app_bar.dart';
import 'package:investment_app/widgets/custom_button.dart';
import 'package:investment_app/widgets/custom_icon_button.dart';

class HomepageVtwoScreen extends GetWidget<HomepageVtwoController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            56.00,
          ),
          leadingWidth: 74,
          leading: AppbarCircleimage(
            svgPath: ImageConstant.imgUser,
            margin: getMargin(
              left: 24,
            ),
          ),
          title: Padding(
            padding: getPadding(
              left: 12,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AppbarSubtitle1(
                  text: "msg_hello_good_morning".tr,
                ),
                AppbarSubtitle(
                  text: "lbl_jack_sparrow".tr,
                  margin: getMargin(
                    top: 8,
                    right: 10,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            AppbarIconbutton1(
              svgPath: ImageConstant.imgNotification,
              margin: getMargin(
                left: 24,
                right: 24,
              ),
            ),
          ],
        ),
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              width: size.width,
              margin: getMargin(
                top: 33,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "msg_available_balance".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterRegular12.copyWith(
                      height: getVerticalSize(
                        1.27,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 9,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "lbl_112_340".tr,
                            style: TextStyle(
                              color: ColorConstant.gray800,
                              fontSize: getFontSize(
                                32,
                              ),
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                              height: getVerticalSize(
                                1.01,
                              ),
                            ),
                          ),
                          TextSpan(
                            text: "lbl_00".tr,
                            style: TextStyle(
                              color: ColorConstant.gray800,
                              fontSize: getFontSize(
                                24,
                              ),
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                              height: getVerticalSize(
                                1.03,
                              ),
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "lbl_10_240_00".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterMedium12Gray800.copyWith(
                            height: getVerticalSize(
                              1.00,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 4,
                          ),
                          child: Text(
                            "lbl_122".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterMedium12Green500.copyWith(
                              height: getVerticalSize(
                                1.00,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 32,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomButton(
                          height: 56,
                          width: 159,
                          text: "lbl_withdraw".tr,
                          padding: ButtonPadding.PaddingT17,
                          prefixWidget: Container(
                            margin: getMargin(
                              right: 8,
                            ),
                            child: CustomImageView(
                              svgPath: ImageConstant.imgArrowleft,
                            ),
                          ),
                        ),
                        CustomButton(
                          height: 56,
                          width: 159,
                          text: "lbl_deposit".tr,
                          margin: getMargin(
                            left: 8,
                          ),
                          variant: ButtonVariant.OutlineBlue700,
                          padding: ButtonPadding.PaddingT17,
                          fontStyle: ButtonFontStyle.InterBold16,
                          prefixWidget: Container(
                            margin: getMargin(
                              right: 8,
                            ),
                            child: CustomImageView(
                              svgPath: ImageConstant.imgContrast,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: getVerticalSize(
                      688.00,
                    ),
                    width: size.width,
                    margin: getMargin(
                      top: 24,
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: getPadding(
                              left: 8,
                              right: 8,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: getHorizontalSize(
                                    359.00,
                                  ),
                                  padding: getPadding(
                                    top: 25,
                                    bottom: 25,
                                  ),
                                  decoration:
                                      AppDecoration.fillLightblue900.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.customBorderTL32,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          left: 24,
                                          right: 24,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "lbl_portfolio".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtInterBold16WhiteA700
                                                  .copyWith(
                                                height: getVerticalSize(
                                                  1.27,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                top: 2,
                                              ),
                                              child: Text(
                                                "lbl_view_all".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtInterBold14
                                                    .copyWith(
                                                  height: getVerticalSize(
                                                    1.19,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          padding: getPadding(
                                            left: 24,
                                            top: 19,
                                            bottom: 47,
                                          ),
                                          child: IntrinsicWidth(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                  padding: getPadding(
                                                    left: 16,
                                                    top: 17,
                                                    right: 16,
                                                    bottom: 17,
                                                  ),
                                                  decoration: AppDecoration
                                                      .fillLightgreen100
                                                      .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder24,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgEllipse2832,
                                                            height: getSize(
                                                              40.00,
                                                            ),
                                                            width: getSize(
                                                              40.00,
                                                            ),
                                                            radius: BorderRadius
                                                                .circular(
                                                              getHorizontalSize(
                                                                20.00,
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding: getPadding(
                                                              left: 12,
                                                            ),
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  "lbl_sbux".tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtInterBold14Gray800
                                                                      .copyWith(
                                                                    height:
                                                                        getVerticalSize(
                                                                      1.19,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding:
                                                                      getPadding(
                                                                    top: 6,
                                                                  ),
                                                                  child: Text(
                                                                    "lbl_sbux"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterRegular12
                                                                        .copyWith(
                                                                      height:
                                                                          getVerticalSize(
                                                                        1.27,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding: getPadding(
                                                          top: 15,
                                                        ),
                                                        child: Text(
                                                          "lbl_80_30".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterBold16
                                                              .copyWith(
                                                            height:
                                                                getVerticalSize(
                                                              1.24,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: getPadding(
                                                          top: 6,
                                                        ),
                                                        child: Row(
                                                          children: [
                                                            CustomImageView(
                                                              svgPath: ImageConstant
                                                                  .imgCheckmarkGray800,
                                                              height: getSize(
                                                                14.00,
                                                              ),
                                                              width: getSize(
                                                                14.00,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  getPadding(
                                                                left: 4,
                                                              ),
                                                              child: Text(
                                                                "lbl_1_80_1_32"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterRegular12Gray800
                                                                    .copyWith(
                                                                  height:
                                                                      getVerticalSize(
                                                                    1.27,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  margin: getMargin(
                                                    left: 8,
                                                  ),
                                                  padding: getPadding(
                                                    left: 16,
                                                    top: 17,
                                                    right: 16,
                                                    bottom: 17,
                                                  ),
                                                  decoration: AppDecoration
                                                      .fillIndigoA100
                                                      .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder24,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgEllipse28323,
                                                            height: getSize(
                                                              40.00,
                                                            ),
                                                            width: getSize(
                                                              40.00,
                                                            ),
                                                            radius: BorderRadius
                                                                .circular(
                                                              getHorizontalSize(
                                                                20.00,
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding: getPadding(
                                                              left: 12,
                                                            ),
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  "lbl_nike".tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtInterBold14WhiteA700
                                                                      .copyWith(
                                                                    height:
                                                                        getVerticalSize(
                                                                      1.19,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding:
                                                                      getPadding(
                                                                    top: 7,
                                                                  ),
                                                                  child: Text(
                                                                    "lbl_nike_inc"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterRegular12Bluegray10001
                                                                        .copyWith(
                                                                      height:
                                                                          getVerticalSize(
                                                                        1.27,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding: getPadding(
                                                          top: 15,
                                                        ),
                                                        child: Text(
                                                          "lbl_111_05".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterBold16WhiteA700
                                                              .copyWith(
                                                            height:
                                                                getVerticalSize(
                                                              1.24,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: getPadding(
                                                          top: 6,
                                                        ),
                                                        child: Row(
                                                          children: [
                                                            CustomImageView(
                                                              svgPath: ImageConstant
                                                                  .imgArrowdown,
                                                              height: getSize(
                                                                14.00,
                                                              ),
                                                              width: getSize(
                                                                14.00,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  getPadding(
                                                                left: 4,
                                                              ),
                                                              child: Text(
                                                                "lbl_2_85_0_32"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterRegular12
                                                                    .copyWith(
                                                                  height:
                                                                      getVerticalSize(
                                                                    1.27,
                                                                  ),
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
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: getMargin(
                                    left: 16,
                                    top: 16,
                                    right: 16,
                                  ),
                                  padding: getPadding(
                                    left: 16,
                                    top: 17,
                                    right: 16,
                                    bottom: 17,
                                  ),
                                  decoration:
                                      AppDecoration.fillWhiteA700.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder24,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgEllipse2832,
                                        height: getSize(
                                          40.00,
                                        ),
                                        width: getSize(
                                          40.00,
                                        ),
                                        radius: BorderRadius.circular(
                                          getHorizontalSize(
                                            20.00,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 12,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "lbl_sbux".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtInterBold14Gray800
                                                  .copyWith(
                                                height: getVerticalSize(
                                                  1.19,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                top: 6,
                                              ),
                                              child: Text(
                                                "lbl_starbucks".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular12
                                                    .copyWith(
                                                  height: getVerticalSize(
                                                    1.27,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      CustomImageView(
                                        imagePath: ImageConstant.imgChart,
                                        height: getVerticalSize(
                                          40.00,
                                        ),
                                        width: getHorizontalSize(
                                          57.00,
                                        ),
                                        margin: getMargin(
                                          left: 44,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 28,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "lbl_35_123".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtInterBold14Gray800
                                                  .copyWith(
                                                height: getVerticalSize(
                                                  1.19,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                top: 6,
                                              ),
                                              child: Text(
                                                "lbl_142".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular12Green500
                                                    .copyWith(
                                                  height: getVerticalSize(
                                                    1.27,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: getVerticalSize(
                                    77.00,
                                  ),
                                  width: getHorizontalSize(
                                    327.00,
                                  ),
                                  margin: getMargin(
                                    top: 5,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.topCenter,
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                          margin: getMargin(
                                            top: 3,
                                          ),
                                          padding: getPadding(
                                            all: 16,
                                          ),
                                          decoration: AppDecoration
                                              .fillWhiteA700
                                              .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder24,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgEllipse283240x40,
                                                height: getSize(
                                                  40.00,
                                                ),
                                                width: getSize(
                                                  40.00,
                                                ),
                                                radius: BorderRadius.circular(
                                                  getHorizontalSize(
                                                    20.00,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  left: 12,
                                                ),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "lbl_aapl".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterBold14Gray800
                                                          .copyWith(
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
                                                        "lbl_apple".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterRegular12
                                                            .copyWith(
                                                          height:
                                                              getVerticalSize(
                                                            1.27,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Spacer(),
                                              CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgChart,
                                                height: getVerticalSize(
                                                  40.00,
                                                ),
                                                width: getHorizontalSize(
                                                  57.00,
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  left: 28,
                                                  bottom: 1,
                                                ),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "lbl_35_123".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterBold14Gray800
                                                          .copyWith(
                                                        height: getVerticalSize(
                                                          1.19,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: getPadding(
                                                        top: 6,
                                                      ),
                                                      child: Text(
                                                        "lbl_142".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterRegular12Green500
                                                            .copyWith(
                                                          height:
                                                              getVerticalSize(
                                                            1.27,
                                                          ),
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
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                          height: getVerticalSize(
                                            68.00,
                                          ),
                                          width: getHorizontalSize(
                                            322.00,
                                          ),
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: fs.Svg(
                                                ImageConstant.imgGroup356,
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          child: Stack(
                                            alignment: Alignment.centerRight,
                                            children: [
                                              CustomIconButton(
                                                height: 68,
                                                width: 68,
                                                variant: IconButtonVariant
                                                    .FillLightblue900,
                                                shape: IconButtonShape
                                                    .CircleBorder32,
                                                padding: IconButtonPadding
                                                    .PaddingAll22,
                                                alignment: Alignment.center,
                                                child: CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgMaximize,
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Container(
                                                  margin: getMargin(
                                                    left: 193,
                                                  ),
                                                  padding: getPadding(
                                                    all: 22,
                                                  ),
                                                  decoration: AppDecoration
                                                      .fillLightblue900
                                                      .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder32,
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgClockBlueGray10001,
                                                        height: getSize(
                                                          24.00,
                                                        ),
                                                        width: getSize(
                                                          24.00,
                                                        ),
                                                      ),
                                                      CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgSearch,
                                                        height: getSize(
                                                          24.00,
                                                        ),
                                                        width: getSize(
                                                          24.00,
                                                        ),
                                                        margin: getMargin(
                                                          left: 36,
                                                          right: 1,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: Container(
                                                  margin: getMargin(
                                                    right: 193,
                                                  ),
                                                  padding: getPadding(
                                                    all: 6,
                                                  ),
                                                  decoration: AppDecoration
                                                      .fillLightblue900
                                                      .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder32,
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      CustomIconButton(
                                                        height: 56,
                                                        width: 56,
                                                        variant: IconButtonVariant
                                                            .OutlineWhiteA7004c,
                                                        shape: IconButtonShape
                                                            .CircleBorder28,
                                                        padding:
                                                            IconButtonPadding
                                                                .PaddingAll16,
                                                        child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgIconsolidhomealt,
                                                        ),
                                                      ),
                                                      CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgMenu,
                                                        height: getSize(
                                                          24.00,
                                                        ),
                                                        width: getSize(
                                                          24.00,
                                                        ),
                                                        margin: getMargin(
                                                          left: 20,
                                                          top: 16,
                                                          right: 17,
                                                          bottom: 16,
                                                        ),
                                                      ),
                                                    ],
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
                                Padding(
                                  padding: getPadding(
                                    left: 16,
                                    top: 8,
                                    right: 16,
                                  ),
                                  child: Obx(
                                    () => ListView.separated(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                          height: getVerticalSize(
                                            8.00,
                                          ),
                                        );
                                      },
                                      itemCount: controller.homepageVtwoModelObj
                                          .value.homepageVtwoItemList.length,
                                      itemBuilder: (context, index) {
                                        HomepageVtwoItemModel model = controller
                                            .homepageVtwoModelObj
                                            .value
                                            .homepageVtwoItemList[index];
                                        return HomepageVtwoItemWidget(
                                          model,
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            width: size.width,
                            margin: getMargin(
                              top: 221,
                              bottom: 223,
                            ),
                            padding: getPadding(
                              left: 24,
                              top: 27,
                              right: 24,
                              bottom: 27,
                            ),
                            decoration: AppDecoration.fillGray100.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL32,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    bottom: 169,
                                  ),
                                  child: Text(
                                    "lbl_my_watchlist".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterBold16.copyWith(
                                      height: getVerticalSize(
                                        1.27,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    bottom: 171,
                                  ),
                                  child: Text(
                                    "lbl_view_all".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterBold14.copyWith(
                                      height: getVerticalSize(
                                        1.19,
                                      ),
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
              ),
            ),
          ),
        ),
      ),
    );
  }
}
