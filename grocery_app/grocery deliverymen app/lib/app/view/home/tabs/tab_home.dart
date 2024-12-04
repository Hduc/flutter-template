import 'package:flutter/material.dart';
import 'package:grocery/base/color_data.dart';
import 'package:grocery/base/resizer/fetch_pixels.dart';
import 'package:grocery/base/widget_utils.dart';

class TabHome extends StatefulWidget {
  const TabHome({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _TabHome();
  }
}

class _TabHome extends State<TabHome> {
  @override
  Widget build(BuildContext context) {
    FetchPixels(context, mockUpWidth1: 414, mockUpHeight1: 896);
    double defSpace = FetchPixels.getDefaultHorSpaceFigma(context);
    EdgeInsets edgeInsets = EdgeInsets.symmetric(horizontal: defSpace);

    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: edgeInsets,
      child: Column(
        children: [
          getVerSpace(FetchPixels.getPixelHeight(10)),
          buildRow(context),
          Expanded(child:getEmptyWidget(context,"list.svg","No Orders Yet!","","",(){},withButton: false),flex: 1,)
        ],
      ),
    );
  }

  Row buildRow(BuildContext context) {
    return Row(
          children: [
            getCircleImage(context, "profile_img_driver.png", FetchPixels.getPixelHeight(47)),
            getHorSpace(FetchPixels.getPixelWidth(10)),
            Expanded(
              child: getCustomFont(
                  "Dianne Russell", 14, getFontColor(context), 1,
                  fontWeight: FontWeight.w500),
              flex: 1,
            ),
            getToolbarIconsCustom(context, "menu_3.svg",(){})
          ],
        );
  }
}
