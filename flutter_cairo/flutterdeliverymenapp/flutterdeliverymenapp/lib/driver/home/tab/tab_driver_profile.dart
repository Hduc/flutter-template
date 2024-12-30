// ignore: file_names
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:shopping/constants/constant.dart';
import 'package:shopping/constants/pref_data.dart';
import 'package:shopping/constants/size_config.dart';
import 'package:shopping/ui/intro/splash_screen.dart';

import '../../../constants/widget_utils.dart';
import '../../../constants/color_data.dart';

class TabDriverProfile extends StatefulWidget {
  const TabDriverProfile({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _TabDriverProfile();
  }
}

class _TabDriverProfile extends State<TabDriverProfile> {
  TextEditingController fNameCont = TextEditingController(text: "Jennie");
  TextEditingController lNameCont = TextEditingController(text: "Winget");
  TextEditingController emailCont = TextEditingController(text: "jenniewinget@gmail.com");

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double screenHeight = SizeConfig.safeBlockVertical! * 100;
    double appBarPadding = getAppBarPadding();
    double imgHeight = Constant.getPercentSize(screenHeight, 14);
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: backgroundColor,
      child: Column(
        children: [
          getDefaultHeader(context, "My Profile", () {}, (value) {},
              withFilter: false, isShowBack: false, isShowSearch: false),
          getSpace(appBarPadding),
          Container(
              width: imgHeight,
              height: imgHeight,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image:
                          AssetImage(Constant.assetImagePath + "Profile.png"),
                      fit: BoxFit.cover))),
          getSpace(appBarPadding),
          getCustomText("Jerome Bell", fontBlack, 1, TextAlign.center,
              FontWeight.bold, Constant.getPercentSize(screenHeight, 2.7)),
          getSpace(Constant.getPercentSize(appBarPadding, 50)),
          getCustomText("jeromebell@gmail.com", greyFont, 1, TextAlign.center,
              FontWeight.w400, Constant.getPercentSize(screenHeight, 2.2)),
          getSpace(appBarPadding),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(getAppBarPadding()),
              padding:
                  EdgeInsets.only(left: appBarPadding, right: appBarPadding),
              decoration: ShapeDecoration(
                  color: cardColor,
                  shape: SmoothRectangleBorder(
                      borderRadius: SmoothBorderRadius(
                          cornerRadius:
                              Constant.getPercentSize(screenHeight, 2),
                          cornerSmoothing: 0.5)),
                  shadows: [
                    BoxShadow(
                        color: shadowColor.withOpacity(0.02),
                        blurRadius: 3,
                        spreadRadius: 4)
                  ]),
              child: ListView(
                padding: EdgeInsets.zero,
                primary: true,
                shrinkWrap: true,
                children: [
                  getSpace(appBarPadding),
                  getDefaultTextFiledWithoutIconWidget(
                      context, "First Name", fNameCont,
                      withPrefix: true, imgName: "Document.svg",isEnable: false),
                  getDefaultTextFiledWithoutIconWidget(
                      context, "Last Name", lNameCont,
                      withPrefix: true, imgName: "Document.svg",isEnable: false),
                  getDefaultTextFiledWithoutIconWidget(
                      context, "Email", emailCont,
                      withPrefix: true, imgName: "email.svg",isEnable: false),
                  getSpace(Constant.getPercentSize(getAppBarPadding(),50)),
                  getSettingRow("Lock.svg", "Privacy Policy", () {}),
                  getSeparatorWidget(),
                  getSettingRow("Document.svg", "Terms of Service", () {}),
                  getSpace(getAppBarPadding())
                ],
              ),
            ),
            flex: 1,
          ),
          getButton(primaryColor, true, "Logout", Colors.white, () {
            PrefData.setLogIn(false);
            Constant.sendToScreen(const SplashScreen(), context);
          }, FontWeight.w700, EdgeInsets.all(appBarPadding))
        ],
      ),
    );
  }

  Widget getDefaultTextFiledWithoutIconWidget(BuildContext context, String s,
      TextEditingController textEditingController,
      {bool withPrefix = false, String imgName = "",bool isEnable=true}) {
    double height = getEditHeight();

    double radius = Constant.getPercentSize(height, 20);
    double fontSize = Constant.getPercentSize(height, 30);
    FocusNode myFocusNode = FocusNode();
    bool isAutoFocus = false;
    return StatefulBuilder(
      builder: (context, setState) {
        return Container(
          height: height,
          margin: EdgeInsets.symmetric(
              vertical:Constant.getPercentSize(getAppBarPadding(),65)),
          padding: EdgeInsets.symmetric(
              horizontal: Constant.getWidthPercentSize(2.5)),
          alignment: Alignment.centerLeft,
          decoration: ShapeDecoration(
            color: Colors.transparent,
            shape: SmoothRectangleBorder(
              side: BorderSide(
                  color: isAutoFocus ? primaryColor : Colors.grey.shade400,
                  width: 1),
              borderRadius: SmoothBorderRadius(
                cornerRadius: radius,
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
            child: TextField(
              maxLines: 1,
              enableInteractiveSelection: false,
              controller: textEditingController,
              enabled: isEnable,
              focusNode: myFocusNode,
              textAlign: TextAlign.start,
              textAlignVertical: TextAlignVertical.center,
              style: TextStyle(
                  fontFamily: Constant.fontsFamily,
                  color: fontBlack,
                  fontWeight: FontWeight.w500,
                  fontSize: fontSize),
              decoration: InputDecoration(
                  prefixIcon: (withPrefix)
                      ? Padding(
                          padding: EdgeInsets.only(
                              right: Constant.getWidthPercentSize(2.5)),
                          child: getSvgImage(
                              imgName, Constant.getPercentSize(height, 40)),
                        )
                      : getSpace(0),
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
                      color: greyFont,
                      fontWeight: FontWeight.w400,
                      fontSize: fontSize)),
            ),
          ),
        );
      },
    );
  }

  Widget getSeparatorWidget() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: getAppBarPadding()),
      child: Divider(
        height: 1,
        color: Colors.grey.shade200,
      ),
    );
  }

  Widget getSeparateDivider() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: getAppBarPadding()),
      child: Divider(
        height: 1,
        color: Colors.grey.shade200,
      ),
    );
  }
}
