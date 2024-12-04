import 'package:flutter/material.dart';
import 'package:grocery/app/data/data_file.dart';
import 'package:grocery/app/models/model_cart.dart';
import 'package:grocery/app/routes/app_routes.dart';
import 'package:grocery/base/constant.dart';

import '../../../../base/color_data.dart';
import '../../../../base/pref_data.dart';
import '../../../../base/resizer/fetch_pixels.dart';
import '../../../../base/widget_utils.dart';

class TabProfile extends StatefulWidget {
  const TabProfile({super.key});

  @override
  State<StatefulWidget> createState() {
    return _TabProfile();
  }
}

class _TabProfile extends State<TabProfile> {
  List<ModelCart> cartList = DataFile.getAllCartList();

  @override
  Widget build(BuildContext context) {
    FetchPixels(context, mockUpWidth1: 414, mockUpHeight1: 1007);
    double horSpace = FetchPixels.getPixelWidth(20);
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          buildToolbar(context),
          buildExpandView(context),
          buildButton(context, horSpace)
        ],
      ),
    );
  }

  Widget buildButton(BuildContext context, double horSpace) {
    return getButtonFigma(
            context, Colors.transparent, true, "Logout", Colors.white, () {
          PrefData.setLogIn(false);
          Constant.sendToNext(context, Routes.loginRoute);
        },
            EdgeInsets.symmetric(
                horizontal: horSpace,
                vertical: FetchPixels.getPixelHeight(30)));
  }

  Expanded buildExpandView(BuildContext context) {
    return Expanded(
          flex: 1,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              getCircleImage(
                  context, "profile.png", FetchPixels.getPixelHeight(100)),
              getVerSpace(FetchPixels.getPixelHeight(12)),
              getCustomFont("Riyana Wilson", 16, getFontColor(context), 1,
                  fontWeight: FontWeight.w700, textAlign: TextAlign.center),
              getVerSpace(FetchPixels.getPixelHeight(5)),
              getCustomFont("riyanawilson@gmail.com", 14, black40, 1,
                  fontWeight: FontWeight.w500, textAlign: TextAlign.center),
              getVerSpace(FetchPixels.getPixelHeight(18)),
              getRowWidget(context,"My Profile", "User.svg", () {
                Constant.sendToNext(context, Routes.profileScreen);
              }),
              getRowWidget(context,"My Orders", "Bag.svg", () {
                Constant.sendToNext(context, Routes.myOrderScreen);
              }),
              getRowWidget(context,"My Favourites", "heart.svg", () {}),
              getRowWidget(context,"Shipping Address", "Location.svg", () {
                Constant.sendToNext(context, Routes.shippingAddressScreen);

              }),
              getRowWidget(context,"Shipping Cards", "Card.svg", () {
                Constant.sendToNext(context, Routes.cardScreen);

              }),
              getRowWidget(context,"Settings", "Setting.svg", () {
                Constant.sendToNext(context, Routes.settingsScreen);

              }),
            ],
          ),
        );
  }

  Widget buildToolbar(BuildContext context) {
    return getToolbarFigmaWidget(
          context,
          "Profile",
          () {},
          withBack: false,
          settingVisible: false,
        );
  }

}
