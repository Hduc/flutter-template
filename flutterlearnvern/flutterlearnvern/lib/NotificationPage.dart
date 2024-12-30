import 'package:flutter/material.dart';
import 'package:flutterlearnvern/utils/ConstantData.dart';
import 'package:flutterlearnvern/utils/ConstantWidget.dart';
import 'package:flutterlearnvern/utils/DataFile.dart';

import 'SizeConfig.dart';
import 'generated/l10n.dart';
import 'model/NotificationModel.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPage createState() {
    return _NotificationPage();
  }
}

class _NotificationPage extends State<NotificationPage> {
  List<NotificationModel> orderTypeList = DataFile.getNotificationList();

  Future<bool> _requestPop() {
    Navigator.of(context).pop();
    return new Future.value(true);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ConstantData.setThemePosition();

    changeStatusColor(cellColor);

    setState(() {});
  }

  int colorPosition = -1;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    double margin = ConstantWidget.getScreenPercentSize(context, 3);
    double height = ConstantWidget.getScreenPercentSize(context, 12);
    double cellHeight = ConstantWidget.getPercentSize(height, 60);

    return WillPopScope(
        child: Scaffold(
            backgroundColor: bgColor,
            appBar: AppBar(
              elevation: 0,
              centerTitle: true,
              backgroundColor: cellColor,
              title: ConstantWidget.getAppBarText(S.of(context).notification),
              leading: Builder(
                builder: (BuildContext context) {
                  return IconButton(
                    icon: ConstantWidget.getAppBarIcon(),
                    onPressed: _requestPop,
                  );
                },
              ),
            ),
            body: Container(
              margin: EdgeInsets.symmetric(vertical: margin),
              child: ListView.builder(
                itemCount: orderTypeList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  if (colorPosition == (ConstantData.colorList().length - 1)) {
                    colorPosition = 0;
                  } else {
                    colorPosition++;
                  }

                  var color = ConstantData.colorList()[colorPosition];

                  return Container(
                    margin: EdgeInsets.only(
                        bottom: (margin / 1.5), right: margin, left: margin),
                    padding: EdgeInsets.symmetric(
                        horizontal: (margin / 2), vertical: (margin / 1.5)),
                    decoration: BoxDecoration(
                      color: cellColor,
                      borderRadius: BorderRadius.circular(
                          ConstantWidget.getScreenPercentSize(context, 1.5)),
                      border: Border.all(
                          color: Colors.grey,
                          width: ConstantWidget.getWidthPercentSize(
                              context, 0.08)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: cellHeight,
                          width: cellHeight,
                          margin: EdgeInsets.only(right: (margin / 2)),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: color),
                          padding: EdgeInsets.all(
                              ConstantWidget.getPercentSize(cellHeight, 20)),
                          child: Icon(
                            Icons.notifications_none_outlined,
                            color: Colors.white,
                          ),
                        ),
                        Expanded(
                            child: Column(
                          children: [
                            Row(
                              children: [
                                ConstantWidget.getTextWidget(
                                    orderTypeList[index].title!,
                                    textColor,
                                    TextAlign.start,
                                    FontWeight.w600,
                                    ConstantWidget.getPercentSize(height, 20)),
                                new Spacer(),
                                ConstantWidget.getTextWidget(
                                    orderTypeList[index].time!,
                                    subTextColor,
                                    TextAlign.end,
                                    FontWeight.w300,
                                    ConstantWidget.getPercentSize(height, 12)),
                              ],
                            ),
                            SizedBox(
                              height: (margin / 3),
                            ),
                            ConstantWidget.getCustomText(
                                orderTypeList[index].desc!,
                                Colors.grey,
                                3,
                                TextAlign.start,
                                FontWeight.w400,
                                ConstantWidget.getPercentSize(height, 15)),
                          ],
                        ))
                      ],
                    ),
                  );
                },
              ),
            )),
        onWillPop: _requestPop);
  }
}
// we will assign delivery boy
