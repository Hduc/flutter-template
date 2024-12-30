import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutterlearnvern/utils/ConstantData.dart';
import 'package:flutterlearnvern/utils/ConstantWidget.dart';
import 'package:flutterlearnvern/utils/PrefData.dart';

import 'SelectPage.dart';
import 'SizeConfig.dart';
import 'generated/l10n.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPage createState() {
    return _FirstPage();
  }
}

class _FirstPage extends State<FirstPage> {

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
          body: SafeArea(
            child: Container(


              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [


                    SizedBox(
                      height: ConstantWidget.getScreenPercentSize(context, 5),),

                    Image.asset(
                      ConstantData.assetImagesPath + "main_screen_icon.png",
                      height: ConstantWidget.getWidthPercentSize(context, 60),
                    ),
                    SizedBox(
                      height: ConstantWidget.getScreenPercentSize(context, 5),),
                    ConstantWidget.getTextWidget(
                        S.of(context).appname, primaryColor,
                        TextAlign.center, FontWeight.bold,
                        ConstantWidget.getWidthPercentSize(context, 7)),
                    SizedBox(
                      height: ConstantWidget.getScreenPercentSize(context, 5),),

                    InkWell(
                      onTap: () {
                        PrefData.setIsIntro(false);
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SelectPage()));
                      },
                      child: Container(
                        width: ConstantWidget.getWidthPercentSize(context, 20),
                        height: ConstantWidget.getScreenPercentSize(context, 7),

                        decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.all(Radius.circular(
                                ConstantWidget.getScreenPercentSize(
                                    context, 15)))
                        ),

                        child: Center(
                          child: Icon(CupertinoIcons.arrow_right, color: Colors
                              .white,),
                        ),
                      ),
                    )
                  ],
                ),
              ),


            ),
          ),
        ),
        onWillPop: _requestPop);
  }


}