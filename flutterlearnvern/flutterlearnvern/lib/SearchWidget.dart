import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterlearnvern/utils/ConstantData.dart';
import 'package:flutterlearnvern/utils/ConstantWidget.dart';
import 'package:flutterlearnvern/utils/DataFile.dart';

import 'CourseScreen.dart';
import 'generated/l10n.dart';

class SearchWidget extends StatefulWidget {
  @override
  _SearchWidget createState() {
    return _SearchWidget();
  }
}

class _SearchWidget extends State<SearchWidget> {
  List<String> list = DataFile.getSearchTopicList();

  TextEditingController? textEditingController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    changeStatusColor(primaryColor);
    setState(() {});
    ConstantData.setThemePosition();
  }

  @override
  Widget build(BuildContext context) {
    double margin = ConstantWidget.getScreenPercentSize(context, 2);
    double height = ConstantWidget.getScreenPercentSize(context, 18);
    double searchHeight = ConstantWidget.getPercentSize(height, 38);
    double radius = ConstantWidget.getPercentSize(height, 18);

    return WillPopScope(
        child: Scaffold(
          backgroundColor: bgColor,
          body: SafeArea(
            child: Container(
              child: Column(
                children: [
                  Container(
                    height: height,
                    decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(radius),
                            bottomRight: Radius.circular(radius))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                              margin: EdgeInsets.all(
                                  ConstantWidget.getScreenPercentSize(
                                      context, 2)),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: InkWell(
                                  onTap: () {
                                    _requestPop();
                                  },
                                  child: Icon(
                                    Icons.keyboard_backspace_outlined,
                                    color: Colors.white,
                                  ),
                                ),
                              )),
                          flex: 1,
                        ),
                        Container(
                          margin: EdgeInsets.all(
                              ConstantWidget.getScreenPercentSize(context, 2)),
                          padding: EdgeInsets.symmetric(
                              horizontal: ConstantWidget.getScreenPercentSize(
                                  context, 1)),
                          height: searchHeight,
                          decoration: BoxDecoration(
                              color: cellColor,
                              borderRadius: BorderRadius.all(Radius.circular(
                                  ConstantWidget.getPercentSize(
                                      searchHeight, 18)))),
                          child: Row(
                            children: [
                              Icon(CupertinoIcons.search,
                                  color: textColor,
                                  size: ConstantWidget.getPercentSize(
                                      (searchHeight / 1.3), 50)),
                              Expanded(
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => SearchWidget(),
                                        ));
                                  },
                                  child: Container(
                                    margin: EdgeInsets.symmetric(
                                        horizontal: (margin / 2)),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: TextField(
                                        style: TextStyle(
                                            color: textColor,
                                            fontSize:
                                                ConstantWidget.getPercentSize(
                                                    searchHeight, 30)),
                                        controller: textEditingController,
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintStyle: TextStyle(
                                                color: Colors.grey,
                                                fontSize: ConstantWidget
                                                    .getPercentSize(
                                                        searchHeight, 30)),
                                            hintText: S
                                                .of(context)
                                                .searchCoursesWebinars),
                                      ),
                                    ),
                                  ),
                                ),
                                flex: 1,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(margin),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ConstantWidget.getTextWidget(
                              "Top Searches",
                              primaryColor,
                              TextAlign.left,
                              FontWeight.bold,
                              ConstantWidget.getScreenPercentSize(
                                  context, 2.2)),
                          SizedBox(
                            height: margin,
                          ),
                          Expanded(
                            child: ListView.builder(
                              itemCount: list.length,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => CourseScreen(
                                              DataFile.getRecommendedList()[0]),
                                        ));
                                  },
                                  child: Container(
                                    margin:
                                        EdgeInsets.only(bottom: (margin * 1.5)),
                                    child: Row(
                                      children: [
                                        Icon(CupertinoIcons.search,
                                            color: textColor,
                                            size: ConstantWidget.getPercentSize(
                                                (searchHeight / 1.3), 60)),
                                        SizedBox(width: 8),
                                        ConstantWidget.getTextWidget(
                                            list[index],
                                            textColor,
                                            TextAlign.left,
                                            FontWeight.w600,
                                            ConstantWidget.getScreenPercentSize(
                                                context, 2)),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
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
          ConstantWidget.getTextWidget(
              s,
              Colors.black,
              TextAlign.left,
              FontWeight.w500,
              ConstantWidget.getScreenPercentSize(context, 1.5)),
        ],
      ),
    );
  }

  Future<bool> _requestPop() {
    Navigator.of(context).pop();
    return new Future.value(true);
  }
}
