import 'package:flutter/material.dart';
import 'package:flutter_courier_delivery/util/ConstantWidget.dart';
import 'package:flutter_courier_delivery/util/ConstantData.dart';
import 'package:flutter_courier_delivery/util/PrefData.dart';
import 'package:flutter_courier_delivery/util/SizeConfig.dart';

import 'generated/l10n.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPassword createState() {
    return _ForgotPassword();
  }
}

class _ForgotPassword extends State<ForgotPassword> {
  bool isRemember = false;
  int themeMode = 0;
  TextEditingController textEmailController = new TextEditingController();
  TextEditingController textPasswordController = new TextEditingController();

  Future<bool> _requestPop() {
    Navigator.of(context).pop();
    return new Future.value(true);
  }

  @override
  void initState() {
    super.initState();

    setTheme();
  }

  setTheme() async {
    themeMode = await PrefData.getThemeMode();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    ConstantData.setThemePosition();
    double height = ConstantWidget.getScreenPercentSize(context, 18);

    return WillPopScope(
        child: Scaffold(
          backgroundColor: ConstantData.bgColor,
          appBar: AppBar(
            title: Text(""),
            leading: Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: ConstantWidget.getAppBarIcon1(),
                  onPressed: _requestPop,
                );
              },
            ),
          ),
          body: SafeArea(
            child: Container(
              padding: EdgeInsets.all(
                  ConstantWidget.getScreenPercentSize(context, 2.5)),
              child: ListView(
                children: [
                  SizedBox(
                    height: ConstantWidget.getScreenPercentSize(context, 2),
                  ),
                  Center(
                    child: Image.asset(
                      ConstantData.assetsPath + "logo.png",
                      height: height,
                    ),
                  ),
                  SizedBox(
                    height: ConstantWidget.getScreenPercentSize(context, 2),
                  ),
                  ConstantWidget.getTextWidget(
                      S.of(context).forgotPassword,
                      ConstantData.mainTextColor,
                      TextAlign.center,
                      FontWeight.bold,
                      ConstantWidget.getScreenPercentSize(context, 4.2)),
                  SizedBox(
                    height: ConstantWidget.getScreenPercentSize(context, 3),
                  ),
                  ConstantWidget.getDefaultTextFiledWidget(
                      context, S.of(context).yourEmail, textEmailController),
                  ConstantWidget.getButtonWidget(
                      context, S.of(context).send, ConstantData.primaryColor,
                      () {
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
