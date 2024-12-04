import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterlearnvern/AboutDetailWidget.dart';
import 'package:flutterlearnvern/utils/ConstantData.dart';
import 'package:flutterlearnvern/utils/ConstantWidget.dart';
import 'package:flutterlearnvern/utils/DataFile.dart';

import 'generated/l10n.dart';
import 'model/AboutModel.dart';

class AboutWidget extends StatefulWidget {
  AboutWidget();

  @override
  _AboutWidget createState() {
    return _AboutWidget();
  }
}

class _AboutWidget extends State<AboutWidget> {
  List<AboutModel> list = DataFile.getAboutList();

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

    double height = ConstantWidget.getScreenPercentSize(context, 6);
    double radius = ConstantWidget.getPercentSize(height, 18);

    return WillPopScope(
        child: Scaffold(
          backgroundColor: bgColor,
          appBar: AppBar(
            elevation: 0,
            centerTitle: false,
            backgroundColor: cellColor,
            title: ConstantWidget.getTextWidget(
                "About Educational",
                textColor,
                TextAlign.start,
                FontWeight.bold,
                ConstantWidget.getScreenPercentSize(context, 2.3)),
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
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: list.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              AboutDetailWidget(list[index].name!),
                        ));
                  },
                  child: Container(
                    height: height,
                    margin: EdgeInsets.symmetric(
                        horizontal: margin, vertical: (margin / 2)),
                    padding: EdgeInsets.symmetric(horizontal: (margin / 2)),
                    decoration: BoxDecoration(
                        color: cellColor,
                        border: Border.all(color: Colors.grey, width: 0.3),
                        borderRadius:
                            BorderRadius.all(Radius.circular(radius))),
                    child: Row(
                      children: [
                        Icon(list[index].icon!,
                            size: ConstantWidget.getPercentSize(height, 45),
                            color: primaryColor),
                        SizedBox(width: (margin / 2)),
                        Expanded(
                          child: ConstantWidget.getCustomText(
                              list[index].name!,
                              textColor,
                              3,
                              TextAlign.start,
                              FontWeight.w700,
                              ConstantWidget.getPercentSize(height, 30)),
                        ),
                        Icon(Icons.navigate_next,
                            size: ConstantWidget.getPercentSize(height, 45),
                            color: primaryColor),
                      ],
                    ),
                  ),
                );
              },
            ),
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

  Future<bool> _requestPop() {
    Navigator.of(context).pop();
    return new Future.value(true);
  }
}
