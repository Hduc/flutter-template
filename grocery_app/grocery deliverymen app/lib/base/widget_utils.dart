import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:grocery/base/resizer/fetch_pixels.dart';
import 'package:provider/provider.dart';
import '../app/notifier/dark_mode.dart';
import 'color_data.dart';
import 'constant.dart';
import 'country_code_picker.dart';
import 'device_util.dart';

void showCustomToast(String texts, BuildContext context) {
  Fluttertoast.showToast(
      msg: texts,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.black,
      textColor: Colors.white,
      fontSize: 12.0);
}

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
        fontSize: fontSize,
        fontStyle: FontStyle.normal,
        color: fontColor,
        fontFamily: Constant.fontsFamily,
        height: txtHeight,
        fontWeight: fontWeight),
    maxLines: maxLine,
    softWrap: true,
    textAlign: textAlign,
    textScaleFactor: FetchPixels.getTextScale(horFactor: horFactor),
  );
}

DecorationImage getDecorationAssetImage(BuildContext buildContext, String image,
    {BoxFit fit = BoxFit.contain}) {
  var darkThemeProvider = Provider.of<DarkMode>(buildContext);

  return DecorationImage(
      image: AssetImage(((darkThemeProvider.darkMode &&
          darkThemeProvider.assetList.contains(image))
          ? Constant.assetImagePathNight
          : Constant.assetImagePath) +
          image),
      fit: fit,
      scale: FetchPixels.getScale());
}

Widget getCloseButton(BuildContext context, Function function) {
  return InkWell(
    onTap: () {
      function();
      // Constant.backToPrev(context);
    },
    child: getSvgImageWithSize(context, "Close.svg",
        FetchPixels.getPixelHeight(24), FetchPixels.getPixelHeight(24)),
  );
}

Widget getMultilineCustomFont(String text, double fontSize, Color fontColor,
    {String fontFamily = Constant.fontsFamily,
      TextOverflow overflow = TextOverflow.ellipsis,
      TextDecoration decoration = TextDecoration.none,
      FontWeight fontWeight = FontWeight.normal,
      TextAlign textAlign = TextAlign.start,
      txtHeight = 1.0}) {
  return Text(
    text,
    style: TextStyle(
        decoration: decoration,
        fontSize: fontSize,
        fontStyle: FontStyle.normal,
        color: fontColor,
        fontFamily: Constant.fontsFamily,
        height: txtHeight,
        fontWeight: fontWeight),
    textAlign: textAlign,
    textScaleFactor: FetchPixels.getTextScale(),
  );
}

double getButtonHeight() {
  return FetchPixels.getPixelHeight(150);
}

double getButtonHeightFigma() {
  return FetchPixels.getPixelHeight(60);
}

Widget getButtonContainer(BuildContext context, IconData iconData,
    Function function,
    {double size = 40, double iconSize = 24}) {
  return InkWell(
    onTap: () {
      function();
    },
    child: Container(
      width: FetchPixels.getPixelHeight(size),
      decoration:
      BoxDecoration(color: "#FFF3F3".toColor(), shape: BoxShape.circle),
      height: FetchPixels.getPixelHeight(size),
      child: Center(
        child: Icon(iconData,
            size: FetchPixels.getPixelHeight(iconSize),
            color: getAccentColor(context)),
      ),
    ),
  );
}

Widget getEmptyWidget(BuildContext context, String image, String title,
    String description, String btnTxt, Function function,
    {bool withButton = true}) {
  // double screenHeight = SizeConfig.safeBlockVertical! * 100;
  // double width = Constant.getWidthPercentSize(45);
  // double height = Constant.getPercentSize(screenHeight, 8.2);
  double imgSize = FetchPixels.getPixelHeight(120);
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      getSvgImageWithSize(context, image, imgSize, imgSize),
      getVerSpace(FetchPixels.getPixelHeight(30)),
      getCustomFont(title, 22, getFontColor(context), 1,
          fontWeight: FontWeight.w700, textAlign: TextAlign.center),
      getVerSpace(FetchPixels.getPixelHeight(10)),
      getMultilineCustomFont(description, 16, getFontColor(context),
          fontWeight: FontWeight.w500, textAlign: TextAlign.center),

      // getSpace(Constant.getPercentSize(screenHeight, 3)),
      (withButton)
          ? InkWell(
          onTap: () {
            function();
          },
          child: Container(
              margin:
              EdgeInsets.only(top: FetchPixels.getPixelHeight(40)),
              width: FetchPixels.getPixelHeight(192),
              height: FetchPixels.getPixelHeight(60),
              decoration: getButtonDecoration(Colors.transparent,
                  withCorners: true,
                  withBorder: true,
                  borderColor: getAccentColor(context),
                  corner: FetchPixels.getPixelHeight(14)),
              // decoration: ShapeDecoration(
              //   color: Colors.white,
              //
              //   shape: SmoothRectangleBorder(
              //     side: BorderSide(color: primaryColor, width: 1.5),
              //     borderRadius: SmoothBorderRadius(
              //       cornerRadius: Constant.getPercentSize(height, 25),
              //       cornerSmoothing: 0.8,
              //     ),
              //   ),
              // ),
              child: Center(
                  child: getMultilineCustomFont(
                      btnTxt, 16, getAccentColor(context),
                      fontWeight: FontWeight.w600,
                      textAlign: TextAlign.center))
            // getCustomTextWithoutMaxLine(
            // btnTxt,
            // primaryColor,
            // TextAlign.center,
            // FontWeight.w700,
            // Constant.getPercentSize(width, 7.2)),
          ))
          : getHorSpace(0)
    ],
  );
}

double getEditHeight() {
  return FetchPixels.getPixelHeight(150);
}

double getEditHeightFigma() {
  return FetchPixels.getPixelHeight(60);
}

double getEditFontSize() {
  return 41;
}

double getEditFontSizeFigma() {
  return 16;
}

double getEditRadiusSize() {
  return FetchPixels.getPixelHeight(35);
}

double getEditRadiusSizeFigma() {
  return FetchPixels.getPixelHeight(12);
}

double getEditIconSize() {
  return 60;
  // return FetchPixels.getPixelHeight(24);
}

double getEditIconSizeFigma() {
  return 24;
  // return FetchPixels.getPixelHeight(24);
}

double getButtonCorners() {
  return FetchPixels.getPixelHeight(35);
}

double getButtonCornersFigma() {
  return FetchPixels.getPixelHeight(14);
}

double getButtonFontSize() {
  return 41;
}

double getButtonFontSizeFigma() {
  return 16;
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
      // gradient: LinearGradient(
      //   // begin: Alignment.topRight,
      //   // end: Alignment.bottomLeft,
      //   // colors: [
      //   //   Colors.blue,
      //   //   Colors.red,
      //   // ],
      //     colors: [
      //   "#FF8080".toColor(),
      //   "#F44144".toColor(),
      // ],
      //     begin: Alignment.topCenter,
      //     end: Alignment.bottomCenter
      // ),
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
    // color: bgColor,
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
  return LinearGradient(
    // begin: Alignment.topRight,
    // end: Alignment.bottomLeft,
    // colors: [
    //   Colors.blue,
    //   Colors.red,
    // ],
      colors: [
        "#FF8080".toColor(),
        "#F44144".toColor(),
      ], begin: Alignment.topCenter, end: Alignment.bottomCenter);
}

Widget getCenterTitleHeader(BuildContext context, String title,
    EdgeInsets edgeInsets, Function backClick,
    {bool visibleMore = false,
      String moreImg = "More.svg",
      Function? moreFunc}) {
  return getPaddingWidget(
      edgeInsets,
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          getBackIcon(context, () {
            backClick();
          }),
          Expanded(
            child: getCustomFont(title, 22, getFontColor(context), 1,
                textAlign: TextAlign.center, fontWeight: FontWeight.w600),
            flex: 1,
          ),
          Visibility(
            visible: visibleMore,
            maintainAnimation: true,
            maintainState: true,
            maintainSize: true,
            child: getBackIcon(context, () {
              moreFunc!();
            }, icon: moreImg),
          )
        ],
      ));
}

Widget topHeader(double horWidget, String txt, BuildContext context,
    {bool showProfile = true}) {
  return Row(
    children: [
      getHorSpace(horWidget),
      getCustomFont(txt, 22, getFontColor(context), 1,
          fontWeight: FontWeight.w600),
      Expanded(
        child: getHorSpace(0),
        flex: 1,
      ),
      Visibility(
          maintainState: true,
          maintainSize: true,
          maintainAnimation: true,
          child: getCircleImage(
              context, "Profile.png", FetchPixels.getPixelHeight(44)),
          visible: showProfile),
      getHorSpace(FetchPixels.getDefaultHorSpace(context))
    ],
  );
}

Widget getToolbarWidget(BuildContext context, String title, Function backClick,
    {bool settingVisible = false,
      Function? settingFun,
      Color color = Colors.transparent,
      String setText = "",
      bool withBack = true}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: FetchPixels.getPixelWidth(50)),
    height: FetchPixels.getPixelHeight(170),
    color: color,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        (withBack)
            ? getToolbarIcons(context, "arrow_back.svg", () {
          backClick();
        })
            : getHorSpace(0),
        Expanded(
          child: (withBack)
              ? Center(
            child: getHeaderTitle(context, title),
          )
              : getHeaderTitle(context, title),
          flex: 1,
        ),
        // Container(child: getToolbarTitle(context, title)),
        Visibility(
            visible: settingVisible,
            child: getToolbarIcons(context, "notification.svg", () {
              settingFun!();
            }))
      ],
    ),
  );
}

Widget getToolbarFigmaWidget(BuildContext context, String title,
    Function backClick,
    {bool settingVisible = false,
      Function? settingFun,
      Color color = Colors.transparent,
      String setText = "",
      bool withBack = true}) {
  return Container(
    padding: EdgeInsets.symmetric(
        horizontal: FetchPixels.getPixelWidth(20),
        vertical: FetchPixels.getPixelHeight(20)),
    // height: FetchPixels.getPixelHeight(170),
    color: color,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        (withBack)
            ? getToolbarIconsCustom(context, "arrow_back.svg", () {
          backClick();
        })
            : getHorSpace(0),
        Expanded(
          child: (withBack)
              ? Center(
            child: getHeaderTitleCustom(context, title),
          )
              : getHeaderTitleCustom(context, title),
          flex: 1,
        ),
        // Container(child: getToolbarTitle(context, title)),
        Visibility(
            visible: settingVisible,
            child: getToolbarIconsCustom(context, "notification.svg", () {
              settingFun!();
            }))
      ],
    ),
  );
}

Widget getToolbarTitle(BuildContext context, String name) {
  return getCustomFont(name, 70, getFontColor(context), 1,
      textAlign: TextAlign.center, fontWeight: FontWeight.bold);
}

Widget getToolbarIcons(BuildContext context, String name, Function click,
    {bool withTheme = true}) {
  return InkWell(
    child: getSvgImageWithSize(context, name, FetchPixels.getPixelHeight(65),
        FetchPixels.getPixelHeight(65)),
    // FetchPixels.getPixelHeight(65),fit: BoxFit.fill),
    onTap: () {
      click();
    },
  );
  // Bounce(
  //   duration: const Duration(milliseconds: 120),
  //   onPressed: () {
  //
  //     click();
  //   },
  //   child: (withTheme)
  //       ? getSvgThemeImageWithSize(context, getThemeFolder(select), name,
  //       FetchPixels.getPixelHeight(90), FetchPixels.getPixelHeight(90))
  //       : getSvgImageWithSize(context, name, FetchPixels.getPixelHeight(90),
  //       FetchPixels.getPixelHeight(90)));
}

Widget getToolbarIconsCustom(BuildContext context, String name, Function click,
    {bool withTheme = true}) {
  return InkWell(
    child: getSvgImageWithSize(context, name, FetchPixels.getPixelHeight(24),
        FetchPixels.getPixelHeight(26)),
    // FetchPixels.getPixelHeight(65),fit: BoxFit.fill),
    onTap: () {
      click();
    },
  );
  // Bounce(
  //   duration: const Duration(milliseconds: 120),
  //   onPressed: () {
  //
  //     click();
  //   },
  //   child: (withTheme)
  //       ? getSvgThemeImageWithSize(context, getThemeFolder(select), name,
  //       FetchPixels.getPixelHeight(90), FetchPixels.getPixelHeight(90))
  //       : getSvgImageWithSize(context, name, FetchPixels.getPixelHeight(90),
  //       FetchPixels.getPixelHeight(90)));
}

Widget getDetailWidget(BuildContext context, Function backClick,
    Widget childWidget) {
  double topView = FetchPixels.getPixelHeight(400);
  double radius = FetchPixels.getPixelHeight(120);
  SmoothRadius smoothRadius =
  SmoothRadius(cornerRadius: radius, cornerSmoothing: 0.6);
  return WillPopScope(
      child: Scaffold(
        // backgroundColor: Colors.green,
        backgroundColor: getCurrentTheme(context).scaffoldBackgroundColor,
        appBar: getInVisibleAppBar(color: appBarColor),
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: topView,
                color: appBarColor,
              ),
              Align(
                alignment: Alignment.topCenter,
                child: getAssetImage(
                    context, "background.png",(DeviceUtil.isTablet)?FetchPixels.getPixelHeight(800):FetchPixels.getPixelWidth(500),
                    (DeviceUtil.isTablet)?FetchPixels.getPixelHeight(1100):FetchPixels.getPixelWidth(1000), boxFit: BoxFit.fill),
                    // FetchPixels.getPixelHeight(1150), boxFit: BoxFit.fill),
              ),
              Container(
                width: double.infinity,
                height: double.infinity,
                margin: EdgeInsets.only(top: topView - radius),
                decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: smoothRadius, topRight: smoothRadius)),
                    color: getCurrentTheme(context).scaffoldBackgroundColor),
                child: childWidget,
              ),
              getToolbarWidget(context, "", () {
                backClick();
              })
            ],
          ),
        ),
      ),
      onWillPop: () async {
        backClick();
        return false;
      });
}

Widget getCircleImage(BuildContext context, String imgName, double size) {
  return SizedBox(
    width: size,
    height: size,
    child: ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(size / 2)),
      child: getAssetImage(context, imgName, double.infinity, double.infinity),
    ),
  );
}

Widget getSvgImage(BuildContext context, String image, double size,
    {Color? color}) {
  var darkThemeProvider = Provider.of<DarkMode>(context);

  return SvgPicture.asset(
    ((darkThemeProvider.darkMode && darkThemeProvider.assetList.contains(image))
        ? Constant.assetImagePathNight
        : Constant.assetImagePath) +
        image,
    color: color,
    width: FetchPixels.getPixelWidth(size),
    // height: FetchPixels.getPixelWidth(size),

    height: FetchPixels.getPixelHeight(size),
    fit: BoxFit.fill,
    // fit: BoxFit.fill,

    // fit: BoxFit.fitHeight,
  );
}
//
// List<String> getAllAssetsList(BuildContext context) {
//   // var config = new File('./assets/imagesNight/arrow_bottom.svg');
//   // var str = config.exists();
//   // print("setstrs===${str.asStream().isBroadcast}");
//
//   var manifestContent = DefaultAssetBundle.of(context).loadString('AssetManifest.json');
//
//   var manifestMap = json.decode(manifestContent.asStream().toString());
//   var imagePetPaths = manifestMap.keys.where((key) => key.contains(Constant.assetImagePathNight));
//
//   // final manifestJson = await DefaultAssetBundle.of(context).loadString('AssetManifest.json');
//   // final images = json
//   //     .decode(manifestJson)
//   //     .keys
//   //     .where((String key) => key.startsWith('assets/imagesNight'));
//   return imagePetPaths;
// }

Widget getTopViewHeader(BuildContext context, String titleMain, String titleSub,
    {bool visibleSub = true}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      getVerSpace(FetchPixels.getPixelHeight(80)),
      getHeaderTitle(context, titleMain),
      (!visibleSub)
          ? getVerSpace(0)
          : getVerSpace(FetchPixels.getPixelHeight(30)),
      (!visibleSub) ? getVerSpace(0) : getSubHeaderTitle(context, titleSub),
      getVerSpace(FetchPixels.getPixelHeight(60)),
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

Widget getSvgImageWithSize(BuildContext context, String image, double width,
    double height,
    {Color? color, BoxFit fit = BoxFit.fill}) {
  var darkThemeProvider = Provider.of<DarkMode>(context);
  return SvgPicture.asset(
    ((darkThemeProvider.darkMode && darkThemeProvider.assetList.contains(image))
        ? Constant.assetImagePathNight
        : Constant.assetImagePath) +
        image,
    color: color,
    width: width,
    height: height,
    fit: fit,
  );
}

Widget getProfileTopView(BuildContext context,
    Function backClick,
    String title, {
      bool visibleMore = false,
      Function? moreFunc,
      bool visibleEdit = false,
      Function? funcEdit,
    }) {
  double horSpace = FetchPixels.getDefaultHorSpace(context);
  return SizedBox(
    height: FetchPixels.getPixelHeight(223 + 9),
    child: Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: FetchPixels.getPixelHeight(201),
          child: getSvgImage(
            context,
            "profile_rect.svg",
            double.infinity,
          ),
        ),
        getCenterTitleHeader(
            context,
            title,
            EdgeInsets.only(
                left: horSpace,
                right: horSpace,
                top: Constant.getToolbarTopHeight(context) +
                    FetchPixels.getPixelHeight(10)), () {
          backClick();
        }, visibleMore: visibleMore, moreFunc: moreFunc),
        Padding(
          padding: EdgeInsets.only(left: horSpace),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: SizedBox(
              width: FetchPixels.getPixelHeight(120),
              height: FetchPixels.getPixelHeight(120),
              child: Stack(
                children: [
                  getCircleImage(
                      context, "profile_Setting.png", double.infinity),
                  Visibility(
                    visible: visibleEdit,
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: InkWell(
                        onTap: () {
                          funcEdit!();
                        },
                        child: getSvgImageWithSize(
                            context,
                            "edit_icon.svg",
                            FetchPixels.getPixelHeight(36),
                            FetchPixels.getPixelHeight(36)),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    ),
  );
}

Widget getBackIcon(BuildContext context, Function function,
    {String icon = "arrow_left.svg"}) {
  return InkWell(
      onTap: () {
        function();
      },
      child: getSvgImageWithSize(context, icon, FetchPixels.getPixelHeight(19),
          FetchPixels.getPixelHeight(21)));
}

Widget getAssetImage(BuildContext context, String image, double width,
    double height,
    {Color? color, BoxFit boxFit = BoxFit.contain}) {
  var darkThemeProvider = Provider.of<DarkMode>(context);
  return Image.asset(
    ((darkThemeProvider.darkMode && darkThemeProvider.assetList.contains(image))
        ? Constant.assetImagePathNight
        : Constant.assetImagePath) +
        image,
    color: color,
    width: width,
    height: height,
    fit: boxFit,
    scale: FetchPixels.getScale(),
  );
}

Widget getDialogDividerBottom(BuildContext context) {
  return Container(
    width: FetchPixels.getPixelWidth(134),
    decoration: getButtonDecoration(getFontColor(context),
        withCorners: true,
        withBorder: false,
        corner: FetchPixels.getPixelHeight(5)),
    height: FetchPixels.getPixelHeight(5),
  );
}

Widget getDialogDividerTop(BuildContext context) {
  return Container(
    width: FetchPixels.getPixelWidth(48),
    decoration: getButtonDecoration(getCardColor(context),
        withCorners: true,
        withBorder: false,
        corner: FetchPixels.getPixelHeight(4)),
    height: FetchPixels.getPixelHeight(4),
  );
}

Widget getTextFieldView(BuildContext context, Widget widget, bool minLines,
    EdgeInsetsGeometry margin) {
  double height = getEditHeight();
  // bool isAutoFocus = false;
  return Container(
    height: (minLines) ? (height * 2.2) : height,
    margin: margin,
    padding: EdgeInsets.symmetric(
        horizontal: FetchPixels.getPixelWidth(18), vertical: 0),
    alignment: (minLines) ? Alignment.topLeft : Alignment.centerLeft,
    decoration: ShapeDecoration(
      color: Colors.transparent,
      shape: SmoothRectangleBorder(
        side: BorderSide(
            color:getCurrentTheme(context).focusColor ,
            // isAutoFocus
            //     ? getAccentColor(context)
            //     : getCurrentTheme(context).focusColor,
            width: 1),
        borderRadius: SmoothBorderRadius(
          cornerRadius: getEditRadiusSize(),
          cornerSmoothing: 0.8,
        ),
      ),
    ),
    child: widget,
    // child: MediaQuery(
    //     data: mqDataNew,
    //     child: Container(
    //       height:double.infinity,
    //       // color: Colors.red,
    //       child: IntrinsicHeight(
    //         // child: IntrinsicHeight(
    //         child: TextField(
    //           maxLines: (minLines) ? null : 1,
    //           controller: textEditingController,
    //           autofocus: false,
    //           focusNode: myFocusNode,
    //           textAlign: TextAlign.start,
    //           // textAlignVertical: TextAlignVertical.center,
    //           style: TextStyle(
    //               fontFamily: Constant.fontsFamily,
    //               color: fontColor,
    //               fontWeight: FontWeight.w400,
    //               fontSize: getEditFontSize()),
    //           decoration: InputDecoration(
    //               prefixIconConstraints: const BoxConstraints(
    //                 minWidth: 0,
    //                 minHeight: 0,
    //               ),
    //               // filled: true,
    //               // fillColor: Colors.green,
    //               prefixIcon: (withPrefix)
    //                   ? Padding(
    //                 padding: EdgeInsets.only(
    //                     right: FetchPixels.getPixelWidth(3)),
    //                 child: getSvgImage(
    //                     context, imgName, getEditIconSize()),
    //               )
    //                   : getHorSpace(0),
    //               border: InputBorder.none,
    //               isDense: true,
    //               focusedBorder: InputBorder.none,
    //               enabledBorder: InputBorder.none,
    //               errorBorder: InputBorder.none,
    //               disabledBorder: InputBorder.none,
    //               hintText: s,
    //               // prefixIconConstraints: const BoxConstraints(minHeight: 0, minWidth: 0),
    //               hintStyle: TextStyle(
    //                   fontFamily: Constant.fontsFamily,
    //                   color: getFontHint(context),
    //                   fontWeight: FontWeight.w400,
    //                   fontSize: getEditFontSize())),
    //         ),
    //         // ),
    //       ),
    //     ))),
  );
}

Widget getTextFieldViewCustom(BuildContext context, Widget widget,
    bool minLines, EdgeInsetsGeometry margin) {
  double height = getEditHeightFigma();
  // bool isAutoFocus = false;
  return Container(
    height: (minLines) ? (height * 2.2) : height,
    margin: margin,
    padding: EdgeInsets.symmetric(
        horizontal: FetchPixels.getPixelWidth(18), vertical: 0),
    alignment: (minLines) ? Alignment.topLeft : Alignment.centerLeft,
    decoration: ShapeDecoration(
      color: Colors.transparent,
      shape: SmoothRectangleBorder(
        side: BorderSide(
            color: getCurrentTheme(context).focusColor,
            // isAutoFocus
            //     ? getAccentColor(context)
            //     : getCurrentTheme(context).focusColor,
            width: FetchPixels.getPixelHeight(1)),
        borderRadius: SmoothBorderRadius(
          cornerRadius: getEditRadiusSizeFigma(),
          cornerSmoothing: 0.8,
        ),
      ),
    ),
    child: widget,
  );
}

Widget getDefaultTextFiled(BuildContext context, String s,
    TextEditingController textEditingController, Color fontColor,
    {bool withPrefix = false,
      String imgName = "",
      bool minLines = false,
      EdgeInsetsGeometry margin = EdgeInsets.zero}) {
  FocusNode myFocusNode = FocusNode();
  bool isAutoFocus = false;
  double height = getEditHeight();


  return StatefulBuilder(
    builder: (context, setState) {
      final mqData = MediaQuery.of(context);
      final mqDataNew =
      mqData.copyWith(textScaleFactor: FetchPixels.getTextScale());

      return Container(
        height: (minLines) ? (height * 2.2) : height,
        margin: margin,
        padding: EdgeInsets.symmetric(
            horizontal: FetchPixels.getPixelWidth(18), vertical: 0),
        alignment: (minLines) ? Alignment.topLeft : Alignment.centerLeft,
        decoration: ShapeDecoration(
          color: Colors.transparent,
          shape: SmoothRectangleBorder(
            side: BorderSide(
                color:
                isAutoFocus
                    ? getAccentColor(context)
                    : getCurrentTheme(context).focusColor,
                width: 1),
            borderRadius: SmoothBorderRadius(
              cornerRadius: getEditRadiusSize(),
              cornerSmoothing: 0.8,
            ),
          ),
        ),
        child: MediaQuery(
            data: mqDataNew,
            child: Focus(
                onFocusChange: (hasFocus) {
                  if (hasFocus) {
                    setState(() {
                      isAutoFocus = true;
                      myFocusNode.canRequestFocus = true;
                    });
                  } else {
                    setState(() {
                      isAutoFocus = false;
                      myFocusNode.canRequestFocus = false;
                    });
                  }
                },
                child: SizedBox(
                  height: double.infinity,
                  child: (minLines)
                      ? TextField(
                    // minLines: null,
                    // maxLines: null,
                    maxLines: (minLines) ? null : 1,
                    controller: textEditingController,
                    autofocus: false,
                    focusNode: myFocusNode,
                    textAlign: TextAlign.start,
                    // expands: true,
                    expands: minLines,
                    // textAlignVertical:(minLines)?TextAlignVertical.top:TextAlignVertical.center,
                    style: TextStyle(
                        fontFamily: Constant.fontsFamily,
                        color: fontColor,
                        fontWeight: FontWeight.w400,
                        fontSize: getEditFontSize()),
                    decoration: InputDecoration(
                        prefixIconConstraints: const BoxConstraints(
                          minWidth: 0,
                          minHeight: 0,
                        ),
                        // filled: true,
                        // fillColor: Colors.green,
                        prefixIcon: (withPrefix)
                            ? Padding(
                          padding: EdgeInsets.only(
                              right:
                              FetchPixels.getPixelWidth(3)),
                          child: getSvgImage(context, imgName,
                              getEditIconSize()),
                        )
                            : getHorSpace(0),
                        border: InputBorder.none,
                        isDense: true,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        hintText: s,
                        // prefixIconConstraints: const BoxConstraints(minHeight: 0, minWidth: 0),
                        hintStyle: TextStyle(
                            fontFamily: Constant.fontsFamily,
                            color: getFontHint(context),
                            fontWeight: FontWeight.w400,
                            fontSize: getEditFontSize())),
                  )
                      : Center(
                      child: TextField(
                        // minLines: null,
                        // maxLines: null,
                        maxLines: (minLines) ? null : 1,
                        controller: textEditingController,
                        autofocus: false,
                        focusNode: myFocusNode,
                        textAlign: TextAlign.start,
                        // expands: true,
                        expands: minLines,
                        // textAlignVertical:(minLines)?TextAlignVertical.top:TextAlignVertical.center,
                        style: TextStyle(
                            fontFamily: Constant.fontsFamily,
                            color: fontColor,
                            fontWeight: FontWeight.w400,
                            fontSize: getEditFontSize()),
                        decoration: InputDecoration(
                            prefixIconConstraints: const BoxConstraints(
                              minWidth: 0,
                              minHeight: 0,
                            ),
                            // filled: true,
                            // fillColor: Colors.green,
                            prefixIcon: (withPrefix)
                                ? Padding(
                              padding: EdgeInsets.only(
                                  right:
                                  FetchPixels.getPixelWidth(3)),
                              child: getSvgImage(context, imgName,
                                  getEditIconSize()),
                            )
                                : getHorSpace(0),
                            border: InputBorder.none,
                            isDense: true,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            hintText: s,
                            // prefixIconConstraints: const BoxConstraints(minHeight: 0, minWidth: 0),
                            hintStyle: TextStyle(
                                fontFamily: Constant.fontsFamily,
                                color: getFontHint(context),
                                fontWeight: FontWeight.w400,
                                fontSize: getEditFontSize())),
                      )),
                  // child: MediaQuery(
                  //   data: mqDataNew,
                  // child: IntrinsicHeight(
                  // child: IntrinsicHeight(
                  //   child: Align(
                  //     alignment: (minLines)?Alignment.topLeft:Alignment.centerLeft,
                  // ),
                  // ),
                  // ),
                ))),
        // child: MediaQuery(
        //     data: mqDataNew,
        //     child: Container(
        //       height:double.infinity,
        //       // color: Colors.red,
        //       child: IntrinsicHeight(
        //         // child: IntrinsicHeight(
        //         child: TextField(
        //           maxLines: (minLines) ? null : 1,
        //           controller: textEditingController,
        //           autofocus: false,
        //           focusNode: myFocusNode,
        //           textAlign: TextAlign.start,
        //           // textAlignVertical: TextAlignVertical.center,
        //           style: TextStyle(
        //               fontFamily: Constant.fontsFamily,
        //               color: fontColor,
        //               fontWeight: FontWeight.w400,
        //               fontSize: getEditFontSize()),
        //           decoration: InputDecoration(
        //               prefixIconConstraints: const BoxConstraints(
        //                 minWidth: 0,
        //                 minHeight: 0,
        //               ),
        //               // filled: true,
        //               // fillColor: Colors.green,
        //               prefixIcon: (withPrefix)
        //                   ? Padding(
        //                 padding: EdgeInsets.only(
        //                     right: FetchPixels.getPixelWidth(3)),
        //                 child: getSvgImage(
        //                     context, imgName, getEditIconSize()),
        //               )
        //                   : getHorSpace(0),
        //               border: InputBorder.none,
        //               isDense: true,
        //               focusedBorder: InputBorder.none,
        //               enabledBorder: InputBorder.none,
        //               errorBorder: InputBorder.none,
        //               disabledBorder: InputBorder.none,
        //               hintText: s,
        //               // prefixIconConstraints: const BoxConstraints(minHeight: 0, minWidth: 0),
        //               hintStyle: TextStyle(
        //                   fontFamily: Constant.fontsFamily,
        //                   color: getFontHint(context),
        //                   fontWeight: FontWeight.w400,
        //                   fontSize: getEditFontSize())),
        //         ),
        //         // ),
        //       ),
        //     ))),
      );

      //   getTextFieldView(
      //     context,
      //     MediaQuery(
      //         data: mqDataNew,
      //         child: Focus(
      //             onFocusChange: (hasFocus) {
      //               if (hasFocus) {
      //                 setState(() {
      //                   isAutoFocus = true;
      //                   myFocusNode.canRequestFocus = true;
      //                 });
      //               } else {
      //                 setState(() {
      //                   isAutoFocus = false;
      //                   myFocusNode.canRequestFocus = false;
      //                 });
      //               }
      //             },
      //             child: SizedBox(
      //               height: double.infinity,
      //               child: (minLines)
      //                   ? TextField(
      //                 // minLines: null,
      //                 // maxLines: null,
      //                 maxLines: (minLines) ? null : 1,
      //                 controller: textEditingController,
      //                 autofocus: false,
      //                 focusNode: myFocusNode,
      //                 textAlign: TextAlign.start,
      //                 // expands: true,
      //                 expands: minLines,
      //                 // textAlignVertical:(minLines)?TextAlignVertical.top:TextAlignVertical.center,
      //                 style: TextStyle(
      //                     fontFamily: Constant.fontsFamily,
      //                     color: fontColor,
      //                     fontWeight: FontWeight.w400,
      //                     fontSize: getEditFontSize()),
      //                 decoration: InputDecoration(
      //                     prefixIconConstraints: const BoxConstraints(
      //                       minWidth: 0,
      //                       minHeight: 0,
      //                     ),
      //                     // filled: true,
      //                     // fillColor: Colors.green,
      //                     prefixIcon: (withPrefix)
      //                         ? Padding(
      //                       padding: EdgeInsets.only(
      //                           right:
      //                           FetchPixels.getPixelWidth(3)),
      //                       child: getSvgImage(context, imgName,
      //                           getEditIconSize()),
      //                     )
      //                         : getHorSpace(0),
      //                     border: InputBorder.none,
      //                     isDense: true,
      //                     focusedBorder: InputBorder.none,
      //                     enabledBorder: InputBorder.none,
      //                     errorBorder: InputBorder.none,
      //                     disabledBorder: InputBorder.none,
      //                     hintText: s,
      //                     // prefixIconConstraints: const BoxConstraints(minHeight: 0, minWidth: 0),
      //                     hintStyle: TextStyle(
      //                         fontFamily: Constant.fontsFamily,
      //                         color: getFontHint(context),
      //                         fontWeight: FontWeight.w400,
      //                         fontSize: getEditFontSize())),
      //               )
      //                   : Center(
      //                   child: TextField(
      //                     // minLines: null,
      //                     // maxLines: null,
      //                     maxLines: (minLines) ? null : 1,
      //                     controller: textEditingController,
      //                     autofocus: false,
      //                     focusNode: myFocusNode,
      //                     textAlign: TextAlign.start,
      //                     // expands: true,
      //                     expands: minLines,
      //                     // textAlignVertical:(minLines)?TextAlignVertical.top:TextAlignVertical.center,
      //                     style: TextStyle(
      //                         fontFamily: Constant.fontsFamily,
      //                         color: fontColor,
      //                         fontWeight: FontWeight.w400,
      //                         fontSize: getEditFontSize()),
      //                     decoration: InputDecoration(
      //                         prefixIconConstraints: const BoxConstraints(
      //                           minWidth: 0,
      //                           minHeight: 0,
      //                         ),
      //                         // filled: true,
      //                         // fillColor: Colors.green,
      //                         prefixIcon: (withPrefix)
      //                             ? Padding(
      //                           padding: EdgeInsets.only(
      //                               right:
      //                               FetchPixels.getPixelWidth(3)),
      //                           child: getSvgImage(context, imgName,
      //                               getEditIconSize()),
      //                         )
      //                             : getHorSpace(0),
      //                         border: InputBorder.none,
      //                         isDense: true,
      //                         focusedBorder: InputBorder.none,
      //                         enabledBorder: InputBorder.none,
      //                         errorBorder: InputBorder.none,
      //                         disabledBorder: InputBorder.none,
      //                         hintText: s,
      //                         // prefixIconConstraints: const BoxConstraints(minHeight: 0, minWidth: 0),
      //                         hintStyle: TextStyle(
      //                             fontFamily: Constant.fontsFamily,
      //                             color: getFontHint(context),
      //                             fontWeight: FontWeight.w400,
      //                             fontSize: getEditFontSize())),
      //                   )),
      //               // child: MediaQuery(
      //               //   data: mqDataNew,
      //               // child: IntrinsicHeight(
      //               // child: IntrinsicHeight(
      //               //   child: Align(
      //               //     alignment: (minLines)?Alignment.topLeft:Alignment.centerLeft,
      //               // ),
      //               // ),
      //               // ),
      //             ))),
      //     minLines,
      //     margin);
      // //   MediaQuery(
      // //   data: mqDataNew,
      // //   child: getTextFieldView(context, Focus(
      // //       onFocusChange: (hasFocus) {
      // //         if (hasFocus) {
      // //           setState(() {
      // //             isAutoFocus = true;
      // //             myFocusNode.canRequestFocus = true;
      // //           });
      // //         } else {
      // //           setState(() {
      // //             isAutoFocus = false;
      // //             myFocusNode.canRequestFocus = false;
      // //           });
      // //         }
      // //       },
      // //       child: SizedBox(
      // //         height: double.infinity,
      // //         child: (minLines)
      // //             ? TextField(
      // //           // minLines: null,
      // //           // maxLines: null,
      // //           maxLines: (minLines) ? null : 1,
      // //           controller: textEditingController,
      // //           autofocus: false,
      // //           focusNode: myFocusNode,
      // //           textAlign: TextAlign.start,
      // //           // expands: true,
      // //           expands: minLines,
      // //           // textAlignVertical:(minLines)?TextAlignVertical.top:TextAlignVertical.center,
      // //           style: TextStyle(
      // //               fontFamily: Constant.fontsFamily,
      // //               color: fontColor,
      // //               fontWeight: FontWeight.w400,
      // //               fontSize: getEditFontSize()),
      // //           decoration: InputDecoration(
      // //               prefixIconConstraints: const BoxConstraints(
      // //                 minWidth: 0,
      // //                 minHeight: 0,
      // //               ),
      // //               // filled: true,
      // //               // fillColor: Colors.green,
      // //               prefixIcon: (withPrefix)
      // //                   ? Padding(
      // //                 padding: EdgeInsets.only(
      // //                     right: FetchPixels.getPixelWidth(3)),
      // //                 child: getSvgImage(
      // //                     context, imgName, getEditIconSize()),
      // //               )
      // //                   : getHorSpace(0),
      // //               border: InputBorder.none,
      // //               isDense: true,
      // //               focusedBorder: InputBorder.none,
      // //               enabledBorder: InputBorder.none,
      // //               errorBorder: InputBorder.none,
      // //               disabledBorder: InputBorder.none,
      // //               hintText: s,
      // //               // prefixIconConstraints: const BoxConstraints(minHeight: 0, minWidth: 0),
      // //               hintStyle: TextStyle(
      // //                   fontFamily: Constant.fontsFamily,
      // //                   color: getFontHint(context),
      // //                   fontWeight: FontWeight.w400,
      // //                   fontSize: getEditFontSize())),
      // //         )
      // //             : Center(
      // //             child: TextField(
      // //               // minLines: null,
      // //               // maxLines: null,
      // //               maxLines: (minLines) ? null : 1,
      // //               controller: textEditingController,
      // //               autofocus: false,
      // //               focusNode: myFocusNode,
      // //               textAlign: TextAlign.start,
      // //               // expands: true,
      // //               expands: minLines,
      // //               // textAlignVertical:(minLines)?TextAlignVertical.top:TextAlignVertical.center,
      // //               style: TextStyle(
      // //                   fontFamily: Constant.fontsFamily,
      // //                   color: fontColor,
      // //                   fontWeight: FontWeight.w400,
      // //                   fontSize: getEditFontSize()),
      // //               decoration: InputDecoration(
      // //                   prefixIconConstraints: const BoxConstraints(
      // //                     minWidth: 0,
      // //                     minHeight: 0,
      // //                   ),
      // //                   // filled: true,
      // //                   // fillColor: Colors.green,
      // //                   prefixIcon: (withPrefix)
      // //                       ? Padding(
      // //                     padding: EdgeInsets.only(
      // //                         right: FetchPixels.getPixelWidth(3)),
      // //                     child: getSvgImage(
      // //                         context, imgName, getEditIconSize()),
      // //                   )
      // //                       : getHorSpace(0),
      // //                   border: InputBorder.none,
      // //                   isDense: true,
      // //                   focusedBorder: InputBorder.none,
      // //                   enabledBorder: InputBorder.none,
      // //                   errorBorder: InputBorder.none,
      // //                   disabledBorder: InputBorder.none,
      // //                   hintText: s,
      // //                   // prefixIconConstraints: const BoxConstraints(minHeight: 0, minWidth: 0),
      // //                   hintStyle: TextStyle(
      // //                       fontFamily: Constant.fontsFamily,
      // //                       color: getFontHint(context),
      // //                       fontWeight: FontWeight.w400,
      // //                       fontSize: getEditFontSize())),
      // //             )),
      // //         // child: MediaQuery(
      // //         //   data: mqDataNew,
      // //         // child: IntrinsicHeight(
      // //         // child: IntrinsicHeight(
      // //         //   child: Align(
      // //         //     alignment: (minLines)?Alignment.topLeft:Alignment.centerLeft,
      // //         // ),
      // //         // ),
      // //         // ),
      // //       )), minLines, margin),
      // // );
    },
  );
}

Widget getDefaultTextFiledFigma(BuildContext context, String s,
    TextEditingController textEditingController, Color fontColor,
    {bool withPrefix = false,
      String imgName = "",
      bool minLines = false,
      EdgeInsetsGeometry margin = EdgeInsets.zero, bool isDisable = false}) {
  double height = getEditHeightFigma();
  FocusNode myFocusNode = FocusNode();
  bool isAutoFocus = false;
  return StatefulBuilder(
    builder: (context, setState) {
      final mqData = MediaQuery.of(context);
      final mqDataNew =
      mqData.copyWith(textScaleFactor: FetchPixels.getTextScale());

      return Container(
        height: (minLines) ? (height * 2.2) : height,
        margin: margin,
        padding: EdgeInsets.symmetric(
            horizontal: FetchPixels.getPixelWidth(18), vertical: 0),
        alignment: (minLines) ? Alignment.topLeft : Alignment.centerLeft,
        decoration: ShapeDecoration(
          color: Colors.transparent,
          shape: SmoothRectangleBorder(
            side: BorderSide(
                color:
                isAutoFocus
                    ? getAccentColor(context)
                    : getCurrentTheme(context).focusColor,
                width: FetchPixels.getPixelHeight(1)),
            borderRadius: SmoothBorderRadius(
              cornerRadius: getEditRadiusSizeFigma(),
              cornerSmoothing: 0.8,
            ),
          ),
        ),
        child: MediaQuery(
            data: mqDataNew,
            child: Focus(
                onFocusChange: (hasFocus) {
                  if (hasFocus) {
                    setState(() {
                      isAutoFocus = true;
                      myFocusNode.canRequestFocus = true;
                    });
                  } else {
                    setState(() {
                      isAutoFocus = false;
                      myFocusNode.canRequestFocus = false;
                    });
                  }
                },
                child: AbsorbPointer(
                  absorbing: isDisable,
                  child: SizedBox(
                    height: double.infinity,
                    child: (minLines)
                        ? TextField(
                      // minLines: null,
                      // maxLines: null,
                      maxLines: (minLines) ? null : 1,
                      controller: textEditingController,
                      autofocus: false,
                      focusNode: myFocusNode,
                      textAlign: TextAlign.start,
                      // expands: true,
                      expands: minLines,
                      // textAlignVertical:(minLines)?TextAlignVertical.top:TextAlignVertical.center,
                      style: TextStyle(
                          fontFamily: Constant.fontsFamily,
                          color: fontColor,
                          fontWeight: FontWeight.w500,
                          fontSize: getEditFontSizeFigma()),
                      decoration: InputDecoration(
                          prefixIconConstraints: const BoxConstraints(
                            minWidth: 0,
                            minHeight: 0,
                          ),
                          // filled: true,
                          // fillColor: Colors.green,
                          prefixIcon: (withPrefix)
                              ? Padding(
                            padding: EdgeInsets.only(
                                right:
                                FetchPixels.getPixelWidth(3)),
                            child: getSvgImage(context, imgName,
                                getEditIconSizeFigma()),
                          )
                              : getHorSpace(0),
                          border: InputBorder.none,
                          isDense: true,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          hintText: s,
                          // prefixIconConstraints: const BoxConstraints(minHeight: 0, minWidth: 0),
                          hintStyle: TextStyle(
                              fontFamily: Constant.fontsFamily,
                              color: getFontHint(context),
                              fontWeight: FontWeight.w500,
                              fontSize: getEditFontSizeFigma())),
                    )
                        : Center(
                        child: TextField(
                          // minLines: null,
                          // maxLines: null,
                          maxLines: (minLines) ? null : 1,
                          controller: textEditingController,
                          autofocus: false,
                          focusNode: myFocusNode,
                          textAlign: TextAlign.start,
                          // expands: true,
                          expands: minLines,
                          // textAlignVertical:(minLines)?TextAlignVertical.top:TextAlignVertical.center,
                          style: TextStyle(
                              fontFamily: Constant.fontsFamily,
                              color: fontColor,
                              fontWeight: FontWeight.w500,
                              fontSize: getEditFontSizeFigma()),
                          decoration: InputDecoration(
                              prefixIconConstraints: const BoxConstraints(
                                minWidth: 0,
                                minHeight: 0,
                              ),
                              // filled: true,
                              // fillColor: Colors.green,
                              prefixIcon: (withPrefix)
                                  ? Padding(
                                padding: EdgeInsets.only(
                                    right:
                                    FetchPixels.getPixelWidth(3)),
                                child: getSvgImage(context, imgName,
                                    getEditIconSizeFigma()),
                              )
                                  : getHorSpace(0),
                              border: InputBorder.none,
                              isDense: true,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              hintText: s,
                              // prefixIconConstraints: const BoxConstraints(minHeight: 0, minWidth: 0),
                              hintStyle: TextStyle(
                                  fontFamily: Constant.fontsFamily,
                                  color: getFontHint(context),
                                  fontWeight: FontWeight.w500,
                                  fontSize: getEditFontSizeFigma())),
                        )),
                  ),
                ))),
      ) ;
        // getTextFieldViewCustom(
        //   context,
        //   MediaQuery(
        //       data: mqDataNew,
        //       child: Focus(
        //           onFocusChange: (hasFocus) {
        //             if (hasFocus) {
        //               setState(() {
        //                 isAutoFocus = true;
        //                 myFocusNode.canRequestFocus = true;
        //               });
        //             } else {
        //               setState(() {
        //                 isAutoFocus = false;
        //                 myFocusNode.canRequestFocus = false;
        //               });
        //             }
        //           },
        //           child: AbsorbPointer(
        //             absorbing: isDisable,
        //             child: SizedBox(
        //               height: double.infinity,
        //               child: (minLines)
        //                   ? TextField(
        //                 // minLines: null,
        //                 // maxLines: null,
        //                 maxLines: (minLines) ? null : 1,
        //                 controller: textEditingController,
        //                 autofocus: false,
        //                 focusNode: myFocusNode,
        //                 textAlign: TextAlign.start,
        //                 // expands: true,
        //                 expands: minLines,
        //                 // textAlignVertical:(minLines)?TextAlignVertical.top:TextAlignVertical.center,
        //                 style: TextStyle(
        //                     fontFamily: Constant.fontsFamily,
        //                     color: fontColor,
        //                     fontWeight: FontWeight.w500,
        //                     fontSize: getEditFontSizeFigma()),
        //                 decoration: InputDecoration(
        //                     prefixIconConstraints: const BoxConstraints(
        //                       minWidth: 0,
        //                       minHeight: 0,
        //                     ),
        //                     // filled: true,
        //                     // fillColor: Colors.green,
        //                     prefixIcon: (withPrefix)
        //                         ? Padding(
        //                       padding: EdgeInsets.only(
        //                           right:
        //                           FetchPixels.getPixelWidth(3)),
        //                       child: getSvgImage(context, imgName,
        //                           getEditIconSizeFigma()),
        //                     )
        //                         : getHorSpace(0),
        //                     border: InputBorder.none,
        //                     isDense: true,
        //                     focusedBorder: InputBorder.none,
        //                     enabledBorder: InputBorder.none,
        //                     errorBorder: InputBorder.none,
        //                     disabledBorder: InputBorder.none,
        //                     hintText: s,
        //                     // prefixIconConstraints: const BoxConstraints(minHeight: 0, minWidth: 0),
        //                     hintStyle: TextStyle(
        //                         fontFamily: Constant.fontsFamily,
        //                         color: getFontHint(context),
        //                         fontWeight: FontWeight.w500,
        //                         fontSize: getEditFontSizeFigma())),
        //               )
        //                   : Center(
        //                   child: TextField(
        //                     // minLines: null,
        //                     // maxLines: null,
        //                     maxLines: (minLines) ? null : 1,
        //                     controller: textEditingController,
        //                     autofocus: false,
        //                     focusNode: myFocusNode,
        //                     textAlign: TextAlign.start,
        //                     // expands: true,
        //                     expands: minLines,
        //                     // textAlignVertical:(minLines)?TextAlignVertical.top:TextAlignVertical.center,
        //                     style: TextStyle(
        //                         fontFamily: Constant.fontsFamily,
        //                         color: fontColor,
        //                         fontWeight: FontWeight.w500,
        //                         fontSize: getEditFontSizeFigma()),
        //                     decoration: InputDecoration(
        //                         prefixIconConstraints: const BoxConstraints(
        //                           minWidth: 0,
        //                           minHeight: 0,
        //                         ),
        //                         // filled: true,
        //                         // fillColor: Colors.green,
        //                         prefixIcon: (withPrefix)
        //                             ? Padding(
        //                           padding: EdgeInsets.only(
        //                               right:
        //                               FetchPixels.getPixelWidth(3)),
        //                           child: getSvgImage(context, imgName,
        //                               getEditIconSizeFigma()),
        //                         )
        //                             : getHorSpace(0),
        //                         border: InputBorder.none,
        //                         isDense: true,
        //                         focusedBorder: InputBorder.none,
        //                         enabledBorder: InputBorder.none,
        //                         errorBorder: InputBorder.none,
        //                         disabledBorder: InputBorder.none,
        //                         hintText: s,
        //                         // prefixIconConstraints: const BoxConstraints(minHeight: 0, minWidth: 0),
        //                         hintStyle: TextStyle(
        //                             fontFamily: Constant.fontsFamily,
        //                             color: getFontHint(context),
        //                             fontWeight: FontWeight.w500,
        //                             fontSize: getEditFontSizeFigma())),
        //                   )),
        //             ),
        //           ))),
        //   minLines,
        //   margin);
    },
  );
}

Widget getDefaultCountryPickerTextFiled(BuildContext context, String s,
    TextEditingController textEditingController, Color fontColor,
    {bool withPrefix = false,
      String imgName = "",
      bool minLines = false,
      EdgeInsetsGeometry margin = EdgeInsets.zero}) {
  double height = getEditHeight();

  FocusNode myFocusNode = FocusNode();
  bool isAutoFocus = false;
  return StatefulBuilder(
    builder: (context, setState) {
      final mqData = MediaQuery.of(context);
      final mqDataNew =
      mqData.copyWith(textScaleFactor: FetchPixels.getTextScale());

      return Container(
        height: (minLines) ? (height * 2.2) : height,
        margin: margin,
        padding: EdgeInsets.symmetric(
          horizontal: FetchPixels.getPixelWidth(18),
        ),
        alignment: (minLines) ? Alignment.topLeft : Alignment.centerLeft,
        decoration: ShapeDecoration(
          color: Colors.transparent,
          shape: SmoothRectangleBorder(
            side: BorderSide(
                color: isAutoFocus
                    ? getAccentColor(context)
                    : getCurrentTheme(context).focusColor,
                width: 1),
            borderRadius: SmoothBorderRadius(
              cornerRadius: getEditRadiusSize(),
              cornerSmoothing: 0.8,
            ),
          ),
        ),
        child: Focus(
            onFocusChange: (hasFocus) {
              if (hasFocus) {
                setState(() {
                  isAutoFocus = true;
                  myFocusNode.canRequestFocus = true;
                });
              } else {
                setState(() {
                  isAutoFocus = false;
                  myFocusNode.canRequestFocus = false;
                });
              }
            },
            child: MediaQuery(
              data: mqDataNew,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CountryCodePicker(
                    onChanged: print,
                    // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                    initialSelection: 'IN',
                    flagWidth: FetchPixels.getPixelWidth(24),
                    padding: EdgeInsets.zero,
                    textStyle: TextStyle(
                        fontFamily: Constant.fontsFamily,
                        color: fontColor,
                        fontWeight: FontWeight.w400,
                        fontSize: getEditFontSize()),
                    favorite: const ['+91', 'IN'],
                    // optional. Shows only country name and flag
                    showCountryOnly: false,
                    showDropDownButton: true,

                    // optional. Shows only country name and flag when popup is closed.
                    showOnlyCountryWhenClosed: false,
                    // optional. aligns the flag and the Text left
                    alignLeft: false,
                  ),
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      maxLines: (minLines) ? null : 1,
                      controller: textEditingController,
                      autofocus: false,
                      focusNode: myFocusNode,
                      textAlign: TextAlign.start,
                      // textAlignVertical: TextAlignVertical.center,
                      style: TextStyle(
                          fontFamily: Constant.fontsFamily,
                          color: fontColor,
                          fontWeight: FontWeight.w400,
                          fontSize: getEditFontSize()),
                      decoration: InputDecoration(
                          prefixIcon: (withPrefix)
                              ? Padding(
                            padding: EdgeInsets.only(
                                right: FetchPixels.getPixelWidth(3)),
                            child: getSvgImage(
                                context, imgName, getEditIconSize()),
                          )
                              : const SizedBox(
                            width: 0,
                            height: 0,
                          ),
                          border: InputBorder.none,
                          isDense: true,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          hintText: s,
                          prefixIconConstraints:
                          const BoxConstraints(minHeight: 0, minWidth: 0),
                          hintStyle: TextStyle(
                              fontFamily: Constant.fontsFamily,
                              color: getFontHint(context),
                              fontWeight: FontWeight.w400,
                              fontSize: getEditFontSize())),
                    ),
                    flex: 1,
                  )
                ],
              ),
            )),
      );
    },
  );
}

getProgressDialog() {
  return Container(
      color: Colors.transparent,
      child: Center(
          child: Theme(
              data: ThemeData(
                  cupertinoOverrideTheme:
                  const CupertinoThemeData(brightness: Brightness.dark)),
              child: const CupertinoActivityIndicator())));
}

Widget getPassTextFiled(BuildContext context,
    String s,
    TextEditingController textEditingController,
    Color fontColor,
    bool showPass,
    Function function,
    {bool withPrefix = false,
      String imgName = "",
      bool minLines = false,
      EdgeInsetsGeometry margin = EdgeInsets.zero}) {
  double height = getEditHeight();

  FocusNode myFocusNode = FocusNode();
  bool isAutoFocus = false;

  final mqData = MediaQuery.of(context);
  final mqDataNew =
  mqData.copyWith(textScaleFactor: FetchPixels.getTextScale());
  return StatefulBuilder(
    builder: (context, setState) {
      return Container(
        height: (minLines) ? (height * 2.2) : height,
        margin: margin,
        padding: EdgeInsets.symmetric(
          horizontal: FetchPixels.getPixelWidth(18),
        ),
        alignment: (minLines) ? Alignment.topLeft : Alignment.centerLeft,
        decoration: getButtonDecoration(Colors.transparent,
            withBorder: true,
            borderColor: isAutoFocus
                ? getAccentColor(context)
                : getCurrentTheme(context).focusColor,
            corner: getEditRadiusSize(),
            withCorners: true,
            cornerSmoothing: 0.8),
        child: Focus(
          onFocusChange: (hasFocus) {
            if (hasFocus) {
              setState(() {
                isAutoFocus = true;
                myFocusNode.canRequestFocus = true;
              });
            } else {
              setState(() {
                isAutoFocus = false;
                myFocusNode.canRequestFocus = false;
              });
            }
          },
          child: Row(
            children: [
              Expanded(
                child: MediaQuery(
                  child: TextField(
                    maxLines: (minLines) ? null : 1,
                    obscureText: (showPass) ? false : true,
                    controller: textEditingController,
                    autofocus: false,
                    focusNode: myFocusNode,
                    textAlign: TextAlign.start,
                    // textAlignVertical: TextAlignVertical.center,
                    style: TextStyle(
                        fontFamily: Constant.fontsFamily,
                        color: fontColor,
                        fontWeight: FontWeight.w400,
                        fontSize: getEditFontSize()),
                    decoration: InputDecoration(
                        prefixIcon: (withPrefix)
                            ? Padding(
                          padding: EdgeInsets.only(
                              right: FetchPixels.getPixelWidth(3)),
                          child: getSvgImage(
                              context, imgName, getEditIconSize()),
                        )
                            : const SizedBox(
                          width: 0,
                          height: 0,
                        ),
                        border: InputBorder.none,
                        isDense: true,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        hintText: s,
                        prefixIconConstraints:
                        const BoxConstraints(minHeight: 0, minWidth: 0),
                        hintStyle: TextStyle(
                            fontFamily: Constant.fontsFamily,
                            color: getFontHint(context),
                            fontWeight: FontWeight.w400,
                            fontSize: getEditFontSize())),
                  ),
                  data: mqDataNew,
                ),
                flex: 1,
              ),
              InkWell(
                  onTap: () {
                    function();
                  },
                  child: getSvgImage(context, "Eye.svg", getEditIconSize()))
              // color: Colors.grey))
            ],
          ),
        ),
      );
    },
  );
}

Widget getMediaQueryWidget(BuildContext context, Widget widget) {
  final mqData = MediaQuery.of(context);
  final mqDataNew =
  mqData.copyWith(textScaleFactor: FetchPixels.getTextScale());
  return MediaQuery(child: widget, data: mqDataNew);
}

Widget getPaddingWidget(EdgeInsets edgeInsets, Widget widget) {
  return Padding(
    padding: edgeInsets,
    child: widget,
  );
}

AppBar getInVisibleAppBar({Color color = Colors.transparent}) {
  return AppBar(
    toolbarHeight: 0,
    elevation: 0,
    backgroundColor: color,
  );
}

Widget getSettingRow(BuildContext context, String image, String name,
    Function function,
    {bool withSwitch = false,
      ValueChanged<bool>? onToggle,
      bool checked = false}) {
  double horSpace = FetchPixels.getPixelWidth(16);
  double iconSize = FetchPixels.getPixelHeight(24);
  return Container(
    width: double.infinity,
    height: getButtonHeight(),
    margin: EdgeInsets.symmetric(
        horizontal: FetchPixels.getPixelWidth(20),
        vertical: FetchPixels.getPixelHeight(10)),
    decoration: getButtonDecoration(
        getCurrentTheme(context).dialogBackgroundColor,
        withCorners: true,
        corner: getButtonCorners(),
        withBorder: false,
        shadow: [
          BoxShadow(
              color: getCurrentTheme(context).shadowColor,
              offset: const Offset(-5, 6),
              blurRadius: 40)
        ]),
    child: InkWell(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          getHorSpace(horSpace),
          getSvgImageWithSize(
            context,
            image,
            iconSize,
            iconSize,
          ),
          getHorSpace(FetchPixels.getPixelWidth(6)),
          Expanded(
            child: getCustomFont(name, 16, getFontColor(context), 1,
                fontWeight: FontWeight.w400),
            flex: 1,
          ),
          (withSwitch)
              ? FlutterSwitch(
            value: checked,
            padding: 0.5,
            inactiveColor: getCardColor(context),
            activeColor: getAccentColor(context),
            inactiveToggleColor: getAccentColor(context),
            width: FetchPixels.getPixelHeight(67),
            height: FetchPixels.getPixelHeight(35),
            onToggle: onToggle!,
          )
              : getSvgImageWithSize(
            context,
            "arrow_right.svg",
            iconSize,
            iconSize,
          ),
          getHorSpace(horSpace),
        ],
      ),
      onTap: () {
        function();
      },
    ),
  );
}

Widget getButton(BuildContext context,
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
      List<BoxShadow> shadow = const [],
      bool withGradient = true}) {
  double buttonHeight = getButtonHeight();
  double fontSize = getButtonFontSize();
  return InkWell(
    onTap: () {
      function();
    },
    child: Container(
      margin: insetsGeometry,
      width: double.infinity,
      height: buttonHeight,
      decoration: (withGradient)
          ? getButtonDecorationWithGradient(bgColor,
          withCorners: withCorners,
          corner: (withCorners) ? getButtonCorners() : 0,
          withBorder: isBorder,
          borderColor: borderColor,
          shadow: shadow)
          : getButtonDecoration(bgColor,
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
          (isIcon)
              ? getSvgImage(context, icons ?? "", getEditIconSize())
              : getHorSpace(0),
          (isIcon)
              ? getHorSpace(FetchPixels.getPixelWidth(10))
              : getHorSpace(0),
          getCustomFont(
            text,
            fontSize,
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

Widget getRowWidget(BuildContext context, String title, String icon,
    Function function) {
  double iconSize = FetchPixels.getPixelHeight(24);
  return InkWell(
    onTap: () {
      function();
    },
    child: Container(
      height: FetchPixels.getPixelHeight(60),
      width: double.infinity,
      margin: EdgeInsets.symmetric(
          horizontal: FetchPixels.getDefaultHorSpaceFigma(context),
          vertical: FetchPixels.getPixelHeight(10)),
      padding:
      EdgeInsets.symmetric(horizontal: FetchPixels.getPixelWidth(21)),
      decoration: getButtonDecoration(Colors.white,
          withCorners: true,
          corner: getButtonCornersFigma(),
          shadow: [
            const BoxShadow(
                color: Color.fromRGBO(155, 103, 103, 0.10999999940395355),
                offset: Offset(-5, 6),
                blurRadius: 28)
          ]),
      child: Row(
        children: [
          getSvgImageWithSize(
            context,
            icon,
            iconSize,
            iconSize,
          ),
          getHorSpace(FetchPixels.getPixelWidth(17)),
          Expanded(
            child: getCustomFont(title, 16, getFontColor(context), 1,
                fontWeight: FontWeight.w500),
            flex: 1,
          ),
          getSvgImageWithSize(
            context,
            "arrow_right.svg",
            iconSize,
            iconSize,
          ),
        ],
      ),
    ),
  );
}


showPaymentDialog(BuildContext context, Function backFun) {
  bool chkVal = false;
  TextEditingController cardNameCon = TextEditingController();
  TextEditingController cardNoCon = TextEditingController();
  TextEditingController cardMonthCon = TextEditingController();
  double radius = FetchPixels.getPixelHeight(40);
  double horPadding = FetchPixels.getDefaultHorSpaceFigma(context);
  return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(radius),
              topRight: Radius.circular(radius))),
      builder: (BuildContext context) {
        return SingleChildScrollView(child: StatefulBuilder(
          builder: (context, setState) {
            return Container(
                padding: EdgeInsets.only(
                    bottom: MediaQuery
                        .of(context)
                        .viewInsets
                        .bottom,
                    left: horPadding,
                    right: horPadding),
                child: Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      getVerSpace(FetchPixels.getPixelHeight(30)),
                      Row(
                        children: [
                          getCustomFont(
                              "Add Credit Card", 20, getFontColor(context), 1,
                              fontWeight: FontWeight.w700),
                          Expanded(
                            child: getHorSpace(0),
                            flex: 1,
                          ),
                          getToolbarIconsCustom(context, "Close.svg", () {
                            backFun();
                          })
                        ],
                      ),
                      getVerSpace(FetchPixels.getPixelHeight(24)),
                      getDefaultTextFiledFigma(context, "Name on card",
                          cardNameCon, getFontColor(context)),
                      getVerSpace(FetchPixels.getPixelHeight(20)),
                      getDefaultTextFiledFigma(context, "Card number",
                          cardNoCon, getFontColor(context)),
                      getVerSpace(FetchPixels.getPixelHeight(20)),
                      Row(
                        children: [
                          Expanded(
                            child: getDefaultTextFiledFigma(context, "MM/YY",
                                cardMonthCon, getFontColor(context)),
                            flex: 1,
                          ),
                          getHorSpace(FetchPixels.getPixelWidth(20)),
                          Expanded(
                            child: getDefaultTextFiledFigma(context, "CVV",
                                cardMonthCon, getFontColor(context)),
                            flex: 1,
                          )
                        ],
                      ),
                      getVerSpace(FetchPixels.getPixelHeight(20)),
                      Row(
                        children: [
                          SizedBox(
                            height: FetchPixels.getPixelHeight(24),
                            width: FetchPixels.getPixelHeight(24),
                            child: Checkbox(
                              onChanged: (value) {
                                setState(() {
                                  chkVal = value!;
                                });
                              },
                              value: chkVal,
                              materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                              side: BorderSide(width: 0.8, color: greyFont),
                              activeColor: getAccentColor(context),
                              shape: const RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(5)),
                              ),
                            ),
                          ),
                          getHorSpace(FetchPixels.getPixelWidth(10)),
                          getCustomFont(
                              "Save Card", 14, getFontColor(context), 1,
                              textAlign: TextAlign.start,
                              fontWeight: FontWeight.w500)
                        ],
                      ),
                      getVerSpace(FetchPixels.getPixelHeight(30)),
                      getButtonFigma(
                          context,
                          Colors.transparent,
                          true,
                          "Add",
                          Colors.white, () {
                        backFun();
                        // Constant.backToPrev(context);
                      },
                          EdgeInsets.zero),
                      getVerSpace(FetchPixels.getPixelHeight(30)),
                    ],
                  ),
                ));
          },
        )); // From with TextField inside
      });
}


Widget getButtonFigma(BuildContext context,
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
      List<BoxShadow> shadow = const [],
      bool withGradient = true}) {
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
              ? getSvgImage(context, icons ?? "", getEditIconSizeFigma())
              : getHorSpace(0),
          (isIcon)
              ? getHorSpace(FetchPixels.getPixelWidth(10))
              : getHorSpace(0),
          getCustomFont(
            text,
            fontSize,
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

Widget getButtonWithEndIcon(BuildContext context,
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
  double buttonHeight = getButtonHeight();
  double fontSize = getButtonFontSize();
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
          getHorSpace(FetchPixels.getPixelWidth(10)),
          Expanded(
            child: getCustomFont(
              text,
              fontSize,
              textColor,
              1,
              textAlign: TextAlign.start,
              fontWeight: weight,
            ),
            flex: 1,
          ),
          (isIcon)
              ? getSvgImage(context, icons ?? "", getEditIconSize())
              : getHorSpace(0),
          getHorSpace(FetchPixels.getPixelWidth(10))
        ],
      ),
    ),
  );
}

Widget getSubButton(BuildContext context,
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
  double buttonHeight = FetchPixels.getPixelHeight(40);
  double buttonCorner = FetchPixels.getPixelHeight(10);
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
          (isIcon)
              ? getHorSpace(FetchPixels.getPixelWidth(10))
              : getHorSpace(0),
          // Text("wruiewru"),
          getCustomFont(
            text,
            13,
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
    {BoxFit boxFit = BoxFit.contain}) {
  return SizedBox(
    height: height,
    width: width,
    child: ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(radius)),
      child: getAssetImage(context, img, width, height, boxFit: boxFit),
    ),
  );
}

Widget getVerSpace(double verSpace) {
  return SizedBox(
    height: verSpace,
  );
}

Widget getSearchWidget(BuildContext context,
    TextEditingController searchController,
    Function filterClick,
    ValueChanged<String> onChanged,
    {bool readOnly = false}) {
  double height = getEditHeight();
  double iconSize = FetchPixels.getPixelHeight(getEditIconSize());
  double fontSize = getEditFontSize();

  final mqData = MediaQuery.of(context);
  final mqDataNew =
  mqData.copyWith(textScaleFactor: FetchPixels.getTextScale());

  return Container(
    width: double.infinity,
    height: height,
    padding: EdgeInsets.symmetric(horizontal: FetchPixels.getPixelWidth(19)),
    decoration: getButtonDecoration(Colors.transparent,
        withCorners: true,
        corner: getEditRadiusSize(),
        withBorder: true,
        borderColor: getCurrentTheme(context).focusColor),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        getSvgImageWithSize(context, "Search.svg", iconSize, iconSize),
        getHorSpace(FetchPixels.getPixelWidth(17.9)),
        Expanded(
          child: MediaQuery(
              data: mqDataNew,
              child: IntrinsicHeight(
                child: TextField(
                  readOnly: readOnly,
                  controller: searchController,
                  onChanged: onChanged,
                  decoration: InputDecoration(
                      isDense: true,
                      hintText: "Search...",
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                          fontFamily: Constant.fontsFamily,
                          fontSize: fontSize,
                          fontWeight: FontWeight.w400,
                          color: getFontHint(context))),
                  style: TextStyle(
                      fontFamily: Constant.fontsFamily,
                      fontSize: fontSize,
                      fontWeight: FontWeight.w400,
                      color: getFontColor(context)),
                  textAlign: TextAlign.start,
                  maxLines: 1,
                ),
              )),
          flex: 1,
        ),
        getHorSpace(FetchPixels.getPixelWidth(3)),
        InkWell(
          child: getSvgImageWithSize(context, "filter.svg", iconSize, iconSize),
          onTap: () {
            filterClick();
          },
        )
      ],
    ),
  );
}

Widget getSearchFigmaWidget(BuildContext context,
    TextEditingController searchController,
    Function filterClick,
    ValueChanged<String> onChanged,
    {bool readOnly = false}) {
  double height = getEditHeightFigma();
  double iconSize = FetchPixels.getPixelHeight(getEditIconSizeFigma());
  double fontSize = getEditFontSizeFigma();

  final mqData = MediaQuery.of(context);
  final mqDataNew =
  mqData.copyWith(textScaleFactor: FetchPixels.getTextScale());

  return Container(
    width: double.infinity,
    height: height,
    padding: EdgeInsets.symmetric(horizontal: FetchPixels.getPixelWidth(19)),
    decoration: getButtonDecoration(Colors.transparent,
        withCorners: true,
        corner: getEditRadiusSizeFigma(),
        withBorder: true,
        borderColor: getCurrentTheme(context).focusColor),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        getSvgImageWithSize(context, "Search.svg", iconSize, iconSize),
        getHorSpace(FetchPixels.getPixelWidth(13)),
        Expanded(
          child: MediaQuery(
              data: mqDataNew,
              child: IntrinsicHeight(
                child: TextField(
                  readOnly: readOnly,
                  controller: searchController,
                  onChanged: onChanged,
                  decoration: InputDecoration(
                      isDense: true,
                      hintText: "Search...",
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                          fontFamily: Constant.fontsFamily,
                          fontSize: fontSize,
                          fontWeight: FontWeight.w500,
                          color: getFontHint(context))),
                  style: TextStyle(
                      fontFamily: Constant.fontsFamily,
                      fontSize: fontSize,
                      fontWeight: FontWeight.w500,
                      color: getFontColor(context)),
                  textAlign: TextAlign.start,
                  maxLines: 1,
                ),
              )),
          flex: 1,
        ),
        getHorSpace(FetchPixels.getPixelWidth(3)),
        InkWell(
          child: getSvgImageWithSize(context, "filter.svg", iconSize, iconSize),
          onTap: () {
            filterClick();
          },
        )
      ],
    ),
  );
}

Widget getHorSpace(double verSpace) {
  return SizedBox(
    width: verSpace,
  );
}
