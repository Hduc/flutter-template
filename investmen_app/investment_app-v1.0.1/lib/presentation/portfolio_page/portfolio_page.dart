import 'dart:convert';

import 'package:candlesticks/candlesticks.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../../core/utils/graph_data_list.dart';
import '../../core/utils/graph_model.dart';
import '../portfolio_page/widgets/portfolio_item_widget.dart';
import 'controller/portfolio_controller.dart';
import 'models/portfolio_item_model.dart';
import 'models/portfolio_model.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/widgets/custom_drop_down.dart';
import 'package:investment_app/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class PortfolioPage extends StatelessWidget {
  List<Candle> candles = [];
  PortfolioController controller =
      Get.put(PortfolioController(PortfolioModel().obs));
  Future<List<Candle>> fetchCandles() async {
    final uri = Uri.parse(
        "https://api.binance.com/api/v3/klines?symbol=BTCUSDT&interval=1h");
    final res = await http.get(uri);
    return (jsonDecode(res.body) as List<dynamic>)
        .map((e) => Candle.fromJson(e))
        .toList()
        .reversed
        .toList();
  }
   late List<ChartSampleData> _chartData  = GraphData.getChartData();
   late TrackballBehavior _trackballBehavior ;



  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async {
        Future.delayed(const Duration(milliseconds: 1000), () {
          SystemNavigator.pop();
        });
        return false;
      },
      child: Scaffold(
        backgroundColor: ColorConstant.lightBlue900,
        body: Container(
          width: size.width,
          child: Stack(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroup14,
                height: getVerticalSize(
                  251.00,
                ),
                width: getHorizontalSize(
                 width
                ),
                alignment: Alignment.topLeft,
              ),
              SafeArea(
                child: Padding(
                  padding:  EdgeInsets.only(top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "lbl_portfolio".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterBold3700.copyWith(
                          height: getVerticalSize(
                            1.01,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          CustomIconButton(
                            height: 50,
                            width: 50,

                            variant: IconButtonVariant.FillWhiteA70014,
                            child: CustomImageView(
                              svgPath: ImageConstant.imgSearchWhiteA700,
                            ),
                          ),
                          SizedBox(width: getHorizontalSize(8),),
                          CustomIconButton(
                            height: 50,
                            width: 50,

                            variant: IconButtonVariant.FillWhiteA70014,
                            child: CustomImageView(
                              svgPath: ImageConstant.imgCarWhiteA700,
                            ),
                          ),
                        ],
                      )
                    ],
                  ).paddingSymmetric(horizontal: 24),
                ),
              ),
              Container(
                width: double.infinity,
                decoration: AppDecoration.fillWhiteA700.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderTL32,
                ),
                child: Padding(
                  padding:getPadding(top: 24),
                  child: ListView(
                    children: [
                      Padding(
                        padding: getPadding(left: 24),
                        child: Text(
                          "Available Balance",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterMedium12
                              .copyWith(
                            height: getVerticalSize(
                              1.00,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "lbl_112_340".tr,
                                  style: TextStyle(
                                    color:
                                    ColorConstant.gray800,
                                    fontSize: getFontSize(
                                      32,
                                    ),
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                    height: getVerticalSize(
                                      1.01,
                                    ),
                                  ),
                                ),
                                TextSpan(
                                  text: "lbl_00".tr,
                                  style: TextStyle(
                                    color:
                                    ColorConstant.gray800,
                                    fontSize: getFontSize(
                                      24,
                                    ),
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                    height: getVerticalSize(
                                      1.03,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                          CustomDropDown(
                            width: 93,
                            focusNode: FocusNode(),
                            icon: Container(
                              margin: getMargin(
                                left: 10,
                                right: 14,
                              ),
                              child: CustomImageView(
                                svgPath:
                                ImageConstant.imgArrowdownBlue700,
                              ),
                            ),
                            hintText: "lbl_month".tr,
                            fontStyle:
                            DropDownFontStyle.InterRegular14,
                            items: controller.portfolioModelObj.value
                                .dropdownItemList,
                            onChanged: (value) {
                              controller.onSelected(value);
                            },
                          ),
                        ],
                      ).paddingOnly(right: 26,left: 26,bottom: 24),

                      Container(
                        child: SfCartesianChart(
                          legend: Legend(isVisible: true, ),
                        enableSideBySideSeriesPlacement: false,
                        enableAxisAnimation: true,

                          series: <CandleSeries>[
                            CandleSeries<ChartSampleData, DateTime>(
                                dataSource: _chartData,
                                name: 'AAPL',
                                xValueMapper: (ChartSampleData sales, _) => sales.x,
                                lowValueMapper: (ChartSampleData sales, _) => sales.low,
                                highValueMapper: (ChartSampleData sales, _) => sales.high,
                                openValueMapper: (ChartSampleData sales, _) => sales.open,
                                closeValueMapper: (ChartSampleData sales, _) => sales.close)
                          ],

                          primaryXAxis: DateTimeAxis(

                              dateFormat: DateFormat.MMM(),
                              majorGridLines: MajorGridLines(width: 0)),
                          primaryYAxis: NumericAxis(
                              minimum: 70,
                              maximum: 130,
                              interval: 10,
                              numberFormat: NumberFormat.simpleCurrency(decimalDigits: 0)),
                        ),
                      ),
                      Container(
                        padding: getPadding(
                          all: 24,
                        ),
                        decoration:
                        AppDecoration.outlineGray2001.copyWith(
                          borderRadius:
                          BorderRadiusStyle.roundedBorder24,
                        ),
                        child: Row(
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgShare,
                              height: getSize(
                                24.00,
                              ),
                              width: getSize(
                                24.00,
                              ),
                              margin: getMargin(
                                top: 13,
                                bottom: 14,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 12,
                                top: 1,
                                bottom: 1,
                              ),
                              child: Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                mainAxisAlignment:
                                MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "lbl_spent".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterMedium12
                                        .copyWith(
                                      height: getVerticalSize(
                                        1.00,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 7,
                                    ),
                                    child: Text(
                                      "lbl_1_342".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtInterSemiBold20Gray800
                                          .copyWith(
                                        height: getVerticalSize(
                                          1.12,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: getVerticalSize(
                                51.00,
                              ),
                              width: getHorizontalSize(
                                1.00,
                              ),
                              margin: getMargin(
                                left: 36,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.gray200,
                              ),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgIconlinea,
                              height: getSize(
                                24.00,
                              ),
                              width: getSize(
                                24.00,
                              ),
                              margin: getMargin(
                                left: 23,
                                top: 13,
                                bottom: 14,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 12,
                                right: 11,
                                bottom: 1,
                              ),
                              child: Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                mainAxisAlignment:
                                MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "lbl_earned".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterMedium12
                                        .copyWith(
                                      height: getVerticalSize(
                                        1.00,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 9,
                                    ),
                                    child: Text(
                                      "lbl_3_462".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtInterSemiBold20Gray800
                                          .copyWith(
                                        height: getVerticalSize(
                                          1.12,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ).paddingOnly(right: 26,left: 26),
                      Container(
                        decoration: AppDecoration.fillWhiteA700.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL32,
                          color: ColorConstant.colorF5f5
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "lbl_top_stock".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterBold16.copyWith(
                                    height: getVerticalSize(
                                      1.24,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    bottom: 2,
                                  ),
                                  child: Text(
                                    "lbl_view_all".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterBold14.copyWith(
                                      height: getVerticalSize(
                                        1.19,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: getVerticalSize(16),),
                            Obx(
                                  () => ListView.separated(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                separatorBuilder: (context, index) {
                                  return SizedBox(
                                    height: getVerticalSize(
                                      8.00,
                                    ),
                                  );
                                },
                                itemCount: controller.portfolioModelObj
                                    .value.portfolioItemList.length,
                                itemBuilder: (context, index) {
                                  PortfolioItemModel model = controller.portfolioData[index];
                                  return PortfolioItemWidget(
                                    model,
                                  );
                                },
                              ),
                            ),
                          ],
                        ).paddingOnly(right: 26,left: 26,top: 24,bottom: 10),
                      ).paddingOnly(top: 24)
                    ],
                  ),
                ),
              ).paddingOnly(top: 118),

            ],
          ),
        ),
      ),
    );

  }
}
