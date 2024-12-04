// ignore: file_names
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:shopping/constants/constant.dart';
import 'package:shopping/constants/data_file.dart';
import 'package:shopping/constants/size_config.dart';
import 'package:shopping/driver/home/driver_home_screen.dart';
import 'package:shopping/driver/home/item/driver_order_detail_screen.dart';
import 'package:shopping/models/model_my_order.dart';

import '../../../constants/widget_utils.dart';
import '../../../constants/color_data.dart';

class TabDriverOrderHistory extends StatefulWidget {
  const TabDriverOrderHistory({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyOrderScreen();
  }
}

class _MyOrderScreen extends State<TabDriverOrderHistory> {
  _requestPop() {
    Constant.backToFinish(context);
  }

  List<ModelMyOrder> myOrderList = DataFile.getMyOrders();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double screenWidth = SizeConfig.safeBlockHorizontal! * 100;
    double appBarPadding = getAppBarPadding();

    double cellHeight = Constant.getPercentSize(screenWidth, 25);

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
                getDefaultHeader(context, "Order History", () {
                  _requestPop();
                }, (value) {}, isShowSearch: false, isShowBack: false),
                getSpace(appBarPadding),
                Expanded(
                  child: (myOrderList.isEmpty)
                      ? Center(
                          child: getEmptyWidget(
                              "empty_cart.svg",
                              "No Orders Yet!",
                              "Explore more and shortlist some products",
                              "Go to Shop", () {
                            Constant.sendToScreen(DriverHomeScreen(), context);
                          }),
                        )
                      : SizedBox(
                          width: double.infinity,
                          height: double.infinity,
                          child: ListView.builder(
                            itemBuilder: (context, index) {
                              ModelMyOrder modelCart = myOrderList[index];
                              double sizeHeight =
                                  Constant.getPercentSize(cellHeight, 29);
                              double sizeWidth = sizeHeight * 2.6;

                              return InkWell(
                                onTap: () {
                                  Constant.sendToScreen(
                                      const DriverOrderDetailScreen(), context);
                                },
                                child: Container(
                                  margin: EdgeInsets.only(
                                      left: appBarPadding,
                                      right: appBarPadding,
                                      top: (index == 0)
                                          ? appBarPadding
                                          : (appBarPadding / 2),
                                      bottom: appBarPadding / 2),
                                  width: double.infinity,
                                  height: cellHeight,
                                  padding: EdgeInsets.all(
                                      Constant.getPercentSize(cellHeight, 10)),
                                  decoration: ShapeDecoration(
                                      color: cardColor,
                                      shape: SmoothRectangleBorder(
                                          borderRadius: SmoothBorderRadius(
                                              cornerRadius:
                                                  Constant.getPercentSize(
                                                      cellHeight, 13),
                                              cornerSmoothing: 0.5))),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Expanded(
                                            child: getCustomText(
                                                "Order ID: #688366",
                                                fontBlack,
                                                1,
                                                TextAlign.start,
                                                FontWeight.w800,
                                                Constant.getPercentSize(
                                                    cellHeight, 14.5)),
                                            flex: 1,
                                          ),
                                          getCustomText(
                                              modelCart.price ?? "",
                                              primaryColor,
                                              1,
                                              TextAlign.start,
                                              FontWeight.w800,
                                              Constant.getPercentSize(
                                                  cellHeight,14.3))
                                        ],
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                      ),
                                      Expanded(
                                        child: Container(),
                                        flex: 1,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.circle,
                                            color: primaryColor,
                                            size: Constant.getPercentSize(
                                                cellHeight, 12),
                                          ),
                                          getHorSpace(Constant.getPercentSize(
                                              screenWidth, 2)),
                                          Expanded(
                                            child: getCustomText(
                                                "Order at 6:35 PM | 4-March-2022",
                                                fontBlack,
                                                1,
                                                TextAlign.start,
                                                FontWeight.w400,
                                                Constant.getPercentSize(
                                                    cellHeight, 13)),
                                            flex: 1,
                                          )
                                        ],
                                      ),
                                      Expanded(
                                        child: Container(),
                                        flex: 1,
                                      ),
                                      Row(
                                        children: [
                                          getCustomText(
                                              "Status : ",
                                              fontBlack,
                                              1,
                                              TextAlign.start,
                                              FontWeight.w400,
                                              Constant.getPercentSize(
                                                  cellHeight, 14)),
                                          getHorSpace(Constant.getPercentSize(
                                              screenWidth, 1.5)),
                                          Container(
                                            child: Center(
                                              child: getCustomText(
                                                  modelCart.status ?? "",
                                                  modelCart.color!,
                                                  1,
                                                  TextAlign.start,
                                                  FontWeight.w700,
                                                  Constant.getPercentSize(
                                                      sizeWidth, 15.5)),
                                            ),
                                            width: sizeWidth,
                                            height: sizeHeight,
                                            decoration: ShapeDecoration(
                                                shape: SmoothRectangleBorder(
                                                    borderRadius:
                                                        SmoothBorderRadius(
                                                            cornerRadius: Constant
                                                                .getPercentSize(
                                                                    sizeHeight,
                                                                    50))),
                                                color: modelCart.color!
                                                    .withOpacity(0.1)),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                            itemCount: myOrderList.length,
                            shrinkWrap: true,
                            padding: EdgeInsets.zero,
                            primary: true,
                          ),
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
