import 'package:flutter/material.dart';

import 'ConstantData.dart';
import 'ConstantWidget.dart';

class UpgradeDialogBox extends StatefulWidget {
  final String? title, descriptions, text;
  final Image? img;
  final Function? func;

  const UpgradeDialogBox(
      {Key? key, this.title, this.descriptions, this.text, this.img, this.func})
      : super(key: key);

  @override
  _UpgradeDialogBoxState createState() => _UpgradeDialogBoxState();
}

class _UpgradeDialogBoxState extends State<UpgradeDialogBox> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
            ConstantWidget.getScreenPercentSize(context, 1)),
      ),
      elevation: 0,
      backgroundColor: cellColor,
      child: contentBox(context),
    );
  }

  contentBox(context) {
    double headerHeight = ConstantWidget.getScreenPercentSize(context, 6.5);
    double radius = ConstantWidget.getScreenPercentSize(context, 1);
    double height = ConstantWidget.getWidthPercentSize(context, 40);
    double width = ConstantWidget.getPercentSize(height, 2);
    double padding = ConstantWidget.getScreenPercentSize(context, 1.5);

    return Stack(
      children: <Widget>[
        Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: headerHeight,
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(radius),
                        topRight: Radius.circular(radius))),
                child: Stack(
                  children: [
                    Center(
                        child: ConstantWidget.getCustomText(
                            "Digital Marketing Course",
                            Colors.white,
                            1,
                            TextAlign.center,
                            FontWeight.w600,
                            ConstantWidget.getPercentSize(headerHeight, 32))),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Align(
                          alignment: Alignment.topRight,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Icon(
                              Icons.close,
                              color: Colors.white,
                              size: ConstantWidget.getPercentSize(
                                  headerHeight, 40),
                            ),
                          )),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: ConstantWidget.getTextWidget(
                    "Benefits of Certificate ",
                    textColor,
                    TextAlign.start,
                    FontWeight.bold,
                    ConstantWidget.getScreenPercentSize(context, 2.2)),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal:
                        ConstantWidget.getScreenPercentSize(context, 3)),
                child: Column(
                  children: [
                    getCell("Approved for summer Training/Internship"),
                    getCell("Approved in Organization's For jobs"),
                    getCell(
                        "Lifetime value and Verification on Skill India Portal"),
                    getCell("Present Certificate at all interviews"),
                    Center(
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: padding),
                        height: height,
                        width: height,
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: primaryColor, width: width),
                            image: DecorationImage(
                              image: new ExactAssetImage(
                                ConstantData.assetImagesPath +
                                    "certificate.jpg",
                              ),
                              fit: BoxFit.cover,
                            )),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(1.0),
                      child: Center(
                        child: ConstantWidget.getTextWidget(
                            "Sample Certificate",
                            textColor,
                            TextAlign.start,
                            FontWeight.w600,
                            ConstantWidget.getScreenPercentSize(context, 2)),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  margin: EdgeInsets.all(
                      ConstantWidget.getScreenPercentSize(context, 2)),
                  padding: EdgeInsets.symmetric(
                      vertical: ConstantWidget.getScreenPercentSize(context, 2),
                      horizontal:
                          ConstantWidget.getScreenPercentSize(context, 1.5)),
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(
                          ConstantWidget.getScreenPercentSize(context, 0.5)))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: ConstantWidget.getCustomText(
                            "Now Available at just ₹499",
                            Colors.white,
                            1,
                            TextAlign.left,
                            FontWeight.w500,
                            ConstantWidget.getScreenPercentSize(context, 1.8)),
                      ),
                      Text(
                        "₹4999",
                        style: TextStyle(
                            decorationColor: Colors.grey.shade700,
                            decorationStyle: TextDecorationStyle.solid,
                            decoration: TextDecoration.lineThrough,
                            fontSize: ConstantWidget.getScreenPercentSize(
                                context, 1.8),
                            color: Colors.grey.shade700,
                            fontFamily: ConstantData.fontsFamily,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  getCell(String s) {
    return Padding(
      padding: EdgeInsets.only(
          bottom: ConstantWidget.getScreenPercentSize(context, 2)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: ConstantWidget.getScreenPercentSize(context, 0.5)),
            child: Icon(
              Icons.brightness_1,
              size: ConstantWidget.getScreenPercentSize(context, 0.9),
              color: subTextColor,
            ),
          ),
          SizedBox(width: ConstantWidget.getWidthPercentSize(context, 2)),
          Expanded(
            child: ConstantWidget.getTextWidget(
                s,
                subTextColor,
                TextAlign.start,
                FontWeight.w600,
                ConstantWidget.getScreenPercentSize(context, 1.7)),
          )
        ],
      ),
    );
  }
}
