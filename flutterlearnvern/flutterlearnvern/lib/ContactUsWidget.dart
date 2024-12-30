import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterlearnvern/utils/ConstantData.dart';
import 'package:flutterlearnvern/utils/ConstantWidget.dart';

import 'generated/l10n.dart';

class ContactUsWidget extends StatefulWidget {
  ContactUsWidget();

  @override
  _ContactUsWidget createState() {
    return _ContactUsWidget();
  }
}

class _ContactUsWidget extends State<ContactUsWidget> {
  TextEditingController nameController = new TextEditingController();
  TextEditingController mailController = new TextEditingController();
  TextEditingController genderController = new TextEditingController();
  TextEditingController phoneController = new TextEditingController();
  TextEditingController educationController = new TextEditingController();
  TextEditingController collageController = new TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ConstantData.setThemePosition();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    double margin = ConstantWidget.getScreenPercentSize(context, 2);

    double bottomHeight = ConstantWidget.getScreenPercentSize(context, 6);
    double radius = ConstantWidget.getPercentSize(bottomHeight, 18);
    return WillPopScope(
        child: Scaffold(
          backgroundColor: bgColor,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: cellColor,
            title: ConstantWidget.getTextWidget(
                "Contact Us",
                textColor,
                TextAlign.left,
                FontWeight.bold,
                ConstantWidget.getScreenPercentSize(context, 2.5)),
            leading: IconButton(
              icon: Icon(
                CupertinoIcons.left_chevron,
                color: textColor,
              ),
              onPressed: _requestPop,
            ),
            actions: [
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  margin: EdgeInsets.all(
                      ConstantWidget.getScreenPercentSize(context, 1)),
                  padding: EdgeInsets.symmetric(
                      vertical: ConstantWidget.getScreenPercentSize(context, 1),
                      horizontal:
                          ConstantWidget.getScreenPercentSize(context, 1.5)),
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.all(Radius.circular(
                          ConstantWidget.getScreenPercentSize(context, 1)))),
                  child: Row(
                    children: [
                      ConstantWidget.getTextWidget(
                          S.of(context).share,
                          Colors.black,
                          TextAlign.left,
                          FontWeight.bold,
                          ConstantWidget.getScreenPercentSize(context, 2)),
                      SizedBox(width: 5),
                      Image.asset(
                        ConstantData.assetImagesPath + "share.png",
                        color: Colors.black,
                        height: ConstantWidget.getScreenPercentSize(context, 2),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),

          body: Container(
            child: Column(
              children: [
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.symmetric(horizontal: margin),
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: ConstantWidget.getTextWidget(
                            S.of(context).appname,
                            primaryColor,
                            TextAlign.left,
                            FontWeight.bold,
                            ConstantWidget.getScreenPercentSize(context, 4.5)),
                      ),
                      SizedBox(height: (margin / 2)),
                      Align(
                        alignment: Alignment.topCenter,
                        child: ConstantWidget.getTextWidget(
                            S.of(context).contactVia,
                            textColor,
                            TextAlign.left,
                            FontWeight.bold,
                            ConstantWidget.getScreenPercentSize(context, 2.3)),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: margin),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            getSocialButton(Colors.green, "phone.png"),
                            getSocialButton(Colors.redAccent, "gmail.png"),
                            getSocialButton(Colors.green, "whatsapp.png"),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 0.3,
                        color: subTextColor,
                      ),
                      getTitle("Full Name"),
                      textFieldProfileWidget(context,
                          "Provide your name please", nameController, () {}),
                      getTitle("Email Address"),
                      textFieldProfileWidget(context,
                          "Provide your Email address", mailController, () {}),
                      getTitle("Mobile Number"),
                      textFieldProfileWidget(context,
                          "Provide your Email address", phoneController, () {}),
                      getTitle("Your Message Number"),
                      textMessageWidget(
                          context,
                          "Provide The reason For Contacting US",
                          phoneController,
                          () {}),
                    ],
                  ),
                ),
                InkWell(
                  child: Container(
                    height: bottomHeight,
                    margin: EdgeInsets.symmetric(
                        horizontal: margin,
                        vertical:
                            ConstantWidget.getPercentSize(bottomHeight, 15)),
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(radius)),
                    ),
                    child: Center(
                      child: ConstantWidget.getTextWidget(
                          "Submit",
                          Colors.white,
                          TextAlign.start,
                          FontWeight.bold,
                          ConstantWidget.getPercentSize(bottomHeight, 30)),
                    ),
                  ),
                  onTap: () {
                    _requestPop();
                  },
                )
              ],
            ),
            // child: mainWidget(),
          ),

          // bottomNavigationBar: ,
        ),
        onWillPop: _requestPop);
  }

  getTitle(String s) {
    return Container(
      margin: EdgeInsets.only(
          top: ConstantWidget.getScreenPercentSize(context, 1.2)),
      child: ConstantWidget.getTextWidget(s, textColor, TextAlign.start,
          FontWeight.w700, ConstantWidget.getScreenPercentSize(context, 1.8)),
    );
  }

  static Widget textFieldProfileWidget(BuildContext context, String s,
      TextEditingController textEditingController, Function function) {
    double height = ConstantWidget.getScreenPercentSize(context, 7);

    double radius = ConstantWidget.getPercentSize(height, 20);
    double fontSize = ConstantWidget.getPercentSize(height, 25);

    return Container(
      height: height,
      margin: EdgeInsets.symmetric(
          vertical: ConstantWidget.getScreenPercentSize(context, 1.2)),
      padding: EdgeInsets.symmetric(
          horizontal: ConstantWidget.getWidthPercentSize(context, 2)),
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: cellColor,
        borderRadius: BorderRadius.all(
          Radius.circular(radius),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8.0,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              maxLines: 1,
              controller: textEditingController,
              style: TextStyle(
                  fontFamily: ConstantData.fontsFamily,
                  color: subTextColor,
                  fontWeight: FontWeight.w400,
                  fontSize: fontSize),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  hintText: s,
                  hintStyle: TextStyle(
                      fontFamily: ConstantData.fontsFamily,
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                      fontSize: fontSize)),
            ),
          )
        ],
      ),
    );
  }

  static Widget textMessageWidget(BuildContext context, String s,
      TextEditingController textEditingController, Function function) {
    double height = ConstantWidget.getScreenPercentSize(context, 7);

    double radius = ConstantWidget.getPercentSize(height, 20);
    double fontSize = ConstantWidget.getPercentSize(height, 25);

    return Container(
      margin: EdgeInsets.symmetric(
          vertical: ConstantWidget.getScreenPercentSize(context, 1.2)),
      padding: EdgeInsets.symmetric(
          horizontal: ConstantWidget.getWidthPercentSize(context, 2)),
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: cellColor,
        borderRadius: BorderRadius.all(
          Radius.circular(radius),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8.0,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: TextField(
        maxLines: 6,
        controller: textEditingController,
        style: TextStyle(
            fontFamily: ConstantData.fontsFamily,
            color: subTextColor,
            fontWeight: FontWeight.w400,
            fontSize: fontSize),
        decoration: InputDecoration(
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            hintText: s,
            hintStyle: TextStyle(
                fontFamily: ConstantData.fontsFamily,
                color: Colors.grey,
                fontWeight: FontWeight.w400,
                fontSize: fontSize)),
      ),
    );
  }

  getSocialButton(var color, String icon) {
    double height = ConstantWidget.getScreenPercentSize(context, 4.8);
    double subHeight = ConstantWidget.getPercentSize(height, 55);
    return Container(
      height: height,
      width: height,
      margin: EdgeInsets.symmetric(
          horizontal: ConstantWidget.getWidthPercentSize(context, 2)),
      decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          border: Border.all(color: color, width: 1)),
      child: Center(
          child: Image.asset(
        ConstantData.assetImagesPath + icon,
        height: subHeight,
        width: subHeight,
      )),
    );
  }

  Future<bool> _requestPop() {
    Navigator.of(context).pop();
    return new Future.value(true);
  }
}
