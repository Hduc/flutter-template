import 'package:flutter/material.dart';
import 'package:grocery/app/data/data_file.dart';
import 'package:grocery/app/models/model_cart.dart';
import 'package:grocery/app/routes/app_routes.dart';
import 'package:grocery/base/constant.dart';

import '../../../../base/color_data.dart';
import '../../../../base/resizer/fetch_pixels.dart';
import '../../../../base/widget_utils.dart';

class TabCart extends StatefulWidget {
  const TabCart({super.key});

  @override
  State<StatefulWidget> createState() {
    return _TabCart();
  }
}

class _TabCart extends State<TabCart> {
  List<ModelCart> cartList = DataFile.getAllCartList();

  @override
  Widget build(BuildContext context) {
    FetchPixels(context, mockUpWidth1: 414, mockUpHeight1: 1007);
    double horSpace = FetchPixels.getPixelWidth(20);
    EdgeInsets edgeInsets = EdgeInsets.symmetric(horizontal: horSpace);
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          buildToolbar(context),
          buildList(horSpace),
          buildRow(edgeInsets, context),
          buildButton(context, horSpace)
        ],
      ),
    );
  }

  Widget buildButton(BuildContext context, double horSpace) {
    return getButtonFigma(
            context,
            Colors.transparent,
            true,
            "Checkout",
            Colors.white,
            () {
              Constant.sendToNext(context,Routes.checkoutAddScreen);
            },
            EdgeInsets.symmetric(
                horizontal: horSpace,
                vertical: FetchPixels.getPixelHeight(30)));
  }

  Widget buildRow(EdgeInsets edgeInsets, BuildContext context) {
    return getPaddingWidget(
            edgeInsets,
            Row(
              children: [
                getCustomFont("Total", 20, getFontColor(context), 1,
                    fontWeight: FontWeight.w700),
                Expanded(
                  flex: 1,
                  child: getVerSpace(0),
                ),
                getCustomFont("\$", 28, getAccentColor(context), 1,
                    fontWeight: FontWeight.w600),
                getCustomFont("24.15", 28, getFontColor(context), 1,
                    fontWeight: FontWeight.w600),
              ],
            ));
  }

  Expanded buildList(double horSpace) {
    return Expanded(
          flex: 1,
          child: ListView.builder(
            itemCount: cartList.length,
            itemBuilder: (context, index) {
              ModelCart modelCart = cartList[index];
              return Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                    horizontal: FetchPixels.getPixelWidth(10),
                    vertical: FetchPixels.getPixelHeight(10)),
                height: FetchPixels.getPixelHeight(113),
                margin: EdgeInsets.symmetric(
                    horizontal: horSpace,
                    vertical: FetchPixels.getPixelHeight(10)),
                decoration: getButtonDecoration(Colors.white,
                    corner: FetchPixels.getPixelHeight(12),
                    withCorners: true,
                    shadow: [
                      const BoxShadow(
                          color: Color.fromRGBO(
                              155, 103, 103, 0.10999999940395355),
                          offset: Offset(-5, 6),
                          blurRadius: 28)
                    ]),
                child: Row(
                  children: [
                    Container(
                      width: FetchPixels.getPixelHeight(91),
                      height: double.infinity,
                      padding: EdgeInsets.symmetric(
                          horizontal: FetchPixels.getPixelHeight(13),
                          vertical: FetchPixels.getPixelHeight(14)),
                      decoration: getButtonDecoration(
                        modelCart.color!,
                        withCorners: true,
                        corner: FetchPixels.getPixelHeight(12),
                      ),
                      child: Center(
                        child: getAssetImage(context, modelCart.image ?? "",
                            double.infinity, double.infinity,
                            boxFit: BoxFit.fill),
                      ),
                    ),
                    getHorSpace(FetchPixels.getPixelWidth(24)),
                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          getCustomFont(modelCart.title ?? "", 23,
                              getFontColor(context), 1,
                              fontWeight: FontWeight.w700),
                          getVerSpace(FetchPixels.getPixelHeight(6)),
                          Row(
                            children: [
                              getCustomFont(
                                  "\$", 22, getAccentColor(context), 1,
                                  fontWeight: FontWeight.w500),
                              Expanded(
                                flex: 1,
                                child: getCustomFont(
                                    "4.30", 22, getFontColor(context), 1,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        getSvgImageWithSize(
                            context,
                            "Trash.svg",
                            FetchPixels.getPixelHeight(25),
                            FetchPixels.getPixelHeight(25)),
                        Expanded(flex: 1,child: getVerSpace(0),),
                        Row(
                          children: [
                            getButtonContainer(
                                context, Icons.add, () {}),
                            getHorSpace(
                                FetchPixels.getPixelWidth(10)),
                            getCustomFont(
                                "1 kg", 14, getFontColor(context), 1,
                                fontWeight: FontWeight.w500),
                            getHorSpace(
                                FetchPixels.getPixelWidth(10)),
                            getButtonContainer(
                                context, Icons.remove, () {}),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              );
            },
            primary: true,
            shrinkWrap: true,
          ),
        );
  }

  Widget buildToolbar(BuildContext context) {
    return getToolbarFigmaWidget(
          context,
          "My Cart",
          () {},
          withBack: false,
          settingVisible: true,
        );
  }
}
