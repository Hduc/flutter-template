import 'package:flutter/material.dart';
import 'package:flutterlearnvern/HomeWidget.dart';
import 'package:flutterlearnvern/utils/ConstantData.dart';
import 'package:flutterlearnvern/utils/ConstantWidget.dart';

import 'ForgotPassword.dart';
import 'SignUpPage.dart';
import 'generated/l10n.dart';
import 'utils/PrefData.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPage createState() {
    return _SignInPage();
  }
}

class _SignInPage extends State<SignInPage> {
  bool isRemember = false;
  TextEditingController textNameController = new TextEditingController();
  TextEditingController textPasswordController = new TextEditingController();

  Future<bool> _requestPop() {
    Navigator.of(context).pop();
    return new Future.value(false);
  }

  @override
  void initState() {
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
          body: Container(
            padding: EdgeInsets.symmetric(
                horizontal: ConstantWidget.getScreenPercentSize(context, 2.5)),
            child: ListView(
              children: [
                ConstantWidget.getTextWidget(
                    S.of(context).gladToMeetnyouAgain,
                    textColor,
                    TextAlign.left,
                    FontWeight.bold,
                    ConstantWidget.getScreenPercentSize(context, 4.2)),
                SizedBox(
                  height: ConstantWidget.getScreenPercentSize(context, 2.5),
                ),
                ConstantWidget.getDefaultTextFiledWidget(
                    context, S.of(context).yourEmail, textNameController),
                ConstantWidget.getPasswordTextFiled(
                    context, S.of(context).password, textPasswordController),
                InkWell(
                  child: ConstantWidget.getTextWidget(
                    S.of(context).forgotPassword,
                    textColor,
                    TextAlign.end,
                    FontWeight.w600,
                    ConstantWidget.getScreenPercentSize(context, 1.8),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ForgotPassword(),
                        ));
                  },
                ),
                SizedBox(
                  height: ConstantWidget.getScreenPercentSize(context, 4),
                ),
                ConstantWidget.getButtonWidget(
                    context, S.of(context).signInNow, Colors.orangeAccent, () {
                  PrefData.setIsSignIn(true);
                  PrefData.setIsIntro(false);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeWidget(0),
                      ));
                }),
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical:
                          ConstantWidget.getScreenPercentSize(context, .5)),
                  child: Center(
                    child: ConstantWidget.getTextWidget(
                        S.of(context).or,
                        textColor,
                        TextAlign.center,
                        FontWeight.w300,
                        ConstantWidget.getScreenPercentSize(context, 1.8)),
                  ),
                ),
                ConstantWidget.getButtonWidget(
                    context, S.of(context).signUpNow, primaryColor, () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUpPage(),
                      ));
                }),
              ],
            ),
          ),
        ),
        onWillPop: _requestPop);
  }
}
