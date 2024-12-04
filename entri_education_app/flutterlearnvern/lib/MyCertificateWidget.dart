import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterlearnvern/utils/ConstantData.dart';
import 'package:flutterlearnvern/utils/ConstantWidget.dart';
import 'package:flutterlearnvern/utils/UpgradeDialogBox.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import 'generated/l10n.dart';

class MyCertificateWidget extends StatefulWidget {
  @override
  _MyCertificateWidget createState() {
    return _MyCertificateWidget();
  }
}

class _MyCertificateWidget extends State<MyCertificateWidget> {
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

    double height = ConstantWidget.getScreenPercentSize(context, 16);
    double imgHeight = ConstantWidget.getPercentSize(height, 85);
    double circleHeight = ConstantWidget.getPercentSize(height, 17);
    double radius1 = ConstantWidget.getPercentSize(height, 8);

    double sliderHeight = ConstantWidget.getScreenPercentSize(context, 20);

    return WillPopScope(
        child: Scaffold(
          backgroundColor: bgColor,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: cellColor,
            title: ConstantWidget.getTextWidget(
                "My Certificates",
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
            margin: EdgeInsets.only(top: margin),
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: margin),
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    ConstantData.assetImagesPath + "certificate.png",
                    height: ConstantWidget.getScreenPercentSize(context, 8),
                    color: Colors.grey.shade400,
                  ),
                ),
                SizedBox(height: margin),
                Align(
                  alignment: Alignment.topCenter,
                  child: ConstantWidget.getTextWidget(
                      "You have not otp for any certificate yet!",
                      textColor,
                      TextAlign.left,
                      FontWeight.w600,
                      ConstantWidget.getScreenPercentSize(context, 2.2)),
                ),
                SizedBox(height: margin / 2),
                Align(
                  alignment: Alignment.topCenter,
                  child: ConstantWidget.getTextWidget(
                      "Certificates are generated for the courses that you have completed and upgraded from NDSC registration or if you have viewed any webinars.",
                      Colors.grey.shade600,
                      TextAlign.center,
                      FontWeight.w700,
                      ConstantWidget.getScreenPercentSize(context, 1.6)),
                ),
                SizedBox(height: margin),
                DottedBorder(
                  borderType: BorderType.RRect,
                  radius: Radius.circular(0),
                  color: Colors.grey.shade400,
                  padding: EdgeInsets.zero,
                  child: Padding(
                    padding: EdgeInsets.all(margin),
                    child: ConstantWidget.getTextWidget(
                        "Click on 'upgrade' button from my courses page to request a skill india NSDC Certificate.",
                        Colors.grey.shade500,
                        TextAlign.left,
                        FontWeight.w600,
                        ConstantWidget.getScreenPercentSize(context, 2)),
                  ),
                ),
                Container(
                  height: height,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(vertical: margin),
                  decoration: BoxDecoration(
                    color: cellColor,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 8.0,
                        offset: Offset(0, 4),
                      ),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(radius1)),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all((margin / 1.5)),
                        child: Container(
                            height: imgHeight,
                            width: imgHeight,
                            decoration: BoxDecoration(
                                color: cellColor,
                                borderRadius: BorderRadius.all(
                                    Radius.circular((radius1))),
                                image: DecorationImage(
                                  image: new ExactAssetImage(
                                    ConstantData.assetImagesPath +
                                        "course_1.jpg",
                                  ),
                                  fit: BoxFit.cover,
                                ))),
                      ),
                      Expanded(
                          child: Container(
                        padding: EdgeInsets.symmetric(vertical: margin / 1.2),
                        margin: EdgeInsets.only(right: margin / 1.5),
                        child: Column(children: [
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: ConstantWidget.getTextWidget(
                                      S.of(context).digitalMarketingCourse,
                                      textColor,
                                      TextAlign.left,
                                      FontWeight.bold,
                                      ConstantWidget.getScreenPercentSize(
                                          context, 1.7)),
                                ),
                                Container(
                                  height: circleHeight,
                                  width: circleHeight,
                                  decoration: BoxDecoration(
                                      color: primaryColor,
                                      shape: BoxShape.circle),
                                  child: Center(
                                    child: Icon(
                                      Icons.download_rounded,
                                      color: Colors.white,
                                      size: ConstantWidget.getPercentSize(
                                          circleHeight, 75),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              getCourseCell(
                                  Icons.g_translate, "हिंदी", Colors.black),
                              SizedBox(
                                width: (margin * 1.2),
                              ),
                              getCourseCell(
                                  Icons.star, "4.3(2656)", Colors.orange),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: LinearPercentIndicator(
                                  lineHeight:
                                      ConstantWidget.getScreenPercentSize(
                                          context, 2),
                                  center: Text(
                                    "100%",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize:
                                            ConstantWidget.getScreenPercentSize(
                                                context, 1.5),
                                        fontWeight: FontWeight.bold),
                                  ),
                                  percent: 1,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: (margin / 2)),
                                  progressColor: Colors.grey.shade800,
                                  backgroundColor: Colors.grey.shade100,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return UpgradeDialogBox(
                                          title: "Account Created!",
                                          descriptions:
                                              "Your account has\nbeen successfully created!",
                                          text: "Continue",
                                          func: () {},
                                        );
                                      });
                                },
                                child: Container(
                                  margin: EdgeInsets.only(
                                      left: ConstantWidget.getScreenPercentSize(
                                          context, 1)),
                                  padding: EdgeInsets.symmetric(
                                      vertical:
                                          ConstantWidget.getScreenPercentSize(
                                              context, 0.9),
                                      horizontal:
                                          ConstantWidget.getScreenPercentSize(
                                              context, 1.5)),
                                  decoration: BoxDecoration(
                                      color: primaryColor,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(ConstantWidget
                                              .getScreenPercentSize(
                                                  context, 0.5)))),
                                  child: Center(
                                    child: ConstantWidget.getTextWidget(
                                        S.of(context).upgrade,
                                        Colors.white,
                                        TextAlign.left,
                                        FontWeight.w500,
                                        ConstantWidget.getScreenPercentSize(
                                            context, 1.4)),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ]),
                      ))
                    ],
                  ),
                ),
                Container(
                  height: sliderHeight,
                  padding: EdgeInsets.symmetric(horizontal: (margin)),
                  decoration: BoxDecoration(
                      color: cellColor,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 8.0,
                          offset: Offset(0, 4),
                        ),
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(radius1)),
                      image: DecorationImage(
                        image: new ExactAssetImage(
                          ConstantData.assetImagesPath + "certifi.jpg",
                        ),
                        fit: BoxFit.cover,
                      )),
                ),
              ],
            ),
          ),
        ),
        onWillPop: _requestPop);
  }

  getCourseCell(var icon, String s, var color) {
    double size = ConstantWidget.getScreenPercentSize(context, 4);
    double margin = ConstantWidget.getScreenPercentSize(context, 1);

    return Row(
      children: [
        Container(
          height: size,
          width: size,
          decoration: BoxDecoration(
              color: Colors.grey.shade100,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey, width: 0.3)),
          child: Center(
            child: Icon(icon,
                color: color, size: ConstantWidget.getPercentSize(size, 50)),
          ),
        ),
        SizedBox(width: (margin)),
        ConstantWidget.getTextWidget(s, textColor, TextAlign.left,
            FontWeight.w500, ConstantWidget.getScreenPercentSize(context, 1.5)),
      ],
    );
  }

  getTitle(String s) {
    return Container(
      margin: EdgeInsets.only(
          top: ConstantWidget.getScreenPercentSize(context, 1.2)),
      child: ConstantWidget.getTextWidget(s, textColor, TextAlign.start,
          FontWeight.w700, ConstantWidget.getScreenPercentSize(context, 1.8)),
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
