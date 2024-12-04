import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:workout/ColorCategory.dart';
import 'package:workout/Constants.dart';
import 'package:workout/SignInPage.dart';
import 'ConstantWidget.dart';
import 'DataFile.dart';
import 'IntroModel.dart';
import 'PrefData.dart';
import 'SizeConfig.dart';

class GuideIntroPage extends StatefulWidget {
  @override
  _GuideIntroPage createState() {
    return _GuideIntroPage();
  }
}

class _GuideIntroPage extends State<GuideIntroPage> {
  int _position = 0;

  Future<bool> _requestPop() {
    if (Platform.isIOS) {
      exit(0);
    } else {
      SystemNavigator.pop();
    }
    return new Future.value(false);
  }

  final controller = PageController();

  List<IntroModel> introModelList = [];

  void skip() {
    PrefData.setIsIntro(false);
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SignInPage()));
  }

  Color? color= Colors.white;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    introModelList = DataFile.getIntroModel(context);

    double firstSize = ConstantWidget.getScreenPercentSize(context, 55);
    double remainSize =
        ConstantWidget.getScreenPercentSize(context, 100) - firstSize;
    double defMargin = ConstantWidget.getScreenPercentSize(context, 2);
    setState(() {});

    return WillPopScope(
        child: Scaffold(
          backgroundColor: introModelList[_position].color!,
          resizeToAvoidBottomInset: false,
          appBar: getNoneAppBar(context, color: introModelList[_position].color!),
          body: SafeArea(

            child: Column(
              children: [
                Expanded(
                  child: Container(
                    child: PageView.builder(
                      controller: controller,
                      itemBuilder: (context, position) {
                        return Container(
                          child: Column(
                            children: [ SizedBox(height: ConstantWidget.getScreenPercentSize(context, 2),),
                              Padding(
                                padding: EdgeInsets.all(
                                  defMargin),
                                child: ConstantWidget.getCustomText(
                                    introModelList[position].name!,
                                    Colors.black,
                                    2,
                                    TextAlign.center,
                                    FontWeight.w700,
                                    ConstantWidget.getPercentSize(
                                        remainSize, 7)),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(

                                  child: Stack(
                                    children: [

                                      Container(
                                        child: Align(
                                          alignment: Alignment.bottomCenter,
                                          child: SvgPicture.asset(
                                            Constants.assetsImagePath +  introModelList[position].svg!,
                                          ),
                                        ),
                                      ),

                                      Center(
                                        child: Container(
                                          height: firstSize,
                                          width:ConstantWidget.getWidthPercentSize(context, 90),
                                          child: Image.asset(
                                            // "assets/images/${introModelList[position].image!}",
                                            Constants.assetsImagePath +
                                                introModelList[position].image!,
                                            fit: BoxFit.scaleDown,
                                            errorBuilder: (context, error, stackTrace) {
                                              print("imageError------------${error}");
                                              return Container();
                                            },
                                          ),
                                        ),
                                      ),


                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: ConstantWidget.getScreenPercentSize(context, 2),),

                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: defMargin),
                                child: ConstantWidget.getCustomTextFontWithSpace(
                                    introModelList[position].desc!,
                                    textColor,
                                    5,
                                    TextAlign.center,
                                    FontWeight.w400,
                                    ConstantWidget.getScreenPercentSize(
                                        context, 2),
                                    Constants.fontsFamily),
                              ),

                              SizedBox(height: ConstantWidget.getScreenPercentSize(context, 2),)
                            ],
                          ),
                        );
                      },
                      itemCount: introModelList.length,
                      onPageChanged: _onPageViewChange,
                    ),
                  ),
                ),

                // Container(
                //   height: 0.3,
                //   margin: EdgeInsets.only(bottom: defMargin),
                //   color: Colors.grey.shade300,
                // ),
                Row(
                  children: [
                    // InkWell(
                    //   onTap: () {
                    //     skip();
                    //   },
                    //   child: Padding(
                    //     padding: EdgeInsets.all(defMargin),
                    //     child: ConstantWidget.getCustomText(
                    //         "Skip",
                    //         Colors.black54,
                    //         1,
                    //         TextAlign.start,
                    //         FontWeight.w600,
                    //         15),
                    //   ),
                    // ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.center,
                        child: Container(
                          margin: EdgeInsets.only(right: defMargin),
                          height:
                              ConstantWidget.getScreenPercentSize(context, 5),
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: introModelList.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              double size = ConstantWidget.getPercentSize(
                                  ConstantWidget.getScreenPercentSize(
                                      context, 5),
                                  24);
                              return (index == _position)?Center(
                                child: Container(
                                  height: size,
                                  width: ConstantWidget.getWidthPercentSize(context, 5),
                                  margin: EdgeInsets.only(right: (size / 1.2)),
                                  decoration: BoxDecoration(
                                    color: accentColor
                                        ,
                                    borderRadius: BorderRadius.all(Radius.circular(ConstantWidget.getPercentSize(size, 100)))

                                  ),
                                ),
                              ):Container(
                                height: size,
                                width: size,
                                margin: EdgeInsets.only(right: (size / 1.2)),
                                decoration: BoxDecoration(
                                  color: accentColor.withOpacity(0.2),

                                  shape: BoxShape.circle,
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    )
                  ],
                ),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: ConstantWidget.getWidthPercentSize(context, 4)),
                    child: ConstantWidget.getButtonWidget(context,  (_position == (introModelList.length-1))
                        ?'Get Started':'Next', accentColor, (){
                      onNext();
                    })),

                SizedBox(height: ConstantWidget.getScreenPercentSize(context, 1),)
              ],
            ),
          ),
        ),
        onWillPop: _requestPop);
  }

  onNext() {
    if (_position < (introModelList.length - 1)) {
      _position++;
      controller.jumpToPage(_position);
      setState(() {});
    } else {
      skip();
    }
  }

  _onPageViewChange(int page) {
    _position = page;
    setState(() {});
  }
}
