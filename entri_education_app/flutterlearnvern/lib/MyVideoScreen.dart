import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterlearnvern/VideoPlayScreen.dart';
import 'package:flutterlearnvern/utils/ConstantData.dart';
import 'package:flutterlearnvern/utils/ConstantWidget.dart';
import 'package:flutterlearnvern/utils/DataFile.dart';

import 'generated/l10n.dart';
import 'model/DescModel.dart';

class MyVideoScreen extends StatefulWidget {
  MyVideoScreen();

  @override
  _MyVideoScreen createState() {
    return _MyVideoScreen();
  }
}

class _MyVideoScreen extends State<MyVideoScreen> {
  List<DescModel> descModelList = DataFile.getDescList();

  Future<bool> _requestPop() {
    Navigator.of(context).pop();
    return new Future.value(true);
  }

  @override
  void initState() {
    ConstantData.setThemePosition();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double margin = ConstantWidget.getScreenPercentSize(context, 2);
    double height = ConstantWidget.getScreenPercentSize(context, 5.9);
    double padding = ConstantWidget.getWidthPercentSize(context, 1.5);
    var size = ConstantWidget.getScreenPercentSize(context, 4);
    return WillPopScope(
        child: Scaffold(
          backgroundColor: bgColor,
          appBar: AppBar(
            backgroundColor: cellColor,
            title: ConstantWidget.getTextWidget(
                S.of(context).myVideo,
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
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: descModelList.length,
                scrollDirection: Axis.vertical,
                padding: EdgeInsets.all(margin),
                itemBuilder: (context, index) {
                  String image;

                  if (descModelList[index].isExpand!) {
                    image = ConstantData.assetImagesPath + "up-arrow.png";
                  } else {
                    image = ConstantData.assetImagesPath +
                        "arrow-down-sign-to-navigate.png";
                  }
                  return Container(
                    margin: EdgeInsets.symmetric(
                        vertical:
                            ConstantWidget.getScreenPercentSize(context, 1)),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              if (descModelList[index].isExpand!) {
                                descModelList[index].isExpand = false;
                              } else {
                                descModelList[index].isExpand = true;
                              }
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: padding),
                            height: height,
                            decoration: BoxDecoration(
                                color: cellColor,
                                borderRadius: BorderRadius.all(Radius.circular(
                                    ConstantWidget.getPercentSize(
                                        height, 12)))),
                            child: Row(
                              children: [
                                Expanded(
                                    child: ConstantWidget.getCustomText(
                                        descModelList[index].name!,
                                        textColor,
                                        1,
                                        TextAlign.start,
                                        FontWeight.bold,
                                        ConstantWidget.getPercentSize(
                                            height, 32))),
                                Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal:
                                            ConstantWidget.getWidthPercentSize(
                                                context, 1.5)),
                                    child: Image.asset(
                                      image,
                                      color: textColor,
                                      height: ConstantWidget.getPercentSize(
                                          height, 35),
                                      width: ConstantWidget.getPercentSize(
                                          height, 35),
                                    ))
                              ],
                            ),
                          ),
                        ),
                        Visibility(
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: (margin * 1.2)),
                              child: Column(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                VideoPlayScreen(),
                                          ));
                                    },
                                    child: Row(
                                      children: [
                                        SizedBox(width: padding),
                                        Expanded(
                                          child: ConstantWidget.getTextWidget(
                                              descModelList[index].name!,
                                              textColor,
                                              TextAlign.start,
                                              FontWeight.w500,
                                              ConstantWidget.getPercentSize(
                                                  height, 32)),
                                        ),
                                        Icon(
                                          Icons.play_circle_fill,
                                          size: size,
                                          color: textColor,
                                        ),
                                        SizedBox(width: 5),
                                        Icon(
                                          Icons.delete_forever_outlined,
                                          size: size,
                                          color: Colors.redAccent,
                                        ),
                                        SizedBox(width: padding),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: padding,
                                  ),
                                  Container(
                                    height: 0.3,
                                    color: textColor,
                                  )
                                ],
                              ),
                            ),
                            visible: descModelList[index].isExpand!)
                      ],
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
