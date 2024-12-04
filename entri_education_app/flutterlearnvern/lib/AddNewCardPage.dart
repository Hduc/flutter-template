import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterlearnvern/generated/l10n.dart';
import 'package:flutterlearnvern/utils/ConstantData.dart';
import 'package:flutterlearnvern/utils/ConstantWidget.dart';
import 'package:flutterlearnvern/utils/DataFile.dart';
import 'package:flutterlearnvern/utils/ThankYouDialogBox.dart';

import 'SizeConfig.dart';

class AddNewCardPage extends StatefulWidget {
  @override
  _AddNewCardPage createState() {
    return _AddNewCardPage();
  }
}

class _AddNewCardPage extends State<AddNewCardPage> {
  TextEditingController cardNumberController = new TextEditingController();
  TextEditingController cardHolderNameController = new TextEditingController();
  TextEditingController expDateController = new TextEditingController();
  TextEditingController cvvController = new TextEditingController();

  @override
  void initState() {
    super.initState();

    changeStatusColor(bgColor);

    cardNumberController.text = "2342 22** **** **00";
    cardHolderNameController.text = "Claudla T.Reyes";
    cvvController.text = "2653***";
    expDateController.text = "06/23";

    setState(() {});
  }

  Future<bool> _requestPop() {
    Navigator.of(context).pop();
    return new Future.value(true);
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double leftMargin = MediaQuery.of(context).size.width * 0.05;
    double editTextHeight = MediaQuery.of(context).size.height * 0.06;
    double circle = ConstantWidget.getScreenPercentSize(context, 10);
    double subSize = ConstantWidget.getPercentSize(circle, 40);
    double bottomHeight = ConstantWidget.getScreenPercentSize(context, 7.6);

    return WillPopScope(
        child: Scaffold(
          backgroundColor: bgColor,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: cellColor,
            title: ConstantWidget.getTextWidget(
                "Confirm Payment",
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
          body: Container(
            margin: EdgeInsets.only(
                left: leftMargin, right: leftMargin, top: leftMargin),
            child: Column(
              children: [
                Expanded(
                  child: ListView(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 12, top: 12),
                        height: editTextHeight,
                        child: TextField(
                          maxLines: 1,
                          controller: cardNumberController,
                          style: TextStyle(
                              fontFamily: ConstantData.fontsFamily,
                              color: textColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 16),
                          decoration: getDecoration(S.of(context).cardNumber),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                      bottom: 12, top: 12, right: 4),
                                  height: editTextHeight,
                                  child: TextField(
                                    maxLines: 1,
                                    controller: expDateController,
                                    style: TextStyle(
                                        fontFamily: ConstantData.fontsFamily,
                                        color: textColor,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16),
                                    decoration: getDecoration(
                                        S.of(context).expDateHint),
                                  ),
                                ),
                              ],
                            ),
                            flex: 1,
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                      bottom: 12, left: 4, top: 12),
                                  height: editTextHeight,
                                  child: TextField(
                                    maxLines: 1,
                                    controller: cvvController,
                                    style: TextStyle(
                                        fontFamily: ConstantData.fontsFamily,
                                        color: textColor,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16),
                                    decoration:
                                        getDecoration(S.of(context).cvvHint),
                                  ),
                                ),
                              ],
                            ),
                            flex: 1,
                          )
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 12, top: 12),
                        height: editTextHeight,
                        child: TextField(
                          maxLines: 1,
                          controller: cardHolderNameController,
                          style: TextStyle(
                              fontFamily: ConstantData.fontsFamily,
                              color: textColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 16),
                          decoration:
                              getDecoration(S.of(context).cardHolderName),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(15),
                        child: ConstantWidget.getTextWidget(
                            "Pay via",
                            textColor,
                            TextAlign.center,
                            FontWeight.w600,
                            ConstantWidget.getScreenPercentSize(context, 2)),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: circle,
                            width: circle,
                            decoration: BoxDecoration(
                                color: cellColor,
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.grey, width: 0.3)),
                            child: Center(
                                child: Image.asset(
                              ConstantData.assetImagesPath + "paypal.png",
                              height: subSize,
                            )),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: ConstantWidget.getScreenPercentSize(
                                    context, 2)),
                            child: ConstantWidget.getTextWidget(
                                "Or",
                                textColor,
                                TextAlign.center,
                                FontWeight.w600,
                                ConstantWidget.getScreenPercentSize(
                                    context, 2)),
                          ),
                          Container(
                            height: circle,
                            width: circle,
                            decoration: BoxDecoration(
                                color: cellColor,
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.grey, width: 0.3)),
                            child: Center(
                                child: Image.asset(
                              ConstantData.assetImagesPath + "razorpay.png",
                              height: (subSize * 2),
                            )),
                          ),
                        ],
                      )
                    ],
                  ),
                  flex: 1,
                ),
                Container(
                  margin: EdgeInsets.only(
                      bottom: ConstantWidget.getPercentSize(bottomHeight, 15)),
                  padding: EdgeInsets.symmetric(
                      horizontal:
                          ConstantWidget.getPercentSize(bottomHeight, 15)),
                  child: getRoWCell("Total", "\$9.90"),
                ),
                ConstantWidget.getBottomText(context, "Done", () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return ThankYouDialogBox();
                      });
                }),
              ],
            ),
          ),
        ),
        onWillPop: _requestPop);
  }

  getRoWCell(String s, String s1) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: ConstantWidget.getCustomText(s, textColor, 1, TextAlign.start,
              FontWeight.w800, ConstantData.font22Px),
          flex: 1,
        ),
        Expanded(
          child: ConstantWidget.getCustomText(s1, textColor, 1, TextAlign.end,
              FontWeight.w800, ConstantData.font22Px),
          flex: 1,
        )
      ],
    );
  }

  getDecoration(String s) {
    double radius = ConstantWidget.getScreenPercentSize(context, 1.3);
    return InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: BorderSide(color: Colors.grey),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: BorderSide(color: Colors.grey),
        ),
        disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(radius)),
        // labelStyle: TextStyle(color: Colors.grey),
        //
        // labelText: s,
        label: Container(
          // margin: EdgeInsets.only(left: radius),
          child: ConstantWidget.getTextWidget(s.toUpperCase(), subTextColor,
              TextAlign.start, FontWeight.w600, ConstantData.font18Px),
        )
        // hintText: 'Full Name',
        );
  }
}
