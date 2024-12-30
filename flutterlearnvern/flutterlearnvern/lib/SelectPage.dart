import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutterlearnvern/SignInPage.dart';
import 'package:flutterlearnvern/utils/ConstantData.dart';
import 'package:flutterlearnvern/utils/ConstantWidget.dart';

import 'SignUpPage.dart';
import 'SizeConfig.dart';
import 'generated/l10n.dart';

class SelectPage extends StatefulWidget {
  @override
  _SelectPage createState() {
    return _SelectPage();
  }
}

class _SelectPage extends State<SelectPage> {
  Future<bool> _requestPop() {
    Future.delayed(const Duration(milliseconds: 200), () {
      SystemChannels.platform.invokeMethod('SystemNavigator.pop');
    });

    return new Future.value(false);
  }

  final controller = PageController();

  String? s;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    setState(() {});

    return WillPopScope(
        child: Scaffold(
          backgroundColor: bgColor,
          body: SafeArea(
            child: Container(
              margin: EdgeInsets.only(
                  top: ConstantWidget.getScreenPercentSize(context, 2)),
              padding: EdgeInsets.symmetric(
                  horizontal: ConstantWidget.getScreenPercentSize(context, 2)),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      ConstantData.assetImagesPath + "logo_6.png",
                      height: ConstantWidget.getWidthPercentSize(context, 25),
                    ),
                    Expanded(
                      child: Center(
                        child: Image.asset(
                          ConstantData.assetImagesPath + "learning_home.png",
                          height:
                              ConstantWidget.getWidthPercentSize(context, 80),
                        ),
                      ),
                    ),
                    ConstantWidget.getFirstButtonWidget(context,
                        S.of(context).signIn, primaryColor, Colors.white, () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignInPage(),
                          ));
                    }),
                    SizedBox(
                      height: ConstantWidget.getScreenPercentSize(context, 1.5),
                    ),
                    ConstantWidget.getFirstButtonWidget(
                        context,
                        S.of(context).signUp,
                        defBgColor,
                        (defBgColor == "#EEEEEE".toColor())
                            ? Colors.black
                            : Colors.white, () {
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
          ),
        ),
        onWillPop: _requestPop);
  }
}
