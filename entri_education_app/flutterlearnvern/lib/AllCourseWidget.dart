import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterlearnvern/utils/ConstantData.dart';
import 'package:flutterlearnvern/utils/ConstantWidget.dart';
import 'package:flutterlearnvern/utils/DataFile.dart';

import 'generated/l10n.dart';
import 'model/CourseModel.dart';

class AllCourseWidget extends StatefulWidget {
  final ValueChanged<int> onChanged;

  AllCourseWidget(this.onChanged);

  @override
  _AllCourseWidget createState() {
    return _AllCourseWidget();
  }
}

class _AllCourseWidget extends State<AllCourseWidget> {
  List<CourseModel> list = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ConstantData.setThemePosition();

    list = DataFile.getFeaturedList();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    double margin = ConstantWidget.getScreenPercentSize(context, 2);
    double cellHeight = ConstantWidget.getWidthPercentSize(context, 34);
    double imgSize = ConstantWidget.getPercentSize(cellHeight, 85);
    double radius = ConstantWidget.getPercentSize(cellHeight, 8);
    return WillPopScope(
        child: Scaffold(
          backgroundColor: bgColor,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: cellColor,
            title: ConstantWidget.getTextWidget(
                "All Courses",
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
            // child: mainWidget(),

            child: ListView.builder(
              itemCount: list.length,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                CourseModel model = list[index];

                return InkWell(

                  child: Padding(
                    padding: EdgeInsets.only(top: margin),
                    child: Container(
                      height: cellHeight,
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(
                        horizontal: margin,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: (margin / 1.7),
                      ),
                      decoration: BoxDecoration(
                          color: cellColor,
                          borderRadius:
                              BorderRadius.all(Radius.circular(radius)),
                          border: Border.all(color: Colors.grey, width: 0.3)),
                      child: Row(
                        children: [
                          Container(
                            height: imgSize,
                            width: imgSize,
                            child: Stack(
                              children: [
                                Container(
                                  height: double.infinity,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(radius)),
                                      image: DecorationImage(
                                        image: new ExactAssetImage(
                                          ConstantData.assetImagesPath +
                                              model.image!,
                                        ),
                                        fit: BoxFit.cover,
                                      )),
                                ),
                                Visibility(
                                  visible: model.isFree!,
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal:
                                            ConstantWidget.getPercentSize(
                                                imgSize, 6),
                                        vertical: ConstantWidget.getPercentSize(
                                            imgSize, 2)),
                                    decoration: BoxDecoration(
                                      color: Colors.amber,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(radius),
                                          bottomRight: Radius.circular(radius)),
                                    ),
                                    child: ConstantWidget.getTextWidget(
                                        S.of(context).free.toUpperCase(),
                                        Colors.black,
                                        TextAlign.left,
                                        FontWeight.bold,
                                        ConstantWidget.getPercentSize(
                                            imgSize, 11)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: (margin / 1.4),
                                  horizontal: (margin / 2)),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: ConstantWidget.getCustomText(
                                          model.name!,
                                          textColor,
                                          2,
                                          TextAlign.left,
                                          FontWeight.bold,
                                          ConstantWidget.getPercentSize(
                                              cellHeight, 10)),
                                    ),
                                    ConstantWidget.getTextWidget(
                                        model.subTitle!,
                                        textColor,
                                        TextAlign.left,
                                        FontWeight.w400,
                                        ConstantWidget.getPercentSize(
                                            imgSize, 12)),
                                    SizedBox(
                                      height: ConstantWidget.getPercentSize(
                                          cellHeight, 7),
                                    ),
                                    Row(
                                      children: [
                                        getCourseCell(Icons.g_translate,
                                            "हिंदी", Colors.black),
                                        getCourseCell(Icons.star, "4.3(2656)",
                                            Colors.orange),
                                      ],
                                    ),
                                    SizedBox(
                                      height: ConstantWidget.getPercentSize(
                                          cellHeight, 5),
                                    ),
                                  ]),
                            ),
                          )
                        ],
                      ),
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

  getCourseCell(var icon, String s, var color) {
    double size = ConstantWidget.getScreenPercentSize(context, 4);
    double margin = ConstantWidget.getScreenPercentSize(context, 1);

    return Expanded(
      child: Row(
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
          Expanded(
            child: ConstantWidget.getCustomText(
                s,
                textColor,
                1,
                TextAlign.left,
                FontWeight.w500,
                ConstantWidget.getScreenPercentSize(context, 1.5)),
          ),
        ],
      ),
    );
  }

  Future<bool> _requestPop() {
    widget.onChanged(1);

    return new Future.value(true);
  }
}
