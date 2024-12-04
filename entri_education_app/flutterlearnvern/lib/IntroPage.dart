import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterlearnvern/utils/ConstantData.dart';
import 'package:flutterlearnvern/utils/ConstantWidget.dart';
import 'package:flutterlearnvern/utils/DataFile.dart';
import 'package:flutterlearnvern/utils/PrefData.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';


import 'SizeConfig.dart';
import 'generated/l10n.dart';
import 'main_project.dart';
import 'model/IntroModel.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPage createState() {
    return _IntroPage();
  }
}

class _IntroPage extends State<IntroPage> {
  int _position = 0;

  Future<bool> _requestPop() {
    Future.delayed(const Duration(milliseconds: 200), () {
      SystemChannels.platform.invokeMethod('SystemNavigator.pop');
    });

    return new Future.value(false);
  }

  final controller = PageController();

  List<IntroModel>? introModelList;

  String? s;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    introModelList = DataFile.getIntroModel(context);

    double defMargin = ConstantWidget.getScreenPercentSize(context, 2);
    double mainHeight = ConstantWidget.getWidthPercentSize(context, 60);
    double progressHeight = ConstantWidget.getScreenPercentSize(context, 8.5);
    double stepSize = ConstantWidget.getPercentSize(progressHeight, 3);
    setState(() {});

    if (s == null) {
      s = S.of(context).continueText;
    }

    return WillPopScope(
        child: Scaffold(

          backgroundColor: cellColor,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: cellColor,
            title: ConstantWidget.getTextWidget(
                " ",
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

            actions: [

              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: (){
                    if (_position == 2) {
                      PrefData.setIsIntro(false);
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MainProject()));
                    } else {
                      _position++;
                      controller.jumpToPage(_position);
                      setState(() {});
                    }

                  },
                  child: Container(
                    margin: EdgeInsets.all(
                        ConstantWidget.getScreenPercentSize(context, 1)),
                    padding: EdgeInsets.symmetric(
                        vertical: ConstantWidget.getScreenPercentSize(context, 1),
                        horizontal:
                        ConstantWidget.getScreenPercentSize(context, 1.5)),

                    child:   Center(
                      child: ConstantWidget.getTextWidget(
                          "Skip",
                          Colors.black,
                          TextAlign.left,
                          FontWeight.w600,
                          ConstantWidget.getScreenPercentSize(context, 2)),
                    ),
                  ),
                ),
              ),

            ],
          ),


          body: SafeArea(
            child: Column(
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      Container(
                        height: double.infinity,
                        child: PageView.builder(
                          controller: controller,
                          itemBuilder: (context, position) {
                            return Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: defMargin * 2,
                                  ),
                                  Container(
                                    height: mainHeight,
                                    width: mainHeight,
                                    margin: EdgeInsets.all(defMargin),
                                    child: Container(
                                      decoration: BoxDecoration(),

                                      child: Image.asset(
                                          ConstantData.assetImagesPath +
                                              introModelList![position].image!),
                                    ),
                                  ),

                                  Padding(
                                    padding:
                                    EdgeInsets.all((defMargin / 2)),
                                    child: ConstantWidget.getCustomText(
                                        introModelList![position].name!,
                                        Colors.black,
                                        2,
                                        TextAlign.center,
                                        FontWeight.bold,
                                        ConstantWidget.getScreenPercentSize(
                                            context, 3)),
                                  ),

                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: (defMargin / 2)),
                                    child: ConstantWidget.getCustomText(
                                        introModelList![position].desc!,
                                        Colors.grey,
                                        4,
                                        TextAlign.center,
                                        FontWeight.w500,
                                        ConstantWidget.getScreenPercentSize(
                                            context, 2.2)),
                                  ),
                                ],
                              ),
                            );
                          },
                          itemCount: introModelList!.length,
                          onPageChanged: _onPageViewChange,
                        ),
                      ),
                    ],
                  ),
                ),

                InkWell(
                  onTap: (){
                          if (_position == 2) {
                            PrefData.setIsIntro(false);
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MainProject()));
                          } else {
                            _position++;
                            controller.jumpToPage(_position);
                            setState(() {});
                          }


                  },
                  child: Container(
                    height: progressHeight,
                    width: progressHeight,
                    margin: EdgeInsets.all(defMargin*1.2),
                    child: Stack(
                      children: [
                        Container(
                          height: double.infinity,
                          width: double.infinity,
                          child: CircularStepProgressIndicator(
                            totalSteps: introModelList!.length,
                            currentStep: _position+1,
                            stepSize: stepSize,
                            selectedColor: primaryColor,
                            unselectedColor: Colors.grey.shade300,
                            padding: 0,
                            width: progressHeight,
                            height: progressHeight,
                            selectedStepSize: stepSize,
                            roundedCap: (_, __) => true,
                          ),
                        ),
                        Container(
                            height: double.infinity,
                            width: double.infinity,
                            margin: EdgeInsets.all(defMargin/2),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(colors: [
                                primaryColor,
                                primaryColor.withOpacity(0.8)
                              ]),
                            ),
                            child: Center(
                                child: Icon(
                                    CupertinoIcons.arrow_right_to_line_alt,
                                    color: Colors.white,
                                    size: ConstantWidget.getPercentSize(
                                        progressHeight, 40))))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        onWillPop: _requestPop);
  }

  Widget getButtonWidget(
      BuildContext context, String s, var color, Function function) {
    double height = ConstantWidget.getScreenPercentSize(context, 8.5);
    double radius = ConstantWidget.getPercentSize(height, 50);
    double fontSize = ConstantWidget.getPercentSize(height, 30);

    return InkWell(
      child: Container(
        height: height,
        margin: EdgeInsets.symmetric(
            vertical: ConstantWidget.getScreenPercentSize(context, 1.2)),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(
            Radius.circular(radius),
          ),
        ),
        child: Center(
            child: ConstantWidget.getDefaultTextWidget(
                s,
                TextAlign.center,
                FontWeight.w500,
                fontSize,
                (color == primaryColor) ? Colors.white : Colors.black)),
      ),
      onTap: () {
        function();
      },
    );
  }

  _onPageViewChange(int page) {
    _position = page;


    if (_position == 2) {
      s = "Get Started";
    } else {
      s = S.of(context).continueText;
    }
    setState(() {});
  }
}
