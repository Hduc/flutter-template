import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterlearnvern/MyVideoScreen.dart';
import 'package:flutterlearnvern/model/DownloadModel.dart';
import 'package:flutterlearnvern/utils/ConstantData.dart';
import 'package:flutterlearnvern/utils/ConstantWidget.dart';
import 'package:flutterlearnvern/utils/DataFile.dart';

import 'generated/l10n.dart';

class MyDownloadScreen extends StatefulWidget {
  MyDownloadScreen();

  @override
  _MyDownloadScreen createState() {
    return _MyDownloadScreen();
  }
}

class _MyDownloadScreen extends State<MyDownloadScreen> {
  List<DownloadModel> list = DataFile.getDownloadList();

  Future<bool> _requestPop() {
    Navigator.of(context).pop();
    return new Future.value(true);
  }

  @override
  void initState() {
    super.initState();
    ConstantData.setThemePosition();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
          backgroundColor: bgColor,
          appBar: AppBar(
            backgroundColor: cellColor,
            title: ConstantWidget.getTextWidget(
                S.of(context).myDownloads,
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
          ),
          body: SafeArea(
            child: Container(
              child: ListView.builder(
                itemCount: list.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  double height =
                      ConstantWidget.getScreenPercentSize(context, 8.5);
                  double subHeight = ConstantWidget.getPercentSize(height, 60);
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyVideoScreen(),
                          ));
                    },
                    child: Container(
                      margin: EdgeInsets.all(
                          ConstantWidget.getScreenPercentSize(context, 2)),
                      padding: EdgeInsets.symmetric(
                          horizontal: ConstantWidget.getScreenPercentSize(
                              context, 1.5)),
                      height: height,
                      decoration: BoxDecoration(
                        color: cellColor,
                        borderRadius: BorderRadius.all(Radius.circular(
                            ConstantWidget.getPercentSize(height, 15))),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              offset: Offset(0, 1),
                              blurRadius: 2.0)
                        ],
                      ),
                      child: Row(
                        children: [
                          Expanded(
                              child: ConstantWidget.getCustomText(
                                  list[index].name!,
                                  textColor,
                                  1,
                                  TextAlign.start,
                                  FontWeight.w800,
                                  ConstantWidget.getPercentSize(height, 22))),
                          Container(
                            height: subHeight,
                            padding: EdgeInsets.symmetric(
                                horizontal: ConstantWidget.getScreenPercentSize(
                                    context, 1)),
                            margin: EdgeInsets.all(
                                ConstantWidget.getScreenPercentSize(
                                    context, 1)),
                            decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.all(Radius.circular(
                                    ConstantWidget.getPercentSize(
                                        subHeight, 10)))),
                            child: Center(
                              child: ConstantWidget.getTextWidget(
                                  "Download:1/1",
                                  Colors.white,
                                  TextAlign.left,
                                  FontWeight.w400,
                                  ConstantWidget.getPercentSize(subHeight, 30)),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
        onWillPop: _requestPop);
  }
}
