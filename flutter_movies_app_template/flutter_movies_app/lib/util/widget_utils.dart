// ignore_for_file: deprecated_member_use

import 'dart:io';

import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:vtv/util/country_code_picker.dart';

import 'color_data.dart';
import 'constant.dart';
import 'fetch_pixels.dart';

Widget getCustomFont(String text, double fontSize, Color fontColor, int maxLine,
    {String fontFamily = Constant.fontsFamily,
    TextOverflow overflow = TextOverflow.ellipsis,
    TextDecoration decoration = TextDecoration.none,
    FontWeight fontWeight = FontWeight.normal,
    TextAlign textAlign = TextAlign.start,
    txtHeight,
    bool horFactor = false}) {
  return Text(
    text,
    overflow: overflow,
    style: TextStyle(
        decoration: decoration,
        fontSize: fontSize.sp,
        fontStyle: FontStyle.normal,
        color: fontColor,
        fontFamily: fontFamily,
        height: txtHeight,
        fontWeight: fontWeight),
    maxLines: maxLine,
    softWrap: true,
    textAlign: textAlign,
  );
}

Widget getCustomFontHor(BuildContext context, String text, double fontSize,
    Color fontColor, int maxLine,
    {String fontFamily = Constant.fontsFamily,
    TextOverflow overflow = TextOverflow.ellipsis,
    TextDecoration decoration = TextDecoration.none,
    FontWeight fontWeight = FontWeight.normal,
    TextAlign textAlign = TextAlign.start,
    txtHeight,
    bool horFactor = false}) {
  double width = context.width;
  double height = context.height;

  double textScaleFactor = (width > height)
      ? width / Constant.defScreenWidth
      : height / Constant.defScreenHeight;
  return Text(
    text,
    overflow: overflow,
    style: TextStyle(
        decoration: decoration,
        fontSize: fontSize.sp,
        fontStyle: FontStyle.normal,
        color: fontColor,
        fontFamily: fontFamily,
        height: txtHeight,
        fontWeight: fontWeight),
    maxLines: maxLine,
    softWrap: true,
    textAlign: textAlign,
    textScaleFactor: textScaleFactor,
  );
}

TextStyle buildTextStyle(BuildContext context, Color fontColor,
    FontWeight fontWeight, double fontSize,
    {double txtHeight = 1}) {
  return TextStyle(
      color: fontColor,
      fontWeight: fontWeight,
      fontFamily: Constant.fontsFamily,
      fontSize: fontSize.sp,
      height: txtHeight);
}

DecorationImage getDecorationAssetImage(BuildContext buildContext, String image,
    {BoxFit fit = BoxFit.contain}) {
  return DecorationImage(
    image: AssetImage(Constant.assetImagePath + image),
    fit: fit,
  );
}

Widget getGradientContainer(
  BuildContext context, {
  double radius = 12,
  Widget? child,
}) {
  return Container(
    width: double.infinity,
    height: double.infinity,
    alignment: Alignment.bottomLeft,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(radius.r),
      gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0x0007021f), Color(0xff07021f)],
          stops: [0.42, 1.0]),
    ),
    child: child,
  );
}

Widget getMultilineCustomFont(String text, double fontSize, Color fontColor,
    {String fontFamily = Constant.fontsFamily,
    TextOverflow overflow = TextOverflow.ellipsis,
    TextDecoration decoration = TextDecoration.none,
    FontWeight fontWeight = FontWeight.normal,
    TextAlign textAlign = TextAlign.start,
    txtHeight = 1.5}) {
  return Text(
    text,
    style: TextStyle(
        decoration: decoration,
        fontSize: fontSize.sp,
        fontStyle: FontStyle.normal,
        color: fontColor,
        fontFamily: Constant.fontsFamily,
        height: txtHeight,
        fontWeight: fontWeight),
    textAlign: textAlign,
  );
}

double getButtonHeightFigma() {
  return 60.h;
}

Widget getButtonContainer(
    BuildContext context, IconData iconData, Function function,
    {double size = 40, double iconSize = 24}) {
  return InkWell(
    onTap: () {
      function();
    },
    child: Container(
      width: size.h,
      decoration:
          BoxDecoration(color: "#FFF3F3".toColor(), shape: BoxShape.circle),
      height: size.h,
      child: Center(
        child: Icon(iconData, size: iconSize.h, color: getAccentColor(context)),
      ),
    ),
  );
}

double getEditHeightFigma() {
  return 60.h;
}

double getEditFontSizeFigma() {
  return 16;
}

double getEditRadiusSize() {
  return 35.h;
}

double getEditRadiusSizeFigma() {
  return 12.h;
}

double getEditIconSize() {
  return 30;
}

double getButtonCorners() {
  return 35.h;
}

double getButtonCornersFigma() {
  return 12.h;
}

double getButtonFontSizeFigma() {
  return 18;
}

ShapeDecoration getButtonDecoration(Color bgColor,
    {withBorder = false,
    Color borderColor = Colors.transparent,
    bool withCorners = true,
    double corner = 0,
    double cornerSmoothing = 1.1,
    List<BoxShadow> shadow = const []}) {
  return ShapeDecoration(
      color: bgColor,
      shadows: shadow,
      shape: SmoothRectangleBorder(
          side: BorderSide(
              width: 1, color: (withBorder) ? borderColor : Colors.transparent),
          borderRadius: SmoothBorderRadius(
              cornerRadius: (withCorners) ? corner : 0,
              cornerSmoothing: (withCorners) ? cornerSmoothing : 0)));
}

ShapeDecoration getButtonDecorationWithGradient(Color bgColor,
    {withBorder = false,
    Color borderColor = Colors.transparent,
    bool withCorners = true,
    double corner = 0,
    double cornerSmoothing = 1.1,
    List<BoxShadow> shadow = const []}) {
  return ShapeDecoration(
      shadows: shadow,
      gradient: getGradients(),
      shape: SmoothRectangleBorder(
          side: BorderSide(
              width: 1, color: (withBorder) ? borderColor : Colors.transparent),
          borderRadius: SmoothBorderRadius(
              cornerRadius: (withCorners) ? corner : 0,
              cornerSmoothing: (withCorners) ? cornerSmoothing : 0)));
}

getGradients() {
  return LinearGradient(colors: [
    "#FF8080".toColor(),
    "#F44144".toColor(),
  ], begin: Alignment.topCenter, end: Alignment.bottomCenter);
}

Widget buildProfilePhotoWidget(BuildContext context,
    {Function? function, String icons = "ic_edit.svg"}) {
  return Center(
    child: SizedBox(
      width: 102.h,
      height: 100.h,
      child: Stack(
        children: [
          getCircleImage(context, "profile.png", double.infinity),
          Align(
            alignment: Alignment.bottomRight,
            child: InkWell(
              onTap: () {
                if (function != null) {
                  function();
                }
              },
              child: Container(
                width: 30.h,
                height: 30.h,
                decoration:
                    const BoxDecoration(shape: BoxShape.circle, boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(61, 61, 61, 0.11999999731779099),
                      offset: Offset(-4, 8),
                      blurRadius: 25)
                ]),
                child: getSvgImageWithSize(
                    context, icons, double.infinity, double.infinity),
              ),
            ),
          )
        ],
      ),
    ),
  );
}

Widget getToolbarWidget(BuildContext context, String title, Function fun,
    {bool isShowBack = true}) {
  SmoothRadius smoothRadius =
      SmoothRadius(cornerRadius: 90.h, cornerSmoothing: 0);
  return Container(
    width: double.infinity,
    height: 132.h,
    padding: EdgeInsets.only(
        left: FetchPixels.getDefaultHorSpaceFigma(context),
        right: FetchPixels.getDefaultHorSpaceFigma(context),
        bottom: 30.h),
    decoration: ShapeDecoration(
        color: getAccentColor(context),
        shape: SmoothRectangleBorder(
            borderRadius: SmoothBorderRadius.only(bottomRight: smoothRadius))),
    child: Stack(
      children: [
        (isShowBack)
            ? Align(
                alignment: Alignment.bottomLeft,
                child: getBackIcon(context, () {
                  fun();
                }, colors: Colors.black),
              )
            : getHorSpace(0),
        Align(
          alignment: Alignment.bottomCenter,
          child: getCustomFont(title, 22, getFontColor(context), 1,
              fontWeight: FontWeight.w700),
        ),
      ],
    ),
  );
}

Widget getDetailWidget(BuildContext context, Function backClick, String title,
    Widget childWidget) {
  double topView = 291.h;
  double radius = topView / 2;
  SmoothRadius smoothRadius =
      SmoothRadius(cornerRadius: radius, cornerSmoothing: 0.6);

  return WillPopScope(
      child: Scaffold(
        backgroundColor: getCurrentTheme(context).scaffoldBackgroundColor,
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: topView,
                decoration: ShapeDecoration(
                    color: getAccentColor(context),
                    shape: SmoothRectangleBorder(
                        borderRadius: SmoothBorderRadius.only(
                            bottomRight: smoothRadius))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 109.h,
                      height: 109.h,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:
                              getCurrentTheme(context).scaffoldBackgroundColor),
                      child: Center(
                        child: getSvgImageWithSize(
                            context, "splash_logo.svg", 53.h, 60.h,
                            fit: BoxFit.fill),
                      ),
                    ),
                    getVerSpace(20.h),
                    getCustomFont(title, 28, getFontColor(context), 1,
                        fontWeight: FontWeight.w700)
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: childWidget,
              )
            ],
          ),
        ),
      ),
      onWillPop: () async {
        backClick();
        return false;
      });
}

Widget getCircleImage(BuildContext context, String imgName, double size,
    {bool fileImage = false}) {
  return SizedBox(
    width: size.h,
    height: size.h,
    child: ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(size / 2)),
      child: (fileImage)
          ? Image.file(File(imgName))
          : getAssetImage(context, imgName, double.infinity, double.infinity),
    ),
  );
}

Widget getSvgImage(BuildContext context, String image, double size,
    {Color? color, BoxFit boxFit = BoxFit.fill}) {
  return SvgPicture.asset(
    Constant.assetImagePath + image,
    color: color,
    width: size.h,
    height: size.h,
    fit: boxFit,
  );
}

Widget getTopViewHeader(BuildContext context, String titleMain, String titleSub,
    {bool visibleSub = true}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      getVerSpace(80.h),
      getHeaderTitle(context, titleMain),
      (!visibleSub) ? getVerSpace(0) : getVerSpace(30.h),
      (!visibleSub) ? getVerSpace(0) : getSubHeaderTitle(context, titleSub),
      getVerSpace(60.h),
    ],
  );
}

Widget getHeaderTitle(BuildContext context, String str) {
  return getCustomFont(str, 55, getFontColor(context), 1,
      fontWeight: FontWeight.w900, textAlign: TextAlign.start);
}

Widget getHeaderTitleCustom(BuildContext context, String str) {
  return getCustomFont(str, 28, getFontColor(context), 1,
      fontWeight: FontWeight.w700,
      textAlign: TextAlign.start,
      horFactor: false);
}

Widget getSubHeaderTitle(BuildContext context, String title) {
  return getCustomFont(title, 40, getFontColor(context), 2,
      fontWeight: FontWeight.w400);
}

Widget getSvgImageWithSize(
    BuildContext context, String image, double width, double height,
    {Color? color, BoxFit fit = BoxFit.fill, bool listen = true}) {
  return SvgPicture.asset(
    Constant.assetImagePath + image,
    color: color,
    width: width,
    height: height,
    fit: fit,
  );
}

Widget getBackIcon(BuildContext context, Function function,
    {String icon = "arrow_back.svg", Color? colors}) {
  return InkWell(
      onTap: () {
        function();
      },
      child: Icon(
        Icons.arrow_back_ios_new_rounded,
        size: 24.h,
        color: colors,
      ));
}

Widget getAssetImage(
    BuildContext context, String image, double width, double height,
    {Color? color, BoxFit boxFit = BoxFit.contain, bool listen = true}) {
  return Image.asset(
    Constant.assetImagePath + image,
    color: color,
    width: width,
    height: height,
    fit: boxFit,
  );
}

Widget getDialogDividerBottom(BuildContext context) {
  return Container(
    width: 134.w,
    decoration: getButtonDecoration(getFontColor(context),
        withCorners: true, withBorder: false, corner: 5.h),
    height: 5.h,
  );
}

Widget getDialogDividerTop(BuildContext context) {
  return Container(
    width: 48.w,
    decoration: getButtonDecoration(getCardColor(context),
        withCorners: true, withBorder: false, corner: 4.h),
    height: 4.h,
  );
}

Widget getTextFieldView(BuildContext context, Widget widget, bool minLines,
    EdgeInsetsGeometry margin) {
  double height = getEditHeightFigma();
  return Container(
    height: (minLines) ? (height * 2.2) : height,
    margin: margin,
    padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 0),
    alignment: (minLines) ? Alignment.topLeft : Alignment.centerLeft,
    decoration: ShapeDecoration(
      color: Colors.transparent,
      shape: SmoothRectangleBorder(
        side: BorderSide(
            color: getCurrentTheme(context).unselectedWidgetColor, width: 1),
        borderRadius: SmoothBorderRadius(
          cornerRadius: getEditRadiusSize(),
          cornerSmoothing: 0.8,
        ),
      ),
    ),
    child: widget,
  );
}

Widget getTextFieldViewCustom(BuildContext context, Widget widget,
    bool minLines, EdgeInsetsGeometry margin) {
  double height = getEditHeightFigma();
  return Container(
    height: (minLines) ? (height * 2.2) : height,
    margin: margin,
    padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 0),
    alignment: (minLines) ? Alignment.topLeft : Alignment.centerLeft,
    decoration: ShapeDecoration(
      color: Colors.transparent,
      shape: SmoothRectangleBorder(
        side: BorderSide(
            color: getCurrentTheme(context).unselectedWidgetColor, width: 1),
        borderRadius: SmoothBorderRadius(
          cornerRadius: getEditRadiusSizeFigma(),
          cornerSmoothing: 0.8,
        ),
      ),
    ),
    child: widget,
  );
}

Widget getScreenDetailDefaultView(
    BuildContext context, String title, Function backClick, Widget childView,
    {bool centerTitle = false,
    bool subtitle = false,
    bool withIcon = false,
    String subtitleText = '',
    String actionImg = '',
    bool withLeading = true}) {
  return WillPopScope(
      child: Scaffold(
        backgroundColor: getCurrentTheme(context).scaffoldBackgroundColor,
        appBar: getBackAppBar(context, () {
          backClick();
        },
            subtitle: subtitle,
            withLeading: withLeading,
            withIcon: withIcon,
            subtitleText: subtitleText,
            title: title,
            actionImg: actionImg,
            iconColor: getFontColor(context),
            centerTitle: centerTitle),
        body: SafeArea(child: childView),
      ),
      onWillPop: () async {
        backClick();
        return false;
      });
}

Widget getTabDetailDefaultView(
    BuildContext context, String title, Function backClick, Widget childView,
    {bool centerTitle = true, bool withLeading = true}) {
  return Column(
    children: [
      getBackAppBar(context, () {
        backClick();
      },
          title: title,
          iconColor: Colors.white,
          centerTitle: centerTitle,
          withLeading: withLeading),
      Expanded(
        flex: 1,
        child: getDefaultContainerView(
            context, childView.paddingOnly(bottom: 104.h)),
      )
    ],
  );
}

Widget getDefaultContainerView(BuildContext context, Widget childView,
    {EdgeInsets padding = EdgeInsets.zero}) {
  return Container(
    width: double.infinity,
    height: double.infinity,
    padding: padding,
    decoration:
        BoxDecoration(color: getCurrentTheme(context).scaffoldBackgroundColor),
    child: childView,
  );
}

showGetDialog(
  BuildContext context,
  String img,
  String title,
  String description,
  String btnText,
  Function function, {
  double dialogHeight = 461,
  double imgWidth = 140,
  double imgHeight = 140,
  BoxFit fit = BoxFit.fill,
  bool withCancelBtn = false,
  bool withVerticalBtn = false,
  String btnTextCancel = "Cancel",
  Function? functionCancel,
  String? btnTextVertical,
  Function? functionVerticalBtn,
}) {
  Get.dialog(Dialog(
    insetPadding: EdgeInsets.symmetric(horizontal: 30.h),
    backgroundColor: getCardColor(context),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12.h))),
    child: SizedBox(
      width: 354.h,
      height: dialogHeight.h,
      child: Column(
        children: [
          getAssetImage(context, img, imgWidth.h, imgHeight.h, boxFit: fit),
          Expanded(
            flex: 1,
            child: 0.verticalSpace,
          ),
          getCustomFont(title, 26, getFontColor(context), 1,
              textAlign: TextAlign.center, fontWeight: FontWeight.w700),
          10.h.verticalSpace,
          getMultilineCustomFont(description, 16, getFontColor(context),
              textAlign: TextAlign.center, fontWeight: FontWeight.w400),
          Expanded(
            flex: 1,
            child: 0.verticalSpace,
          ),
          Row(
            children: [
              (withCancelBtn)
                  ? Expanded(
                      child: getButtonFigma(context, Colors.transparent, true,
                          btnTextCancel, getAccentColor(context), () {
                      if (functionCancel != null) {
                        functionCancel();
                      }
                    }, EdgeInsets.zero,
                          isBorder: true, borderColor: getAccentColor(context)))
                  : 0.horizontalSpace,
              (withCancelBtn) ? 22.h.horizontalSpace : 0.horizontalSpace,
              Expanded(
                  child: getButtonFigma(context, getAccentColor(context), true,
                      btnText, getFontColor(context), () {
                function();
              }, EdgeInsets.zero)),
            ],
          ),
          // 20.h.verticalSpace,
          (withVerticalBtn) ? 20.w.horizontalSpace : 0.horizontalSpace,
          (withVerticalBtn)
              ? Expanded(
                  child: getButtonFigma(context, Colors.white, true,
                      '$btnTextVertical', getAccentColor(context), () {
                    functionVerticalBtn!();
                  }, EdgeInsets.zero,
                      isBorder: true, borderColor: getAccentColor(context)),
                )
              : 0.horizontalSpace
        ],
      ).paddingSymmetric(vertical: 50.h, horizontal: 20.h),
    ),
  ));
}

getLanguageDialog(BuildContext context, Function function, List list, RxInt v,
    {double dialogHeight = 314,
    BoxFit fit = BoxFit.fill,
    bool isTitle = false,
    String title = '',
    Function? functionCancel}) {
  Get.dialog(Dialog(
    insetPadding: EdgeInsets.symmetric(horizontal: 20.h),
    backgroundColor: getCardColor(context),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12.h))),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        30.h.verticalSpace,
        (isTitle)
            ? getCustomFont(title, 20, getFontColor(context), 1,
                fontWeight: FontWeight.w700)
            : 0.h.verticalSpace,
        (isTitle) ? 30.h.verticalSpace : 0.h.verticalSpace,
        ListView.builder(
          shrinkWrap: true,
          itemCount: list.length,
          itemBuilder: (context, index) {
            return SizedBox(
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                          child: getCustomFont(
                              list[index], 18, getFontColor(context), 1,
                              fontWeight: FontWeight.w500)),
                      ObxValue(
                          (p0) => GestureDetector(
                                onTap: () {
                                  v.value = index;
                                },
                                child: getSvgImage(
                                    context,
                                    (v.value == index)
                                        ? 'selected_btn.svg'
                                        : 'unselected_btn.svg',
                                    24),
                              ),
                          v)
                    ],
                  ),
                  20.h.verticalSpace,
                  getDivider(
                      setColor: getFontHint(context),
                      thickness: 1,
                      endIndent: 0.w,
                      indent: 0.w)
                ],
              ),
            ).paddingSymmetric(vertical: 10.h);
          },
        ),
        20.h.verticalSpace,
        Row(
          children: [
            Expanded(
                child: getButtonFigma(context, Colors.transparent, true, 'set',
                    getAccentColor(context), () {
              if (functionCancel != null) {
                functionCancel();
              }
            }, EdgeInsets.zero,
                    withFilter: true,
                    isBorder: true,
                    borderColor: getAccentColor(context))),
            20.w.horizontalSpace,
            Expanded(
                child: getButtonFigma(context, getAccentColor(context), true,
                    'Cancel', getFontColor(context), () {
              function();
            }, EdgeInsets.zero, withFilter: true)),
          ],
        ),
        30.h.verticalSpace,
      ],
    ).paddingSymmetric(
        horizontal: FetchPixels.getDefaultHorSpaceFigma(context)),
  ));
}

getDefaultDialog(BuildContext context, Function function, List list, RxInt v,
    {double dialogHeight = 314,
    BoxFit fit = BoxFit.fill,
    bool isTitle = false,
    String title = '',
    Function? functionCancel}) {
  Get.dialog(Dialog(
    insetPadding: EdgeInsets.symmetric(horizontal: 20.h),
    backgroundColor: getCardColor(context),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12.h))),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        30.h.verticalSpace,
        (isTitle)
            ? getCustomFont(title, 20, getFontColor(context), 1,
                fontWeight: FontWeight.w700)
            : 0.h.verticalSpace,
        (isTitle) ? 30.h.verticalSpace : 0.h.verticalSpace,
        ListView.builder(
          shrinkWrap: true,
          itemCount: list.length,
          itemBuilder: (context, index) {
            return SizedBox(
              // height: 48.h,
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                          child: getCustomFont(
                              list[index], 18, getFontColor(context), 1,
                              fontWeight: FontWeight.w500)),
                      ObxValue(
                          (p0) => GestureDetector(
                                onTap: () {
                                  v.value = index;
                                },
                                child: getSvgImage(
                                    context,
                                    (v.value == index)
                                        ? 'selected_btn.svg'
                                        : 'unselected_btn.svg',
                                    24),
                              ),
                          v)
                    ],
                  ),
                  20.h.verticalSpace,
                  getDivider(
                      setColor: getFontHint(context),
                      thickness: 1,
                      endIndent: 0.w,
                      indent: 0.w)
                ],
              ),
            ).paddingSymmetric(vertical: 10.h);
          },
        ),
        20.h.verticalSpace,
        Row(
          children: [
            Expanded(
                child: getButtonFigma(context, Colors.transparent, true, 'set',
                    getAccentColor(context), () {
              if (functionCancel != null) {
                functionCancel();
              }
            }, EdgeInsets.zero,
                    withFilter: true,
                    isBorder: true,
                    borderColor: getAccentColor(context))),
            20.w.horizontalSpace,
            Expanded(
                child: getButtonFigma(context, getAccentColor(context), true,
                    'Cancel', getFontColor(context), () {
              function();
            }, EdgeInsets.zero, withFilter: true)),
          ],
        ),
        30.h.verticalSpace,
      ],
    ).paddingSymmetric(
        horizontal: FetchPixels.getDefaultHorSpaceFigma(context)),
  ));
}

Widget getNoDataWidget(BuildContext context, String img, String title,
    String desc, RxBool visible) {
  return Column(
    children: [
      getAssetImage(context, img, 140.h, 140.h, boxFit: BoxFit.fill),
      getCustomFont(title, 26, getFontColor(context), 1,
              fontWeight: FontWeight.w700)
          .marginOnly(top: 30.h, bottom: 5.h),
      getCustomFont(desc, 16, getFontColor(context), 1,
          fontWeight: FontWeight.w400),
      getButtonFigma(
        context,
        Colors.transparent,
        true,
        "Explore Now",
        getFontColor(context),
        () {
          visible.value = true;
        },
        isBorder: true,
        borderColor: getAccentColor(context),
        EdgeInsets.zero,
      ).marginSymmetric(vertical: 40.h, horizontal: 114.w),
    ],
  );
}

Widget buildTitles(BuildContext context, String title,
    {bool withPadding = true}) {
  return getCustomFont(title, 17, getFontColor(context), 1,
          fontWeight: FontWeight.w600)
      .marginSymmetric(
          horizontal:
              (withPadding) ? FetchPixels.getDefaultHorSpaceFigma(context) : 0);
}

Widget buildFilterTab(
  BuildContext context,
  List list,
  RxInt v,
) {
  double horSpace = FetchPixels.getDefaultHorSpaceFigma(context);

  return SizedBox(
      height: 35.h,
      child: ListView.builder(
          itemBuilder: (context, index) {
            return ObxValue(
                (p0) => InkWell(
                      onTap: () {
                        v.value = index;
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                            left: (index == 0) ? horSpace : 6.h,
                            right: (index == list.length - 1) ? horSpace : 6.h),
                        decoration: getButtonDecoration(
                            (v.value == index)
                                ? getAccentColor(context)
                                : filterTabColor,
                            corner: 12.h),
                        height: double.infinity,
                        padding: EdgeInsets.symmetric(horizontal: 20.h),
                        child: Center(
                          child: getCustomFont(
                              list[index], 14, getFontColor(context), 1,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                v);
          },
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: list.length,
          padding: EdgeInsets.zero));
}

Widget getDefaultUnderlineTextFiled(
  BuildContext context,
  String s,
  TextEditingController textEditingController,
  Color fontColor,
  ValueChanged<String> changed, {
  bool withPrefix = true,
  String imgName = "",
  bool minLines = false,
  bool isFilled = false,
  bool withArrow = false,
  bool withFilter = false,
  bool readOnly = false,
  bool country = false,
  bool isProfile = false,
  Function? filterClick,
  Function? arrowClick,
  Function? editTap,
  EdgeInsetsGeometry margin = EdgeInsets.zero,
  bool withPadding = true,
}) {
  double height = 43.h;
  return Container(
    height: (isProfile) ? 55 : height,
    width: double.infinity,
    child: Center(
      child: TextField(
        onTap: () {
          if (editTap != null) {
            editTap();
          }
        },
        maxLines: (minLines) ? null : 1,
        controller: textEditingController,
        autofocus: false,
        textAlign: TextAlign.start,
        style: TextStyle(
            fontFamily: Constant.fontsFamily,
            color: getFontColor(context),
            fontWeight: FontWeight.w400,
            fontSize: getEditFontSizeFigma().sp),
        onChanged: changed,
        readOnly: readOnly,
        textAlignVertical: TextAlignVertical.top,
        decoration: InputDecoration(
            prefixIcon: (country)
                ? Row(children: [
                    getSvgImageWithSize(context, imgName, getEditIconSize().h,
                            getEditIconSize().h)
                        .marginOnly(right: 12.h, bottom: 12.h),
                    Expanded(
                      child: CountryCodePicker(
                        onChanged: print,
                        initialSelection: 'IN',
                        flagWidth: 24.h,
                        padding: EdgeInsets.zero,
                        textStyle: buildTextStyle(context,
                            getFontColor(context), FontWeight.w400, 16.sp),
                        favorite: const ['+91', 'IN'],
                        showCountryOnly: false,
                        showDropDownButton: true,
                        showOnlyCountryWhenClosed: false,
                        alignLeft: false,
                      ).marginOnly(bottom: 12.h, right: 12.h),
                    )
                  ])
                : getSvgImageWithSize(context, imgName, getEditIconSize().h,
                        getEditIconSize().h)
                    .marginOnly(right: 12.h, bottom: 12.h),
            prefixIconConstraints: BoxConstraints(
              minWidth: (country) ? 0 : 0,
              minHeight: 30.h,
              maxWidth: (country) ? getEditIconSize().h + 120.h : 60.h,
              maxHeight: 42.h,
            ),
            suffixIconConstraints: BoxConstraints(
              minWidth: 30.w,
              minHeight: 0,
              maxWidth: getEditIconSize().h + (20.w + 16.w),
              maxHeight: getEditIconSize().h,
            ),
            isDense: true,
            filled: isFilled,
            fillColor: getCardColor(context),
            suffixIcon: (withFilter)
                ? InkWell(
                    onTap: () {
                      if (filterClick != null) {
                        filterClick();
                      }
                    },
                    child: getSvgImageWithSize(context, "filter.svg",
                            getEditIconSize().h, getEditIconSize().h)
                        .marginOnly(right: 20.w, left: 16.w),
                  )
                : (withArrow)
                    ? InkWell(
                        onTap: () {
                          if (arrowClick != null) {
                            arrowClick();
                          }
                        },
                        child: getSvgImageWithSize(
                                context, "arrow_down.svg", 16.h, 16.h)
                            .marginOnly(right: 20.w, left: 16.w),
                      )
                    : 0.horizontalSpace,
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: (isFilled)
                      ? Colors.transparent
                      : getDividerColor(context),
                  width: 1.h),
            ),
            disabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: (isFilled)
                      ? Colors.transparent
                      : getDividerColor(context),
                  width: 1.h),
            ),
            errorBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: (isFilled) ? Colors.transparent : getFontHint(context),
                  width: 1.h),
            ),
            border: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: (isFilled)
                      ? Colors.transparent
                      : getDividerColor(context),
                  width: 1.h),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  color:
                      (isFilled) ? Colors.transparent : getAccentColor(context),
                  width: 1.h),
            ),
            labelText: (isProfile) ? s : null,
            hintText: (isProfile) ? null : s,
            labelStyle: TextStyle(
                fontFamily: Constant.fontsFamily,
                color: getFontHint(context),
                fontWeight: FontWeight.w400,
                fontSize: 16.sp)),
      ).marginSymmetric(
          horizontal:
              (withPadding) ? FetchPixels.getDefaultHorSpaceFigma(context) : 0),
    ),
  );
}

Widget getDefaultProfileWidget(
    BuildContext context, String image, String upperName, String bottomName,
    {bool suffix = false}) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              getSvgImage(context, image, 30),
              getHorSpace(12.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  getCustomFont(upperName, 12, getFontHint(context), 1,
                      fontWeight: FontWeight.w400, txtHeight: 1.5.h),
                  getCustomFont(bottomName, 16, Colors.white, 1,
                      fontWeight: FontWeight.w400, txtHeight: 1.5.h)
                ],
              )
            ],
          ),
          suffix ? getSvgImage(context, "arrow_down.svg", 16) : Container()
        ],
      ),
      getVerSpace(12.h),
      getDivider(
          setColor: getDividerColor(context),
          dividerHeight: 0,
          thickness: 1.h,
          indent: 0,
          endIndent: 0),
      20.h.verticalSpace,
    ],
  ).marginSymmetric(horizontal: 20.h);
}

Widget getDefaultTextFiled(
    BuildContext context,
    String s,
    TextEditingController textEditingController,
    Color fontColor,
    ValueChanged<String> changed,
    {bool withPrefix = false,
    String imgName = "",
    bool minLines = false,
    bool isFilled = false,
    bool withFilter = false,
    bool readOnly = false,
    Function? filterClick,
    Function? editTap,
    EdgeInsetsGeometry margin = EdgeInsets.zero,
    bool withPadding = true}) {
  double height = getEditHeightFigma();

  return Container(
    height: height,
    width: double.infinity,
    child: TextField(
      onTap: () {
        if (editTap != null) {
          editTap();
        }
      },
      maxLines: (minLines) ? null : 1,
      controller: textEditingController,
      autofocus: false,
      textAlign: TextAlign.start,
      style: TextStyle(
          fontFamily: Constant.fontsFamily,
          color: fontColor,
          fontWeight: FontWeight.w400,
          fontSize: getEditFontSizeFigma().sp),
      onChanged: changed,
      readOnly: readOnly,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
          prefixIcon: (withPrefix)
              ? getSvgImageWithSize(context, imgName, 24.h, 24.h,
                      color: getFontHint(context))
                  .marginOnly(left: 20.h, right: 16.h)
              : 0.horizontalSpace,
          prefixIconConstraints: BoxConstraints(
            minWidth: 20.h,
            minHeight: 0,
            maxWidth: 24.h + (20.h + 16.h),
            maxHeight: 24.h,
          ),
          suffixIconConstraints: BoxConstraints(
            minWidth: 20.h,
            minHeight: 0,
            maxWidth: 24.h + (20.h + 16.h),
            maxHeight: 24.h,
          ),
          contentPadding: EdgeInsets.zero,
          filled: isFilled,
          fillColor: getCardColor(context),
          suffixIcon: (withFilter)
              ? InkWell(
                  onTap: () {
                    if (filterClick != null) {
                      filterClick();
                    }
                  },
                  child: getSvgImageWithSize(context, "filter.svg", 24.h, 24.h)
                      .marginOnly(right: 20.h, left: 16.h),
                )
              : 0.horizontalSpace,
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: (isFilled) ? Colors.transparent : getFontHint(context),
                  width: 1.h),
              borderRadius: BorderRadius.all(Radius.circular(12.h))),
          disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: (isFilled) ? Colors.transparent : getFontHint(context),
                  width: 1.h),
              borderRadius: BorderRadius.all(Radius.circular(12.h))),
          errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: (isFilled) ? Colors.transparent : getFontHint(context),
                  width: 1.h),
              borderRadius: BorderRadius.all(Radius.circular(12.h))),
          border: OutlineInputBorder(
              borderSide: BorderSide(
                  color: (isFilled) ? Colors.transparent : getFontHint(context),
                  width: 1.h),
              borderRadius: BorderRadius.all(Radius.circular(12.h))),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color:
                      (isFilled) ? Colors.transparent : getAccentColor(context),
                  width: 1.h),
              borderRadius: BorderRadius.all(Radius.circular(12.h))),
          hintText: s,
          hintStyle: TextStyle(
              fontFamily: Constant.fontsFamily,
              color: getFontHint(context),
              fontWeight: FontWeight.w400,
              fontSize: getEditFontSizeFigma().sp)),
    ).marginSymmetric(
        horizontal:
            (withPadding) ? FetchPixels.getDefaultHorSpaceFigma(context) : 0),
  );
}

Widget getDefaultTextFiledWithCustomPrefix(BuildContext context, String s,
    TextEditingController textEditingController, Color fontColor, Widget widget,
    {bool withPrefix = false,
    String imgName = "",
    bool minLines = false,
    EdgeInsetsGeometry margin = EdgeInsets.zero}) {
  double height = getEditHeightFigma();

  return SizedBox(
    height: height,
    width: double.infinity,
    child: TextField(
      onEditingComplete: () {},
      onChanged: (value) {},
      onSubmitted: (value) {
        return;
      },
      maxLines: (minLines) ? null : 1,
      controller: textEditingController,
      autofocus: false,
      textAlign: TextAlign.start,
      style: TextStyle(
          fontFamily: Constant.fontsFamily,
          color: fontColor,
          fontWeight: FontWeight.w400,
          fontSize: getEditFontSizeFigma().sp),
      decoration: InputDecoration(
          prefixIcon: widget,
          prefixIconConstraints:
              BoxConstraints(minWidth: 100.h, maxWidth: 100.h + 20.w),
          contentPadding: EdgeInsets.symmetric(horizontal: 20.w),
          border: OutlineInputBorder(
              borderSide: BorderSide(
                  color: getCurrentTheme(context).focusColor, width: 1.h),
              borderRadius: BorderRadius.all(Radius.circular(20.h))),
          focusedBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: getAccentColor(context), width: 1.h),
              borderRadius: BorderRadius.all(Radius.circular(20.h))),
          hintText: s,
          hintStyle: TextStyle(
              fontFamily: Constant.fontsFamily,
              color: getFontHint(context),
              fontWeight: FontWeight.w400,
              fontSize: getEditFontSizeFigma().sp)),
    ).marginSymmetric(horizontal: FetchPixels.getDefaultHorSpaceFigma(context)),
  );
}

Widget getDivider(
    {double dividerHeight = 1,
    Color setColor = Colors.grey,
    double endIndent = 20,
    double indent = 20,
    double thickness = 1}) {
  return Divider(
    height: dividerHeight.h,
    color: setColor,
    endIndent: endIndent.w,
    indent: indent.w,
    thickness: thickness,
  );
}

Widget getPassTextFiled(
    BuildContext context,
    String s,
    TextEditingController textEditingController,
    Color fontColor,
    bool showPass,
    Function function,
    {String imgName = "pass.svg",
    bool minLines = false,
    EdgeInsetsGeometry margin = EdgeInsets.zero}) {
  double height = 43.h;

  return SizedBox(
    height: height,
    width: double.infinity,
    child: TextField(
      maxLines: (minLines) ? null : 1,
      controller: textEditingController,
      autofocus: false,
      obscureText: (showPass) ? false : true,
      textAlign: TextAlign.start,
      style: TextStyle(
          fontFamily: Constant.fontsFamily,
          color: fontColor,
          fontWeight: FontWeight.w400,
          fontSize: getEditFontSizeFigma().sp),
      textAlignVertical: TextAlignVertical.top,
      decoration: InputDecoration(
          prefixIconConstraints: BoxConstraints(
              minWidth: 0,
              minHeight: 0,
              maxWidth: getEditIconSize().h + 60.h,
              maxHeight: 42.h),
          prefixIcon: GestureDetector(
              onTap: () {
                function();
              },
              child: getSvgImageWithSize(context, 'pass.svg',
                      getEditIconSize().h, getEditIconSize().h)
                  .marginOnly(right: 12.h, bottom: 12.h)),
          isDense: true,
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: getDividerColor(context), width: 1.h),
          ),
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: getDividerColor(context), width: 1.h),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: getAccentColor(context), width: 1.h),
          ),
          hintText: s,
          hintStyle: TextStyle(
              fontFamily: Constant.fontsFamily,
              color: getFontHint(context),
              fontWeight: FontWeight.w400,
              fontSize: getEditFontSizeFigma().sp)),
    ).marginSymmetric(horizontal: FetchPixels.getDefaultHorSpaceFigma(context)),
  );
}

WillPopScope buildTitleDefaultWidget(
    BuildContext context, String title, Function backClick, Widget widget) {
  return WillPopScope(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: getBackAppBar(context, () {
          backClick();
        }, color: Colors.transparent),
        backgroundColor: getCurrentTheme(context).scaffoldBackgroundColor,
        body: SafeArea(
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: ListView(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                16.h.verticalSpace,
                getSvgImageWithSize(context, 'splash_logo.svg', 60.w, 60.h,
                    fit: BoxFit.scaleDown),
                title.isNotEmpty ? (20.h.verticalSpace) : 0.verticalSpace,
                title.isNotEmpty
                    ? (getMultilineCustomFont(title, 22, getFontColor(context),
                        fontWeight: FontWeight.w700,
                        textAlign: TextAlign.center))
                    : 0.verticalSpace,
                50.h.verticalSpace,
                widget
              ],
            ),
          ),
        ),
      ),
      onWillPop: () async {
        backClick();
        return false;
      });
}

AppBar getBackAppBar(BuildContext context, Function backClick,
    {Color color = Colors.transparent,
    String title = "",
    String subtitleText = "",
    Color fontColor = Colors.white,
    bool subtitle = false,
    String actionImg = '',
    Color iconColor = Colors.white,
    bool centerTitle = true,
    bool withIcon = false,
    bool withLeading = true}) {
  return (subtitle)
      ? AppBar(
          toolbarHeight: 44.h,
          elevation: 0,
          backgroundColor: color,
          titleSpacing: 16.w,
          centerTitle: centerTitle,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              getCustomFont(title, 24, fontColor, 1,
                  fontWeight: FontWeight.w700),
              2.h.verticalSpace,
              getCustomFont(subtitleText, 16, fontColor, 1,
                  fontWeight: FontWeight.w500),
            ],
          ),
          actions: [
            Padding(
              padding: EdgeInsets.all(10.h),
              child: getCircleImage(context, actionImg, 50.h),
            )
          ],
          leading: (withLeading)
              ? getBackIcon(context, () {
                  backClick();
                }, colors: iconColor)
              : 0.horizontalSpace,
        )
      : AppBar(
          toolbarHeight: 44.h,
          elevation: 0,
          backgroundColor: color,
          centerTitle: centerTitle,
          title: (withIcon)
              ? Row(
                  children: [
                    getCustomFont(title, 24, fontColor, 1,
                        fontWeight: FontWeight.w700),
                    6.w.horizontalSpace,
                    getSvgImage(context, 'img.svg', 18)
                  ],
                )
              : getCustomFont(title, 22, fontColor, 1,
                  fontWeight: FontWeight.w700),
          leading: (withLeading)
              ? getBackIcon(context, () {
                  backClick();
                }, colors: iconColor)
              : 0.horizontalSpace,
        );
}

Widget getButtonFigma(
    BuildContext context,
    Color bgColor,
    bool withCorners,
    String text,
    Color textColor,
    Function function,
    EdgeInsetsGeometry insetsGeometry,
    {isBorder = false,
    borderColor = Colors.transparent,
    FontWeight weight = FontWeight.w500,
    bool isIcon = false,
    bool withFilter = false,
    String? icons,
    List<BoxShadow> shadow = const [],
    bool withGradient = false}) {
  double buttonHeight = getButtonHeightFigma();
  double fontSize = getButtonFontSizeFigma();
  return GestureDetector(
    onTap: () {
      function();
    },
    child: Container(
      margin: insetsGeometry,
      width: double.infinity,
      height: (withFilter) ? 40.h : buttonHeight,
      decoration: (withGradient)
          ? getButtonDecorationWithGradient(bgColor,
              withCorners: withCorners,
              corner: (withCorners) ? getButtonCornersFigma() : 0,
              withBorder: isBorder,
              borderColor: borderColor,
              shadow: shadow)
          : getButtonDecoration(bgColor,
              withCorners: withCorners,
              corner: (withCorners) ? getButtonCornersFigma() : 0,
              withBorder: isBorder,
              borderColor: borderColor,
              shadow: shadow),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          (isIcon)
              ? getSvgImageWithSize(
                  context,
                  icons ?? "",
                  (withFilter) ? 16.h : getEditIconSize().h,
                  (withFilter) ? 16.h : getEditIconSize().h)
              : getHorSpace(0),
          (isIcon) ? getHorSpace(10.h) : getHorSpace(0),
          getCustomFont(
            text,
            (withFilter) ? 14 : fontSize,
            textColor,
            1,
            textAlign: TextAlign.center,
            fontWeight: weight,
          )
        ],
      ),
    ),
  );
}

Widget getButtonWithEndIcon(
    BuildContext context,
    Color bgColor,
    bool withCorners,
    String text,
    Color textColor,
    Function function,
    EdgeInsetsGeometry insetsGeometry,
    {isBorder = false,
    borderColor = Colors.transparent,
    FontWeight weight = FontWeight.w600,
    bool isIcon = false,
    String? icons,
    List<BoxShadow> shadow = const []}) {
  double buttonHeight = getButtonHeightFigma();
  double fontSize = getButtonFontSizeFigma();
  return InkWell(
    onTap: () {
      function();
    },
    child: Container(
      margin: insetsGeometry,
      width: double.infinity,
      height: buttonHeight,
      decoration: getButtonDecoration(bgColor,
          withCorners: withCorners,
          corner: (withCorners) ? getButtonCorners() : 0,
          withBorder: isBorder,
          borderColor: borderColor,
          shadow: shadow),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          getHorSpace(10.w),
          Expanded(
            flex: 1,
            child: getCustomFont(
              text,
              fontSize,
              textColor,
              1,
              textAlign: TextAlign.start,
              fontWeight: weight,
            ),
          ),
          (isIcon)
              ? getSvgImage(context, icons ?? "", getEditIconSize())
              : getHorSpace(0),
          getHorSpace(10.w)
        ],
      ),
    ),
  );
}

Widget getSubButton(
    BuildContext context,
    Color bgColor,
    bool withCorners,
    String text,
    Color textColor,
    Function function,
    EdgeInsetsGeometry insetsGeometry,
    {isBorder = false,
    double width = double.infinity,
    borderColor = Colors.transparent,
    FontWeight weight = FontWeight.w600,
    bool isIcon = false,
    String? icons}) {
  double buttonHeight = 40.h;
  double buttonCorner = 20.h;
  return InkWell(
    onTap: () {
      function();
    },
    child: Container(
      margin: insetsGeometry,
      width: width,
      height: buttonHeight,
      decoration: getButtonDecoration(bgColor,
          withCorners: withCorners,
          corner: (withCorners) ? buttonCorner : 0,
          withBorder: isBorder,
          borderColor: borderColor),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          (isIcon)
              ? getSvgImage(context, icons ?? "", getEditIconSize())
              : getHorSpace(0),
          (isIcon) ? getHorSpace(10.w) : getHorSpace(0),
          getCustomFont(
            text,
            16,
            textColor,
            1,
            textAlign: TextAlign.center,
            fontWeight: weight,
          )
        ],
      ),
    ),
  );
}

Widget getCircularImage(BuildContext context, double width, double height,
    double radius, String img,
    {BoxFit boxFit = BoxFit.contain, bool listen = true}) {
  return SizedBox(
    height: height,
    width: width,
    child: ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(radius)),
      child: getAssetImage(context, img, width, height,
          boxFit: boxFit, listen: listen),
    ),
  );
}

Widget getVerSpace(double verSpace) {
  return SizedBox(
    height: verSpace,
  );
}

Widget buildFavouriteBtn(EdgeInsets edgeInsets) {
  return Container(
    margin: edgeInsets,
    height: 20.w,
    width: 20.w,
    decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.25),
              offset: Offset(0, 1),
              blurRadius: 1)
        ]),
    child: Center(
      child:
          Icon(Icons.favorite_border_rounded, size: 13.w, color: Colors.black),
    ),
  );
}

Widget getProfileRowView(
    BuildContext context, Function function, String text, String icon) {
  double horSpace = FetchPixels.getDefaultHorSpaceFigma(context);
  return GestureDetector(
    onTap: () {
      function();
    },
    child: Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 20.h),
      child: Column(
        children: [
          Row(
            children: [
              getSvgImage(context, icon, 30),
              12.h.horizontalSpace,
              Expanded(
                  child: getCustomFont(text, 16, getFontColor(context), 1,
                      fontWeight: FontWeight.w400)),
              getSvgImage(context, 'arrow_right.svg', 16)
            ],
          ).paddingSymmetric(horizontal: horSpace),
          12.h.verticalSpace,
          getDivider(setColor: getDividerColor(context), dividerHeight: 2.h)
        ],
      ),
    ),
  );
}

Widget getSearchMapFigmaWidget(
    BuildContext context,
    TextEditingController searchController,
    ValueChanged<String> onChanged,
    String hint,
    {bool readOnly = false}) {
  double height = 46.h;
  double fontSize = 14;

  return SizedBox(
    width: double.infinity,
    height: height,
    child: Container(
      height: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 14.w),
      decoration: getButtonDecoration(getCardColor(context),
          withCorners: true,
          corner: getEditRadiusSizeFigma(),
          withBorder: true,
          borderColor: getCurrentTheme(context).unselectedWidgetColor),
      child: Align(
        alignment: Alignment.centerLeft,
        child: TextField(
          readOnly: readOnly,
          controller: searchController,
          onChanged: onChanged,
          decoration: InputDecoration(
              isDense: true,
              hintText: hint,
              border: InputBorder.none,
              hintStyle: TextStyle(
                  fontFamily: Constant.fontsFamily,
                  fontSize: fontSize.sp,
                  fontWeight: FontWeight.w500,
                  color: getFontHint(context))),
          style: TextStyle(
              fontFamily: Constant.fontsFamily,
              fontSize: fontSize.sp,
              fontWeight: FontWeight.w500,
              color: getFontColor(context)),
          textAlign: TextAlign.start,
          maxLines: 1,
        ),
      ),
    ),
  );
}

Widget getHorSpace(double verSpace) {
  return SizedBox(
    width: verSpace,
  );
}
