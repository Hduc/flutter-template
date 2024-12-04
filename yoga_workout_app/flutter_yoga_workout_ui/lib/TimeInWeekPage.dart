import 'dart:async';



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ColorCategory.dart';
import 'ConstantWidget.dart';
import 'SizeConfig.dart';

import 'generated/l10n.dart';
import 'onlineData/ConstantUrl.dart';


class TimeInWeekPage extends StatefulWidget {

  final int index;
  final ValueChanged<int> valueChange;
  TimeInWeekPage(this.index,this.valueChange);

  @override
  _TimeInWeekPage createState() {
    return _TimeInWeekPage();
  }
}

class _TimeInWeekPage extends State<TimeInWeekPage> {


  int selectTimeInWeek = 0;

  double margin=0;


  Future<bool> _requestPop() {
  Navigator.of(context).pop();

    return new Future.value(false);
  }




  @override
  void initState() {
    super.initState();




    setState(() {
      selectTimeInWeek = widget.index;
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    margin = ConstantWidget.getWidthPercentSize(context, 1.5);

    return GestureDetector(
        child: WillPopScope(
            child: Scaffold(
              backgroundColor: bgDarkWhite,
              appBar: AppBar(
                backgroundColor: bgDarkWhite,
                elevation: 0,
                toolbarHeight: 0,
                title: Text(""),
                leading: InkWell(
                  child: Icon(
                    CupertinoIcons.left_chevron,
                    color: Colors.black,
                  ),
                  onTap: _requestPop,
                ),
              ),
              body: Column(
                children: [
                  ConstantWidget.getLoginAppBar(context,function: (){_requestPop();}),

                  Expanded(child: getIntensively(),flex: 1,),
                ],
              ),
            ),
            onWillPop: _requestPop),
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        });
  }











  Widget getIntensively() {
    SizeConfig().init(context);
    Widget space = SizedBox(
      height: margin,
    );
    return StatefulBuilder(
      builder: (context, setState) => Container(
        height: double.infinity,
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: ConstantWidget.getWidthPercentSize(context, 3)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            space,





            ConstantWidget.getButtonWidget(
                context, S.of(context).done, accentColor, () {

                  widget.valueChange(selectTimeInWeek);
                  Navigator.of(context).pop();

            })

          ],
        ),
      ),
    );
  }


  getTitleWidget(String s) {
    return ConstantWidget.getTextWidget(s, Colors.black, TextAlign.start,
        FontWeight.bold, ConstantWidget.getScreenPercentSize(context, 2.5));
  }

  getSubTitleWidget(String s) {
    return ConstantWidget.getTextWidget(s, Colors.grey, TextAlign.start,
        FontWeight.w300, ConstantWidget.getScreenPercentSize(context, 1.8));
  }
}
