// ignore: file_names
import 'package:flutter/material.dart';
import 'package:shopping/constants/size_config.dart';
import 'package:shopping/constants/widget_utils.dart';

import '../../../constants/constant.dart';
import '../../../constants/color_data.dart';

class TabDriverHome extends StatefulWidget {
  const TabDriverHome({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _TabDriverHome();
  }
}

class _TabDriverHome extends State<TabDriverHome> {
  List<String> listOrders = [];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double appbarPadding = getAppBarPadding();
    double screenHeight = SizeConfig.safeBlockVertical! * 100;
    double screenWidth = SizeConfig.safeBlockHorizontal! * 100;
    double iconSize = Constant.getPercentSize(screenHeight, 3);

    return Container(
      width: double.infinity,
      height: double.infinity,
      color: backgroundColor,
      child: Column(
        children: [
          AppBar(
            toolbarHeight: 0,
            backgroundColor: primaryColor,
            elevation: 0,
          ),
          Container(
              color: primaryColor,
              // padding: EdgeInsets.zero,
              padding: EdgeInsets.symmetric(
                  horizontal: appbarPadding,
                  vertical: Constant.getPercentSize(appbarPadding, 65)),
              child: Row(
                children: [
                  Container(
                    width: Constant.getPercentSize(screenHeight, 7),
                    height: Constant.getPercentSize(screenHeight, 7),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              Constant.assetImagePath + "order1.png",
                            ),
                            fit: BoxFit.cover),
                        shape: BoxShape.circle),
                  ),
                  getHorSpace(Constant.getPercentSize(screenWidth, 2.2)),
                  Expanded(
                    child: getCustomText(
                        "Albert Flores",
                        Colors.white,
                        1,
                        TextAlign.start,
                        FontWeight.w500,
                        Constant.getPercentSize(screenHeight, 2.2)),
                    flex: 1,
                  ),
                  Image.asset(
                    Constant.assetImagePath + "more.png",
                    width: iconSize,
                    height: iconSize,
                    color: Colors.white,
                  )
                ],
              )),
          Expanded(
            child: (listOrders.isEmpty)
                ? getEmptyWidget(
                    "img_no_order.svg", "No Orders Yet!", "", "", () {},
                    withButton: false)
                : Container(),
            flex: 1,
          )
        ],
      ),
    );
  }
}
