import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:furniture_ui/data/DataFile.dart';
import 'package:furniture_ui/main.dart';
import 'package:furniture_ui/model/IntroModel.dart';
import 'package:furniture_ui/utils/ConstantData.dart';
import 'package:furniture_ui/utils/PrefData.dart';
import 'package:furniture_ui/utils/SizeConfig.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:furniture_ui/generated/l10n.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPage createState() {
    return _IntroPage();
    // return _IntroPage(this.onChanged);
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

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    List<IntroModel> introModelList = DataFile.getIntroModel(context);

    double imageSize = SizeConfig.safeBlockVertical! * 25;
    setState(() {});

    return WillPopScope(
        child: Scaffold(
          backgroundColor: ConstantData.bgColor,
          body: Stack(
            children: [
              Container(
                child: PageView.builder(
                  controller: controller,
                  itemBuilder: (context, position) {
                    return Container(
                      margin: EdgeInsets.all(
                          MediaQuery.of(context).size.height * 0.03),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 20),
                            child: IconButton(
                              icon: new Image.asset(
                                  introModelList[position].image!),
                              iconSize: imageSize,
                              onPressed: () {},
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(15),
                            child: Text(
                              introModelList[position].name!,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: "SFProText",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: ConstantData.textColor),
                            ),
                          ),
                          Text(
                            introModelList[position].desc!,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "SFProText",
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: ConstantData.primaryTextColor),
                          ),
                        ],
                      ),
                    );
                  },
                  itemCount: introModelList.length,
                  onPageChanged: _onPageViewChange,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    child: SmoothPageIndicator(
                      controller: controller,
                      count: introModelList.length,
                      effect: ScaleEffect(
                          spacing: 8.0,
                          radius: 10.0,
                          dotWidth: 15,
                          dotHeight: 15,
                          dotColor: ConstantData.disableIconColor,
                          paintStyle: PaintingStyle.stroke,
                          strokeWidth: 1,
                          activeDotColor: ConstantData.textColor),
                    ),
                  ),
                  Container(
                      height: 50,
                      margin: EdgeInsets.all(20),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Visibility(
                          visible: (_position == 2),
                          child: InkWell(
                            child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                    color: ConstantData.primaryColor,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8))),
                                child: InkWell(
                                  child: Center(
                                    child: Text(
                                      S.of(context).getStarted,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: 15,
                                          fontFamily: "SFProText",
                                          color: Colors.white,
                                          decoration: TextDecoration.none),
                                    ),
                                  ),
                                )),
                            onTap: () {
                              PrefData.setIsIntro(false);
                              // widget.onChanged(true);
                              Navigator.of(context).pop(true);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MyHomePage(
                                            title: '',
                                          )));
                            },
                          ),
                        ),
                      ))
                ],
              ),
            ],
          ),
        ),
        onWillPop: _requestPop);
  }

  Widget getIndicator(int position) {
    double selectSize = 30;
    double unSelectSize = 15;

    return Container(
      margin: EdgeInsets.only(top: 40),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            (position == 0) ? Icons.radio_button_checked : Icons.brightness_1,
            size: (position == 0) ? selectSize : unSelectSize,
            color: (position == 0)
                ? ConstantData.textColor
                : ConstantData.disableIconColor,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Icon(
              (position == 1) ? Icons.radio_button_checked : Icons.brightness_1,
              size: (position == 1) ? selectSize : unSelectSize,
              color: (position == 1)
                  ? ConstantData.textColor
                  : ConstantData.disableIconColor,
            ),
          ),
          Icon(
            (position == 2) ? Icons.radio_button_checked : Icons.brightness_1,
            size: (position == 2) ? selectSize : unSelectSize,
            color: (position == 2)
                ? ConstantData.textColor
                : ConstantData.disableIconColor,
          ),
        ],
      ),
    );
  }

  _onPageViewChange(int page) {
    _position = page;
    setState(() {});
  }
}
