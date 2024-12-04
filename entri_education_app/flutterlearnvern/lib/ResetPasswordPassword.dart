import 'package:flutter/material.dart';
import 'package:flutterlearnvern/utils/ConstantData.dart';
import 'package:flutterlearnvern/utils/ConstantWidget.dart';

import 'SizeConfig.dart';

class ResetPasswordPassword extends StatefulWidget {
  @override
  _ResetPasswordPassword createState() {
    return _ResetPasswordPassword();
  }
}

class _ResetPasswordPassword extends State<ResetPasswordPassword> {
  bool isRemember = false;
  TextEditingController textPasswordController = new TextEditingController();
  TextEditingController textConfirmPasswordController =
      new TextEditingController();

  Future<bool> _requestPop() {
    Navigator.of(context).pop();
    return new Future.value(true);
  }

  @override
  void initState() {
    super.initState();
    ConstantData.setThemePosition();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return WillPopScope(
        child: Scaffold(
          backgroundColor: bgColor,
          appBar: AppBar(
            backgroundColor: bgColor,
            elevation: 0,
            title: Text(""),
            leading: GestureDetector(
              onTap: () {
                _requestPop();
              },
              child: Icon(
                Icons.keyboard_backspace,
                color: textColor,
              ),
            ),
          ),
          body: SafeArea(
            child: Container(
              padding: EdgeInsets.all(
                  ConstantWidget.getScreenPercentSize(context, 2.5)),
              child: ListView(
                children: [
                  ConstantWidget.getTextWidget(
                      "Reset Password",
                      textColor,
                      TextAlign.start,
                      FontWeight.bold,
                      ConstantWidget.getScreenPercentSize(context, 4.2)),
                  SizedBox(
                    height: ConstantWidget.getScreenPercentSize(context, 0.5),
                  ),
                  ConstantWidget.getTextWidget(
                      "Enter a new password",
                      subTextColor,
                      TextAlign.start,
                      FontWeight.w500,
                      ConstantWidget.getScreenPercentSize(context, 2)),
                  SizedBox(
                    height: ConstantWidget.getScreenPercentSize(context, 3),
                  ),
                  ConstantWidget.getPasswordTextFiled(
                      context, "New Password", textPasswordController),
                  ConstantWidget.getDefaultTextFiledWidget(context,
                      "Confirm Password", textConfirmPasswordController),
                  ConstantWidget.getButtonWidget(
                      context, "Confirm", primaryColor, () {
                    Navigator.of(context).pop(true);
                  }),
                ],
              ),
            ),
          ),
        ),
        onWillPop: _requestPop);
  }
}
