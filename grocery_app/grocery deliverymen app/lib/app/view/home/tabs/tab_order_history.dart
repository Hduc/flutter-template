import 'package:flutter/material.dart';
import 'package:grocery/app/data/data_file.dart';
import 'package:grocery/app/routes/app_routes.dart';
import 'package:grocery/base/constant.dart';

import '../../../../base/color_data.dart';
import '../../../../base/resizer/fetch_pixels.dart';
import '../../../../base/widget_utils.dart';
import '../../../models/model_my_order.dart';

class TabOrderHistory extends StatefulWidget {
  const TabOrderHistory({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _TabOrderHistory();
  }
}

class _TabOrderHistory extends State<TabOrderHistory> {
  List<ModelMyOrder> myOrderList = DataFile.getMyOrders();

  @override
  Widget build(BuildContext context) {
    FetchPixels(context, mockUpWidth1: 414, mockUpHeight1: 896);
    double defSpace = FetchPixels.getDefaultHorSpaceFigma(context);
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          getToolbarFigmaWidget(
            context,
            "Order History",
            () {},
            withBack: false,
            settingVisible: false,
          ),
          buildExpandedList(defSpace)
        ],
      ),
    );
  }

  Expanded buildExpandedList(double defSpace) {
    return Expanded(
          flex: 1,
          child: ListView.builder(
            itemBuilder: (context, index) {
              ModelMyOrder _modelMyOrder = myOrderList[index];
              return InkWell(
                onTap: () {
                  Constant.sendToNext(context,Routes.myOrderDetailScreen);
                },
                child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(
                      horizontal: defSpace,
                      vertical: FetchPixels.getPixelHeight(10)),
                  // height: FetchPixels.getPixelHeight(132),
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
                  padding: EdgeInsets.symmetric(horizontal: defSpace,vertical: FetchPixels.getPixelHeight(20)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      getCustomFont(
                          "Order ID : #688366", 16, getFontColor(context), 1,
                          fontWeight: FontWeight.w700),
                      getVerSpace(FetchPixels.getPixelHeight(8)),
                      getCustomFont("Order at 6:25 PM | 5-March-2022", 14,
                          getFontColor(context), 1,
                          fontWeight: FontWeight.w500),
                      getVerSpace(FetchPixels.getPixelHeight(17)),
                      Row(
                        children: [
                          Expanded(
                            child: getCustomFont("\$32.00", 16, redFontColor, 1,
                                fontWeight: FontWeight.w700),
                            flex: 1,
                          ),
                          Container(
                            // width: FetchPixels.getPixelWidth(82),
                            height: FetchPixels.getPixelHeight(26),
                            padding: EdgeInsets.symmetric(horizontal: FetchPixels.getPixelWidth(10)),
                            child: Center(
                              child: getCustomFont(_modelMyOrder.status ?? "",
                                  14, _modelMyOrder.color!, 1,
                                  fontWeight: FontWeight.w600),
                            ),
                            decoration: getButtonDecoration(
                                _modelMyOrder.color!.withOpacity(0.09),
                                withCorners: true,
                                corner: FetchPixels.getPixelHeight(12)),
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
            primary: true,
          ),
        );
  }
}
