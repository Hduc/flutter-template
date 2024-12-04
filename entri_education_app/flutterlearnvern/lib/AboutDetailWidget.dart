import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutterlearnvern/utils/ConstantData.dart';
import 'package:flutterlearnvern/utils/ConstantWidget.dart';
import 'package:flutterlearnvern/utils/DataFile.dart';
import 'package:flutter_html/flutter_html.dart';

import 'generated/l10n.dart';
import 'model/AboutModel.dart';

class AboutDetailWidget extends StatefulWidget {
  final String title;
  AboutDetailWidget(this.title);

  @override
  _AboutDetailWidget createState() {
    return _AboutDetailWidget();
  }
}

class _AboutDetailWidget extends State<AboutDetailWidget> {
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
    return WillPopScope(
        child: Scaffold(
          backgroundColor: bgColor,
          appBar: AppBar(
            centerTitle: false,
            elevation: 0,
            backgroundColor: cellColor,
            title: ConstantWidget.getTextWidget(
                widget.title,
                textColor,
                TextAlign.left,
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
              child: Html(
            data: ConstantData.parseHtmlString(DataFile.htmlData),
            style: {
              'html': Style(color: textColor),
            },
          )),

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
