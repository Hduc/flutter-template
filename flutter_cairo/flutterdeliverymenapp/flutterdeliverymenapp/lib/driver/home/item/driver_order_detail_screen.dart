// ignore: file_names
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:shopping/constants/constant.dart';
import 'package:shopping/constants/data_file.dart';
import 'package:shopping/constants/size_config.dart';
import 'package:shopping/models/model_my_order.dart';

import '../../../constants/widget_utils.dart';
import '../../../constants/color_data.dart';

class DriverOrderDetailScreen extends StatefulWidget {
  const DriverOrderDetailScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _DriverOrderDetailScreen();
  }
}

class _DriverOrderDetailScreen extends State<DriverOrderDetailScreen> {
  _requestPop() {
    Constant.backToFinish(context);
  }

  List<ModelMyOrder> myOrderList = DataFile.getMyOrders();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double screenHeight = SizeConfig.safeBlockVertical! * 100;
    double screenWidth = SizeConfig.safeBlockHorizontal! * 100;
    double appBarPadding = getAppBarPadding();
    Widget verSpace = getSpace(appBarPadding);
    double fontTitle = Constant.getPercentSize(screenHeight, 2.3);
    double fontLarge = Constant.getPercentSize(screenHeight, 2.5);
    double fontSmall = Constant.getPercentSize(screenHeight, 2);
    double imgSize = Constant.getPercentSize(screenHeight, 6);
    double leftSizeView = Constant.getPercentSize(screenWidth, 30);
    double cellHeight = Constant.getPercentSize(screenWidth, 23);

    return WillPopScope(
        child: Scaffold(
          backgroundColor: backgroundColor,
          body: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                getDefaultHeader(context, "Order Details", () {
                  _requestPop();
                }, (value) {}, isShowSearch: false),
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.all(appBarPadding),
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: getCustomText("Order ID: #688366", fontBlack,
                                1, TextAlign.start, FontWeight.w700, fontTitle),
                            flex: 1,
                          ),
                          getCustomText("\$51.00", primaryColor, 1,
                              TextAlign.start, FontWeight.w700, fontTitle)
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                      ),
                      verSpace,
                      Row(
                        children: [
                          Icon(
                            Icons.circle,
                            color: primaryColor,
                            size: Constant.getPercentSize(screenHeight, 2),
                          ),
                          getHorSpace(Constant.getPercentSize(screenWidth, 2)),
                          Expanded(
                            child: getCustomText(
                                "Order at 6:35 PM | 4-March-2022",
                                fontBlack,
                                1,
                                TextAlign.start,
                                FontWeight.w400,
                                fontTitle),
                            flex: 1,
                          )
                        ],
                      ),
                      verSpace,
                      Row(
                        children: [
                          getCustomText("Status : ", fontBlack, 1,
                              TextAlign.start, FontWeight.w400, fontTitle),
                          getHorSpace(
                              Constant.getPercentSize(screenWidth, 1.5)),
                          getCustomText("Delivered", fontBlack, 1,
                              TextAlign.start, FontWeight.w700, fontTitle)
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.all(appBarPadding),
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(vertical: appBarPadding),
                        decoration: getButtonShapeDecoration(cardColor,
                            corner: Constant.getPercentSize(screenHeight, 2),
                            withCustomCorner: true),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            getCustomText("Customer", fontBlack, 1,
                                TextAlign.start, FontWeight.w600, fontSmall),
                            verSpace,
                            Row(
                              children: [
                                Container(
                                  width: imgSize,
                                  height: imgSize,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                            Constant.assetImagePath +
                                                "order1.png",
                                          ),
                                          fit: BoxFit.cover),
                                      shape: BoxShape.circle),
                                ),
                                getHorSpace(
                                    Constant.getPercentSize(screenWidth, 2.2)),
                                Expanded(
                                  child: getCustomText(
                                      "Albert Flores",
                                      fontBlack,
                                      1,
                                      TextAlign.start,
                                      FontWeight.bold,
                                      fontSmall),
                                  flex: 1,
                                ),
                                Container(
                                    width: Constant.getPercentSize(imgSize, 80),
                                    height:
                                        Constant.getPercentSize(imgSize, 80),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: primaryColor),
                                    child: Center(
                                      child: getSvgImage("Call_Calling.svg",
                                          Constant.getPercentSize(imgSize, 45),
                                          color: Colors.white),
                                    ))
                              ],
                            ),
                            verSpace,
                            Row(
                              children: [
                                SizedBox(
                                  width: leftSizeView,
                                  child: getCustomTextWithoutMaxLine(
                                      "Order Note :",
                                      fontBlack,
                                      TextAlign.start,
                                      FontWeight.w400,
                                      fontTitle),
                                ),
                                Expanded(
                                  child: getCustomTextWithoutMaxLine(
                                      "i need the best one",
                                      fontBlack,
                                      TextAlign.start,
                                      FontWeight.w400,
                                      fontTitle),
                                  flex: 1,
                                )
                              ],
                            ),
                            verSpace,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: leftSizeView,
                                  child: getCustomTextWithoutMaxLine(
                                      "Shipping\nAddress :",
                                      fontBlack,
                                      TextAlign.start,
                                      FontWeight.w400,
                                      fontTitle),
                                ),
                                Expanded(
                                  child: getCustomTextWithoutMaxLine(
                                      "1901 Thornier Cir.Shiloh, Hawaii 81063, US",
                                      fontBlack,
                                      TextAlign.start,
                                      FontWeight.w400,
                                      fontTitle),
                                  flex: 1,
                                )
                              ],
                            ),
                            verSpace,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: leftSizeView,
                                  child: getCustomTextWithoutMaxLine(
                                      "Billing\nAddress :",
                                      fontBlack,
                                      TextAlign.start,
                                      FontWeight.w400,
                                      fontTitle),
                                ),
                                Expanded(
                                  child: getCustomTextWithoutMaxLine(
                                      "1901 Thornier Cir.Shiloh, Hawaii 81063, US",
                                      fontBlack,
                                      TextAlign.start,
                                      FontWeight.w400,
                                      fontTitle),
                                  flex: 1,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      getCustomText("Item: 1", fontBlack, 1, TextAlign.start,
                          FontWeight.w400, fontTitle),
                      verSpace,
                      Divider(
                        height: 1,
                        color: Colors.grey.shade300,
                      ),
                      verSpace,
                      Container(
                        width: double.infinity,
                        height: cellHeight,
                        padding: EdgeInsets.all(
                            Constant.getPercentSize(cellHeight, 10)),
                        decoration: ShapeDecoration(
                            color: cardColor,
                            shape: SmoothRectangleBorder(
                                borderRadius: SmoothBorderRadius(
                                    cornerRadius:
                                        Constant.getPercentSize(cellHeight, 13),
                                    cornerSmoothing: 0.5))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              child: Image.asset(
                                Constant.assetImagePath + "order2.png",
                                width: Constant.getPercentSize(screenWidth, 17),
                                fit: BoxFit.cover,
                                height: double.infinity,
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(
                                  Constant.getPercentSize(cellHeight, 10))),
                            ),
                            getHorSpace(
                                Constant.getPercentSize(screenWidth, 3)),
                            Expanded(
                              child: Column(
                                children: [
                                  getCustomText(
                                      "Women's Crop Skirt",
                                      fontBlack,
                                      1,
                                      TextAlign.start,
                                      FontWeight.bold,
                                      Constant.getPercentSize(
                                          cellHeight, 16.4)),
                                  getSpace(
                                      Constant.getPercentSize(cellHeight, 8.5)),
                                  getCustomText(
                                      "Quantity; 1",
                                      fontBlack,
                                      1,
                                      TextAlign.start,
                                      FontWeight.w400,
                                      Constant.getPercentSize(cellHeight, 16)),
                                  Expanded(
                                    child: Container(),
                                    flex: 1,
                                  ),
                                  getCustomText(
                                      "\$18.00",
                                      fontBlack,
                                      1,
                                      TextAlign.start,
                                      FontWeight.w500,
                                      Constant.getPercentSize(cellHeight, 16))
                                ],
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                              ),
                              flex: 1,
                            ),
                            // getSvgImage("Trash.svg", deleteIconSize)
                          ],
                        ),
                      ),
                      verSpace,
                      Divider(
                        height: 1,
                        color: Colors.grey.shade300,
                      ),
                      verSpace,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: getCustomText("Item Price", fontBlack, 1,
                                TextAlign.start, FontWeight.w400, fontSmall),
                            flex: 1,
                          ),
                          getCustomText("\$ 41.00", fontBlack, 1,
                              TextAlign.start, FontWeight.w400, fontTitle)
                        ],
                      ),
                      verSpace,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: getCustomText("Tax", fontBlack, 1,
                                TextAlign.start, FontWeight.w400, fontSmall),
                            flex: 1,
                          ),
                          getCustomText("(+) \$ 0.00", fontBlack, 1,
                              TextAlign.start, FontWeight.w400, fontTitle)
                        ],
                      ),
                      verSpace,
                      Divider(
                        height: 1,
                        color: Colors.grey.shade300,
                      ),
                      verSpace,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: getCustomText("Subtotal", fontBlack, 1,
                                TextAlign.start, FontWeight.bold, fontTitle),
                            flex: 1,
                          ),
                          getCustomText("\$ 41.00", fontBlack, 1,
                              TextAlign.start, FontWeight.bold, fontTitle)
                        ],
                      ),
                      verSpace,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: getCustomText("Discount", fontBlack, 1,
                                TextAlign.start, FontWeight.w400, fontSmall),
                            flex: 1,
                          ),
                          getCustomText("(-) \$ 3.00", fontBlack, 1,
                              TextAlign.start, FontWeight.w400, fontTitle)
                        ],
                      ),
                      verSpace,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: getCustomText("Coupon Discount", fontBlack,
                                1, TextAlign.start, FontWeight.w400, fontSmall),
                            flex: 1,
                          ),
                          getCustomText("(-) \$ 0.00", fontBlack, 1,
                              TextAlign.start, FontWeight.w400, fontTitle)
                        ],
                      ),
                      verSpace,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: getCustomText("Shipping Fee", fontBlack, 1,
                                TextAlign.start, FontWeight.w400, fontSmall),
                            flex: 1,
                          ),
                          getCustomText("(+) \$ 5.00", fontBlack, 1,
                              TextAlign.start, FontWeight.w400, fontTitle)
                        ],
                      ),
                      verSpace,
                      Divider(
                        height: 1,
                        color: Colors.grey.shade300,
                      ),
                      verSpace,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: getCustomText("Total Amount", fontBlack, 1,
                                TextAlign.start, FontWeight.bold, fontLarge),
                            flex: 1,
                          ),
                          getCustomText("\$ 51.00", primaryColor, 1,
                              TextAlign.start, FontWeight.bold, fontLarge)
                        ],
                      ),
                      verSpace
                    ],
                  ),
                  flex: 1,
                )
              ],
            ),
          ),
        ),
        onWillPop: () async {
          _requestPop();
          return false;
        });
  }

  Widget getSeparateDivider() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: getAppBarPadding()),
      child: Divider(
        height: 1,
        color: Colors.grey.shade200,
      ),
    );
  }

  Widget getRowWidget(String title, String desc, String icon) {
    double iconSize = Constant.getHeightPercentSize(3.8);
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        getSvgImage(icon, iconSize),
        getHorSpace(Constant.getWidthPercentSize(2)),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            getCustomText(title, fontBlack, 1, TextAlign.start, FontWeight.w700,
                Constant.getPercentSize(iconSize, 63)),
            getSpace(Constant.getPercentSize(iconSize, 36)),
            getCustomText(desc, greyFont, 1, TextAlign.start, FontWeight.w400,
                Constant.getPercentSize(iconSize, 61)),
          ],
        )
      ],
    );
  }
}
