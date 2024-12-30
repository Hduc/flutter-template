import 'package:flutter/material.dart';
import 'package:flutterlearnvern/utils/ConstantData.dart';
import 'package:flutterlearnvern/utils/ConstantWidget.dart';

import 'SizeConfig.dart';
import 'generated/l10n.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPassword createState() {
    return _ForgotPassword();
  }
}

class _ForgotPassword extends State<ForgotPassword> {
  bool isRemember = false;
  TextEditingController textEmailController = new TextEditingController();
  TextEditingController textPasswordController = new TextEditingController();

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
                      S.of(context).forgotPassword,
                      textColor,
                      TextAlign.start,
                      FontWeight.bold,
                      ConstantWidget.getScreenPercentSize(context, 4.2)),
                  SizedBox(
                    height: ConstantWidget.getScreenPercentSize(context, 0.5),
                  ),
                  ConstantWidget.getTextWidget(
                      S
                          .of(context)
                          .weNeedYourRegistrationEmailToSendYouPasswordReset,
                      subTextColor,
                      TextAlign.start,
                      FontWeight.w500,
                      ConstantWidget.getScreenPercentSize(context, 2)),
                  SizedBox(
                    height: ConstantWidget.getScreenPercentSize(context, 3),
                  ),
                  ConstantWidget.getDefaultTextFiledWidget(
                      context, S.of(context).yourEmail, textEmailController),
                  ConstantWidget.getButtonWidget(
                      context, S.of(context).send, primaryColor, () {
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
