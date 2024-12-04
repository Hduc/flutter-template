import 'package:flutter/material.dart';

import '../../../../base/color_data.dart';
import '../../../../base/resizer/fetch_pixels.dart';
import '../../../../base/widget_utils.dart';

class TabProfile extends StatefulWidget {
  const TabProfile({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _TabProfile();
  }
}

class _TabProfile extends State<TabProfile> {
  TextEditingController nameCon = TextEditingController(text: "Jennie");
  TextEditingController secNameCon = TextEditingController(text: "Winget");
  TextEditingController emailCon =
      TextEditingController(text: "jenniewinget@gmail.com");

  @override
  Widget build(BuildContext context) {
    FetchPixels(context, mockUpWidth1: 414, mockUpHeight1: 896);
    double horSpace = FetchPixels.getPixelWidth(20);
    EdgeInsets edgeInsets = EdgeInsets.symmetric(horizontal: horSpace);
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          getToolbarFigmaWidget(
            context,
            "Profile",
            () {},
            withBack: false,
            settingVisible: false,
          ),
          buildExpandedList(context, edgeInsets),
          getButtonFigma(
              context,
              Colors.transparent,
              true,
              "Next",
              Colors.white,
              () {},
              EdgeInsets.symmetric(
                  horizontal: horSpace,
                  vertical: FetchPixels.getPixelHeight(30)))
        ],
      ),
    );
  }

  Expanded buildExpandedList(BuildContext context, EdgeInsets edgeInsets) {
    return Expanded(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              getCircleImage(context, "profile_img_driver.png",
                  FetchPixels.getPixelHeight(100)),
              getVerSpace(FetchPixels.getPixelHeight(12)),
              getCustomFont("Dianne Russell", 16, getFontColor(context), 1,
                  fontWeight: FontWeight.w700, textAlign: TextAlign.center),
              getVerSpace(FetchPixels.getPixelHeight(5)),
              getCustomFont("jeromebell@gmail.com", 14, black40, 1,
                  fontWeight: FontWeight.w500, textAlign: TextAlign.center),
              getVerSpace(FetchPixels.getPixelHeight(18)),
              getPaddingWidget(
                  edgeInsets,
                  getDefaultTextFiledFigma(
                    context,
                    "Name",
                    nameCon,
                    getFontColor(context),
                    isDisable: true
                  )),
              getVerSpace(FetchPixels.getPixelHeight(18)),
              getPaddingWidget(
                  edgeInsets,
                  getDefaultTextFiledFigma(
                    context,
                    "Second Name",
                    secNameCon,
                    getFontColor(context),isDisable: true
                  )),
              getVerSpace(FetchPixels.getPixelHeight(18)),
              getPaddingWidget(
                  edgeInsets,
                  getDefaultTextFiledFigma(
                    context,
                    "Email",
                    emailCon,
                    getFontColor(context),isDisable: true
                  )),
              getVerSpace(FetchPixels.getPixelHeight(18)),
              getRowWidget(context, "Privacy Policy", "lock.svg", () {}),
              getRowWidget(
                  context, "Terms of Service", "Document.svg", () {}),
            ],
          ),
          flex: 1,
        );
  }
}
