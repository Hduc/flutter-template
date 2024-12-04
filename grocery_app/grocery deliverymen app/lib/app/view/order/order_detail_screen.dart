import 'package:flutter/material.dart';
import 'package:grocery/app/data/data_file.dart';
import 'package:grocery/app/models/model_my_order.dart';

import 'package:grocery/base/constant.dart';
import 'package:grocery/base/resizer/fetch_pixels.dart';

import '../../../base/color_data.dart';
import '../../../base/widget_utils.dart';

class OrderDetailScreen extends StatefulWidget {
  const OrderDetailScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _OrderDetailScreen();
  }
}

class _OrderDetailScreen extends State<OrderDetailScreen> {
  @override
  void initState() {
    super.initState();
  }

  final ModelMyOrder _modelMyOrder = DataFile.getMyOrders()[0];

  finish() {
    Constant.backToPrev(context);
  }

  @override
  Widget build(BuildContext context) {
    FetchPixels(context, mockUpWidth1: 414, mockUpHeight1: 896);
    double defSpace = FetchPixels.getDefaultHorSpaceFigma(context);
    EdgeInsets edgeInsets = EdgeInsets.symmetric(horizontal: defSpace);

    return WillPopScope(
        child: Scaffold(
            appBar: getInVisibleAppBar(),
            backgroundColor: getCurrentTheme(context).scaffoldBackgroundColor,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                getToolbarFigmaWidget(context, "Order Detail", () {
                  finish();
                }, withBack: true, settingVisible: false),
                buildExpandedList(edgeInsets, context, defSpace)
              ],
            )),
        onWillPop: () async {
          finish();

          return false;
        });
  }

  Expanded buildExpandedList(EdgeInsets edgeInsets, BuildContext context, double defSpace) {
    return Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  primary: true,
                  children: [
                    getVerSpace(FetchPixels.getPixelHeight(30)),
                    getPaddingWidget(
                        edgeInsets,
                        Row(
                          children: [
                            Expanded(
                              child: getCustomFont("Order ID : #688366", 16,
                                  getFontColor(context), 1,
                                  fontWeight: FontWeight.w700),
                              flex: 1,
                            ),
                            Container(
                              // width: FetchPixels.getPixelWidth(82),
                              padding: EdgeInsets.symmetric(horizontal: FetchPixels.getPixelWidth(10)),
                              height: FetchPixels.getPixelHeight(26),
                              child: Center(
                                child: getCustomFont(
                                    _modelMyOrder.status ?? "",
                                    14,
                                    _modelMyOrder.color!,
                                    1,
                                    fontWeight: FontWeight.w600),
                              ),
                              decoration: getButtonDecoration(
                                  _modelMyOrder.color!.withOpacity(0.09),
                                  withCorners: true,
                                  corner: FetchPixels.getPixelHeight(12)),
                            )
                          ],
                        )),
                    getVerSpace(FetchPixels.getPixelHeight(7)),
                    getPaddingWidget(
                        edgeInsets,
                        getCustomFont("Order at 6:25 PM | 5-March-2022", 14,
                            getFontColor(context), 1,
                            fontWeight: FontWeight.w500)),
                    getVerSpace(FetchPixels.getPixelHeight(13)),
                    getPaddingWidget(
                        edgeInsets,
                        getCustomFont("\$32.00", 16, redFontColor, 1,
                            fontWeight: FontWeight.w700)),
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: defSpace,
                          vertical: FetchPixels.getPixelHeight(20)),
                      width: double.infinity,
                      decoration: getButtonDecoration(Colors.white,
                          withCorners: true,
                          corner: getButtonCornersFigma(),
                          shadow: [
                            const BoxShadow(
                                color: Color.fromRGBO(
                                    155, 103, 103, 0.10999999940395355),
                                offset: Offset(-5, 6),
                                blurRadius: 28)
                          ]),
                      padding: EdgeInsets.symmetric(
                          horizontal: FetchPixels.getPixelWidth(18),
                          vertical: FetchPixels.getPixelHeight(18)),
                      height: FetchPixels.getPixelHeight(298),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          getCustomFont(
                              "Customer", 14, getFontColor(context), 1,
                              fontWeight: FontWeight.w700),
                          getVerSpace(FetchPixels.getPixelHeight(15)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              getCircleImage(
                                  context,
                                  "profile_img_driver.png",
                                  FetchPixels.getPixelHeight(47)),
                              getHorSpace(FetchPixels.getPixelWidth(10)),
                              Expanded(
                                child: getCustomFont("Riyana Wilson", 14,
                                    getFontColor(context), 1,
                                    fontWeight: FontWeight.w700),
                                flex: 1,
                              ),
                              getAssetImage(
                                  context,
                                  "whatsapp.png",
                                  FetchPixels.getPixelHeight(40),
                                  FetchPixels.getPixelHeight(40))
                            ],
                          ),
                          getVerSpace(FetchPixels.getPixelHeight(21)),
                          getRowWidgets(
                              "Order Note :", "i need the best one"),
                          getVerSpace(FetchPixels.getPixelHeight(23)),
                          getRowWidgets("Shipping Address :",
                              "1901 Thornridge Cir. Shiloh, Hawaii 81063, US"),
                          getVerSpace(FetchPixels.getPixelHeight(23)),
                          getRowWidgets("Billing  Address :",
                              "1901 Thornridge Cir. Shiloh, Hawaii 81063, US"),
                        ],
                      ),
                    ),
                    getPaddingWidget(
                        edgeInsets,
                        getCustomFont(
                            "Item : 1", 16, getFontColor(context), 1,
                            fontWeight: FontWeight.w500)),
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: defSpace,
                          vertical: FetchPixels.getPixelHeight(16)),
                      width: double.infinity,
                      height: FetchPixels.getPixelHeight(101),
                      decoration: getButtonDecoration(Colors.white,
                          shadow: [
                            const BoxShadow(
                                color: Color.fromRGBO(
                                    155, 103, 103, 0.10999999940395355),
                                offset: Offset(-5, 6),
                                blurRadius: 28)
                          ],
                          withCorners: true,
                          corner: getButtonCornersFigma()),
                      padding: EdgeInsets.symmetric(
                          horizontal: FetchPixels.getPixelHeight(10),
                          vertical: FetchPixels.getPixelHeight(10)),
                      child: Row(children: [
                        getCircularImage(
                            context,
                            FetchPixels.getPixelHeight(81),
                            double.infinity,
                            getButtonCornersFigma(),
                            "order_img.png"),
                        getHorSpace(FetchPixels.getPixelWidth(12)),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              getCustomFont(
                                  "Tomato", 16, getFontColor(context), 1,
                                  fontWeight: FontWeight.w700),
                              Row(
                                children: [
                                  getCustomFont("\$", 16, redFontColor, 1,
                                      fontWeight: FontWeight.w500),
                                  Expanded(
                                    child: getCustomFont(
                                        "5.20", 16, getFontColor(context), 1,
                                        fontWeight: FontWeight.w500),
                                    flex: 1,
                                  ),
                                ],
                              ),
                              getCustomFont("Quantity : 1 kg", 14,
                                  getFontColor(context), 1,
                                  fontWeight: FontWeight.w500)
                            ],
                          ),
                          flex: 1,
                        )
                      ]),
                    ),
                    getVerSpace(FetchPixels.getPixelHeight(20)),
                    getRowPrice("Item Price", "\$ 41.00"),
                    getVerSpace(FetchPixels.getPixelHeight(20)),
                    getRowPrice("Tax", "(+) \$ 0.00"),
                    getVerSpace(FetchPixels.getPixelHeight(20)),

                    Divider(
                      height: FetchPixels.getPixelHeight(2),
                      color: "#F9F9F9".toColor(),
                    ),
                    getVerSpace(FetchPixels.getPixelHeight(20)),
                    getRowPrice("Subtotal", "\$ 41.00",normal: false),
                    getVerSpace(FetchPixels.getPixelHeight(20)),
                    getRowPrice("Discount", "(-) \$ 3.00"),
                    getVerSpace(FetchPixels.getPixelHeight(20)),
                    getRowPrice("Coupon Discount", "(-) \$ 3.00"),
                    getVerSpace(FetchPixels.getPixelHeight(20)),
                    getRowPrice("Shipping Fee", "(-) \$ 3.00"),
                    getVerSpace(FetchPixels.getPixelHeight(20)),

                    Divider(
                      height: FetchPixels.getPixelHeight(2),
                      color: "#F9F9F9".toColor(),
                    ),
                    getVerSpace(FetchPixels.getPixelHeight(20)),
                    getRowPrice("Total Amount", "\$51.00",isTotal: true,fontSize: 20),
                    getVerSpace(FetchPixels.getPixelHeight(40)),



                  ],
                ),
                flex: 1,
              );
  }

  getRowPrice(String title, String total,
      {bool isTotal = false, bool normal = true,double fontSize=16}) {
    Color fontBlack = getFontColor(context);
    return getPaddingWidget(
        EdgeInsets.symmetric(
            horizontal: FetchPixels.getDefaultHorSpaceFigma(context)),
        Row(
          children: [
            Expanded(
              child: getCustomFont(title, fontSize, fontBlack, 1,
                  fontWeight:
                      (!normal || isTotal) ? FontWeight.w700 : FontWeight.w500),
              flex: 1,
            ),
            getCustomFont(
                total, fontSize, (isTotal) ? getAccentColor(context) : fontBlack, 1,
                fontWeight:
                    (!normal || isTotal) ? FontWeight.w700 : FontWeight.w500)
          ],
        ));
  }

  getRowWidgets(String title1, String title2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: FetchPixels.getPixelWidth(93),
          child: getCustomFont(title1, 14, getFontColor(context), 2,
              fontWeight: FontWeight.w500,
              textAlign: TextAlign.start,
              txtHeight: 1.5),
        ),
        getHorSpace(FetchPixels.getPixelWidth(7)),
        Expanded(
          child: getCustomFont(title2, 14, getFontColor(context), 2,
              fontWeight: FontWeight.w500,
              textAlign: TextAlign.start,
              txtHeight: 1.5),
          flex: 1,
        )
      ],
    );
  }
}
