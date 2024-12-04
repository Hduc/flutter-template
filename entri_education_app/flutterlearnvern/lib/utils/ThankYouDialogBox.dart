import 'package:flutter/material.dart';
import 'package:flutterlearnvern/HomeWidget.dart';

import 'ConstantData.dart';
import 'ConstantWidget.dart';

class ThankYouDialogBox extends StatefulWidget {
  const ThankYouDialogBox({
    Key? key,
  }) : super(key: key);

  @override
  _ThankYouDialogBoxState createState() => _ThankYouDialogBoxState();
}

class _ThankYouDialogBoxState extends State<ThankYouDialogBox> {
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
    double height = ConstantWidget.getWidthPercentSize(context, 40);

    return Stack(
      children: <Widget>[
        Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: ConstantWidget.getScreenPercentSize(context, 4),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: ConstantWidget.getTextWidget(
                    "Congratulations!\nYou have purchase a new course",
                    textColor,
                    TextAlign.center,
                    FontWeight.w600,
                    ConstantWidget.getScreenPercentSize(context, 2.2)),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal:
                        ConstantWidget.getScreenPercentSize(context, 3)),
                child: Center(
                  child: Image.asset(
                    ConstantData.assetImagesPath + "thankyou.png",
                    height: height,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeWidget(0),
                      ));
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
                  child: Center(
                    child: ConstantWidget.getTextWidget(
                        "Go To Home",
                        Colors.white,
                        TextAlign.left,
                        FontWeight.w500,
                        ConstantWidget.getScreenPercentSize(context, 1.8)),
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
