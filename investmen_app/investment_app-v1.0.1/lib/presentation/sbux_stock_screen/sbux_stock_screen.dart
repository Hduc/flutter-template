import 'package:intl/intl.dart';
import 'package:investment_app/presentation/sbux_stock_share_bottomsheet/sbux_stock_share_bottomsheet.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../core/utils/graph_data_list.dart';
import '../../core/utils/graph_model.dart';
import '../sbux_stock_screen/widgets/list2_item_widget.dart';
import '../sbux_stock_screen/widgets/list4_item_widget.dart';
import '../sbux_stock_screen/widgets/listseventy_item_widget.dart';
import '../sbux_stock_screen/widgets/sbux_stock_item_widget.dart';
import '../sbux_stock_share_bottomsheet/controller/sbux_stock_share_controller.dart';
import 'controller/sbux_stock_controller.dart';
import 'models/list2_item_model.dart';
import 'models/list4_item_model.dart';
import 'models/listseventy_item_model.dart';
import 'models/sbux_stock_item_model.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/widgets/custom_button.dart';
import 'package:investment_app/widgets/custom_icon_button.dart';

class SbuxStockScreen extends GetWidget<SbuxStockController> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{
        Get.back();
        return false;
      },
      child: Scaffold(
          backgroundColor: ColorConstant.lightBlue900,
          body: SafeArea(
            child: Container(
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
                    fit: BoxFit.fill,
                    alignment: Alignment.topLeft,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomIconButton(
                            height: 50,
                            width: 50,
                            variant: IconButtonVariant
                                .FillWhiteA70014,
                            alignment: Alignment.topLeft,
                            onTap: () {
                              onTapBtnArrowleft();
                            },
                            child: CustomImageView(
                                svgPath: ImageConstant
                                    .imgArrowleftWhiteA70050x50)),


                        Row(
                          children: [
                            CustomIconButton(
                                height: 50,
                                width: 50,
                                variant: IconButtonVariant
                                    .FillWhiteA70014,
                                alignment: Alignment.topLeft,
                                onTap: () {
                                  showModalBottomSheet(
                                    isScrollControlled: true,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius
                                                .circular(
                                                13),
                                            topLeft: Radius
                                                .circular(
                                                13))),
                                    context: context,
                                    builder: (context) =>
                                        SbuxStockShareBottomsheet(
                                            Get.put(
                                                SbuxStockShareController())),
                                  );
                                },
                                child: CustomImageView(
                                    svgPath: ImageConstant
                                        .imgClockWhiteA700)),
                            SizedBox(width: getHorizontalSize(8),),
                            CustomIconButton(
                                height: 50,
                                width: 50,
                                variant: IconButtonVariant
                                    .FillWhiteA70014,
                                alignment: Alignment.topLeft,
                                onTap: () {},
                                child: CustomImageView(
                                    svgPath: ImageConstant
                                        .imgFavorite)),


                          ],
                        )
                      ],
                    ).paddingSymmetric(horizontal: 24),
                  ),
                  Container(
                    decoration: AppDecoration.fillWhiteA700.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL32,
                    ),
                    child: Padding(
                        padding: getPadding(top: 34),
                      child: ListView(

                        children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                         Row(
                           children: [
                             CustomImageView(
                                 imagePath:
                                 ImageConstant
                                     .imgEllipse2832,
                                 height: getSize(
                                     40.00),
                                 width: getSize(
                                     40.00),
                                 radius: BorderRadius
                                     .circular(
                                     getHorizontalSize(
                                         20.00))),
                             Padding(
                               padding:
                               getPadding(
                                   left: 12,
                                   top: 0),
                               child: Column(
                                   crossAxisAlignment:
                                   CrossAxisAlignment
                                       .start,
                                   mainAxisAlignment:
                                   MainAxisAlignment
                                       .start,
                                   children: [
                                     Text(
                                         "Nightverse",
                                         overflow:
                                         TextOverflow
                                             .ellipsis,
                                         textAlign:
                                         TextAlign
                                             .left,
                                         style: AppStyle
                                             .txtInterBold14Gray800
                                             .copyWith(height: getVerticalSize(1.19))),
                                     Padding(
                                         padding: getPadding(
                                             top:
                                             4),
                                         child: Text(
                                             "Night",
                                             overflow:
                                             TextOverflow.ellipsis,
                                             textAlign: TextAlign.left,
                                             style: AppStyle.txtInterRegularblack
                                                 .copyWith(
                                                 height: getVerticalSize(0.99))))
                                   ]),
                             ),
                           ],
                         ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                "Last close",
                                overflow:
                                TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterRegularblack
                                    .copyWith(
                                    height: getVerticalSize(0.99))),
                            SizedBox(height: getVerticalSize(4),),
                            Text(
                              "lbl_35_123"
                                  .tr,
                              overflow:
                              TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold14Gray800.copyWith(height: getVerticalSize(1.19))),
                          ],
                        )
                        ],
                      ).paddingSymmetric(horizontal: getHorizontalSize(24)),
                          Padding(
                            padding: EdgeInsets.only(top:24),
                            child: Container(
                              child: SfCartesianChart(
                                legend: Legend(isVisible: true, ),
                                enableSideBySideSeriesPlacement: false,
                                enableAxisAnimation: true,

                                series: <CandleSeries>[
                                  CandleSeries<ChartSampleData, DateTime>(
                                      dataSource: GraphData.getChartData(),
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
                          ),
                          // CustomImageView(
                          //   svgPath: ImageConstant.imgChartRed300,
                          //   height: getVerticalSize(
                          //     220.00,
                          //   ),
                          //   width: getHorizontalSize(
                          //       width
                          //   ),
                          // ).paddingOnly(top: getVerticalSize(24)),
                          Container(
                            decoration: AppDecoration.fillWhiteA700.copyWith(
                                borderRadius: BorderRadiusStyle.customBorderTL32,
                                color: ColorConstant.colorF5f5
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    "msg_my_spot_position"
                                        .tr,
                                    overflow: TextOverflow
                                        .ellipsis,
                                    textAlign:
                                    TextAlign.left,
                                    style: AppStyle
                                        .txtInterBold16
                                        .copyWith(
                                        height:
                                        getVerticalSize(
                                            1.24))).paddingSymmetric(horizontal: getHorizontalSize(24)),
                              SizedBox(height: getVerticalSize(16),),
                                Padding(
                                  padding: getPadding(left: 24,right: 24),
                                  child: Row(
                                    children: [
                                      Expanded(child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:  BorderRadius.circular(8),
                                            color: ColorConstant.whiteA700
                                        ),
                                        child:Padding(
                                          padding:getPadding(all: 16),
                                          child: Row(
                                            children: [
                                              Container(
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: ColorConstant.iconButtonBgColor
                                          ),
                                                child: Padding(
                                                  padding: getPadding(top:6.5,bottom:5.5 ,left:6 ,right:6 ),
                                                  child: CustomImageView(

                                                    svgPath: ImageConstant.imgSharesIcon,
                                                  ),
                                                ),
                                              ),
                                               SizedBox(width: getHorizontalSize(12),),
                                               Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Shares",
                                                    overflow: TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle.txtInterRegular12Gray800.copyWith(
                                                      height: getVerticalSize(
                                                        0.99,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(height: getVerticalSize(8),),
                                                  Text(
                                                    "0.18732",
                                                    overflow: TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle.txtInterBold16Black900.copyWith(
                                                      height: getVerticalSize(
                                                        1.27,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      )),
                                      SizedBox(width: getHorizontalSize(8),),
                                      Expanded(child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:  BorderRadius.circular(8),
                                            color: ColorConstant.whiteA700
                                        ),
                                        child:Padding(
                                          padding:getPadding(all: 16),
                                          child: Row(
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: ColorConstant.iconButtonBgColor
                                                ),
                                                child: Padding(
                                                  padding: getPadding(top:6.5,bottom:5.5 ,left:6 ,right:6 ),
                                                  child: CustomImageView(

                                                    svgPath: ImageConstant.imgAvgCostIcon,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: getHorizontalSize(12),),
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Avg. Cost",
                                                    overflow: TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle.txtInterRegular12Gray800.copyWith(
                                                      height: getVerticalSize(
                                                        0.99,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(height: getVerticalSize(8),),
                                                  Text(
                                                    "\$23.09",
                                                    overflow: TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle.txtInterBold16Black900.copyWith(
                                                      height: getVerticalSize(
                                                        1.27,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      )),
                                    ],
                                  ),
                                ),
                                SizedBox(height: getVerticalSize(8),),
                                Padding(
                                  padding: getPadding(left: 24,right: 24),
                                  child: Row(
                                    children: [
                                      Expanded(child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:  BorderRadius.circular(8),
                                            color: ColorConstant.whiteA700
                                        ),
                                        child:Padding(
                                          padding:getPadding(all: 16),
                                          child: Row(
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: ColorConstant.iconButtonBgColor
                                                ),
                                                child: Padding(
                                                  padding: getPadding(top:6.5,bottom:5.5 ,left:6 ,right:6 ),
                                                  child: CustomImageView(

                                                    svgPath: ImageConstant.imgEquityIcon,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: getHorizontalSize(12),),
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Equity",
                                                    overflow: TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle.txtInterRegular12Gray800.copyWith(
                                                      height: getVerticalSize(
                                                        0.99,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(height: getVerticalSize(8),),
                                                  Text(
                                                    "\$31.389",
                                                    overflow: TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle.txtInterBold16Black900.copyWith(
                                                      height: getVerticalSize(
                                                        1.27,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      )),
                                      SizedBox(width: getHorizontalSize(8),),
                                      Expanded(child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:  BorderRadius.circular(8),
                                            color: ColorConstant.whiteA700
                                        ),
                                        child:Padding(
                                          padding:getPadding(all: 16),
                                          child: Row(
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: ColorConstant.iconButtonBgColor
                                                ),
                                                child: Padding(
                                                  padding: getPadding(top:6.5,bottom:5.5 ,left:6 ,right:6 ),
                                                  child: CustomImageView(

                                                    svgPath: ImageConstant.imgTotalReturns,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: getHorizontalSize(12),),
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Total Returns",
                                                    overflow: TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle.txtInterRegular12Gray800.copyWith(
                                                      height: getVerticalSize(
                                                        0.99,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(height: getVerticalSize(8),),
                                                  Text(
                                                    "\$2.83",
                                                    overflow: TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle.txtInterBold16Black900.copyWith(
                                                      height: getVerticalSize(
                                                        1.27,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      )),
                                    ],
                                  ),
                                ),
                              // Obx(() =>
                              //     GridView.builder(
                              //       padding: EdgeInsets.symmetric(horizontal: getHorizontalSize(24)),
                              //         shrinkWrap:
                              //         true,
                              //         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              //             mainAxisExtent:
                              //             getVerticalSize(
                              //                 80.00),
                              //             crossAxisCount:
                              //             2,
                              //             mainAxisSpacing:
                              //             getHorizontalSize(
                              //                 8.00),
                              //             crossAxisSpacing:
                              //             getHorizontalSize(
                              //                 8.00)),
                              //         physics:
                              //         NeverScrollableScrollPhysics(),
                              //         itemCount: controller
                              //             .sbuxStockModelObj
                              //             .value
                              //             .sbuxStockItemList
                              //             .length,
                              //         itemBuilder:
                              //             (context,
                              //             index) {
                              //           SbuxStockItemModel
                              //           model =
                              //           controller
                              //               .sbuxStockModelObj
                              //               .value
                              //               .sbuxStockItemList[index];
                              //           return SbuxStockItemWidget(
                              //               model);
                              //         })),
                                SizedBox(height: getVerticalSize(25),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                        "msg_spot_market_stats"
                                            .tr,
                                        overflow:
                                        TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterBold16
                                            .copyWith(
                                            height:
                                            getVerticalSize(
                                                1.24))),
                                    GestureDetector(
                                      onTap: (){
                                        Get.toNamed(AppRoutes.spotMarketStatsScreen);
                                      },
                                      child: Padding(
                                          padding: getPadding(
                                              left: 128, top: 2),
                                          child: Text(
                                              "lbl_view_all".tr,
                                              overflow: TextOverflow
                                                  .ellipsis,
                                              textAlign:
                                              TextAlign.left,
                                              style: AppStyle
                                                  .txtInterBold14
                                                  .copyWith(
                                                  height:
                                                  getVerticalSize(
                                                      1.19))))),
                                  ],
                                ).paddingSymmetric(horizontal: getHorizontalSize(24)),
                               SizedBox(height: getVerticalSize(16),),
                               Container(
                                 height: getVerticalSize(79),
                                 child: ListView(
                                   padding: EdgeInsets.symmetric(horizontal: getHorizontalSize(24)),
                                   scrollDirection: Axis.horizontal,
                                   children: [
                                     Row(
                                       children: [
                                         Container(
                                             padding: getPadding(
                                                 all: 16),
                                             decoration: AppDecoration
                                                 .fillWhiteA700
                                                 .copyWith(
                                                 borderRadius:
                                                 BorderRadiusStyle
                                                     .roundedBorder24),
                                             child: Row(
                                                 crossAxisAlignment:
                                                 CrossAxisAlignment
                                                     .start,
                                                 children: [
                                                   CustomIconButton(
                                                       height: 36,
                                                       width: 36,
                                                       margin: getMargin(
                                                           top: 5,
                                                           bottom:
                                                           5),
                                                       shape: IconButtonShape
                                                           .CircleBorder18,
                                                       padding:
                                                       IconButtonPadding
                                                           .PaddingAll5,
                                                       child: CustomImageView(
                                                           svgPath:
                                                           ImageConstant.imgIconBlue70036x36)),
                                                   Padding(
                                                       padding: getPadding(
                                                           left:
                                                           12,
                                                           bottom:
                                                           2),
                                                       child: Column(
                                                           mainAxisAlignment:
                                                           MainAxisAlignment.start,
                                                           children: [
                                                             Text(
                                                                 "lbl_market_cap".tr,
                                                                 overflow: TextOverflow.ellipsis,
                                                                 textAlign: TextAlign.left,
                                                                 style: AppStyle.txtInterRegular12.copyWith(height: getVerticalSize(0.99))),
                                                             Padding(
                                                                 padding: getPadding(top: 8),
                                                                 child: Text("lbl_13_43b".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterBold16Black900.copyWith(height: getVerticalSize(1.27))))
                                                           ]))
                                                 ])),






                                         Container(
                                             margin: getMargin(
                                                 left: 8),
                                             padding: getPadding(
                                                 all: 16),
                                             decoration: AppDecoration
                                                 .fillWhiteA700
                                                 .copyWith(
                                                 borderRadius:
                                                 BorderRadiusStyle
                                                     .roundedBorder24),
                                             child: Row(
                                                 crossAxisAlignment:
                                                 CrossAxisAlignment
                                                     .start,
                                                 children: [
                                                   IntrinsicWidth(
                                                       child: Container(
                                                           decoration: AppDecoration.fillGray100.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
                                                           child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                                                             CustomImageView(svgPath: ImageConstant.imgPlusGray800, height: getSize(24.00), width: getSize(24.00), margin: getMargin(top: 6, bottom: 6)),
                                                             // CustomImageView(svgPath: ImageConstant.imgIconGray100, height: getSize(36.00), width: getSize(36.00), margin: getMargin(left: 165))
                                                           ]))),
                                                   Padding(
                                                       padding: getPadding(
                                                           left:
                                                           10,
                                                           bottom:
                                                           1),
                                                       child: Column(
                                                           crossAxisAlignment:
                                                           CrossAxisAlignment
                                                               .start,
                                                           mainAxisAlignment:
                                                           MainAxisAlignment.start,
                                                           children: [
                                                             Text(
                                                                 "msg_price_earning_ratio".tr,
                                                                 overflow: TextOverflow.ellipsis,
                                                                 textAlign: TextAlign.left,
                                                                 style: AppStyle.txtInterRegular12.copyWith(height: getVerticalSize(0.99))),
                                                             Padding(
                                                                 padding: getPadding(top: 9),
                                                                 child: Text("lbl_n_a".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterBold16Black900.copyWith(height: getVerticalSize(1.27))))
                                                           ]))
                                                 ])),
                                         Container(
                                             height:
                                             getVerticalSize(
                                                 79.00),
                                             width:
                                             getHorizontalSize(
                                                 2.00),
                                             margin: getMargin(
                                                 left: 8),
                                             decoration: BoxDecoration(
                                                 color:
                                                 ColorConstant
                                                     .whiteA700,
                                                 borderRadius:
                                                 BorderRadius.circular(
                                                     getHorizontalSize(
                                                         1.00))))
                                       ],
                                     )
                                   ],
                                 ),
                               ),
                                SizedBox(height: getVerticalSize(25),),
                              Text(
                                  "msg_what_the_experts"
                                      .tr,
                                  overflow: TextOverflow
                                      .ellipsis,
                                  textAlign:
                                  TextAlign.left,
                                  style: AppStyle
                                      .txtInterSemiBold16
                                      .copyWith(
                                      height:
                                      getVerticalSize(
                                          1.29))).paddingSymmetric(horizontal: getHorizontalSize(24)),
                                SizedBox(height: getVerticalSize(8),),
                              Text(
                                  "msg_18_wall_street_analyst"
                                      .tr,
                                  overflow: TextOverflow
                                      .ellipsis,
                                  textAlign:
                                  TextAlign.left,
                                  style: AppStyle
                                      .txtInterRegular14WhiteA700
                                      .copyWith(
                                      height:
                                      getVerticalSize(
                                          1.19))).paddingSymmetric(horizontal: getHorizontalSize(24)),
                                SizedBox(height: getVerticalSize(16),),
                                Container(
                                  decoration: AppDecoration.fillWhiteA700.copyWith(
                                    borderRadius: BorderRadiusStyle.customBorderALL32,
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                                      Container(
                                            width: getSize(
                                                84.00),
                                                          height: getSize(
                                                              84.00),
                                            padding: getPadding(
                                                left:
                                                0,
                                                top: 28,
                                                right:
                                                0,
                                                bottom:
                                                28),
                                            decoration: AppDecoration
                                                .txtFillGreen500
                                                ,
                                            child: Center(
                                              child: Text(
                                                  "lbl_buy"
                                                        .tr,
                                                  overflow:
                                                  TextOverflow
                                                        .ellipsis,
                                                  textAlign:
                                                  TextAlign
                                                        .left,
                                                  style: AppStyle
                                                        .txtInterBold20
                                                        .copyWith(height: getVerticalSize(1.00))),
                                            )),

                                          Expanded(
                                              child: Padding(
                                                  padding: getPadding(left: 16, top: 1, bottom: 1),
                                                  child: Obx(() => ListView.separated(
                                                      physics: NeverScrollableScrollPhysics(),
                                                      shrinkWrap: true,
                                                      separatorBuilder: (context, index) {
                                                        return SizedBox(height: getVerticalSize(13.00));
                                                      },
                                                      itemCount: controller.sbuxStockModelObj.value.listseventyItemList.length,
                                                      itemBuilder: (context, index) {
                                                        ListseventyItemModel model = controller.sbuxStockModelObj.value.listseventyItemList[index];
                                                        return ListseventyItemWidget(model);
                                                      })))),





                                                    ],
                                      ).paddingSymmetric(horizontal: getHorizontalSize(24)),
                                      Container(
                                          margin: getMargin(
                                              top: 24),
                                          padding:
                                          getPadding(
                                              all: 24),
                                          decoration: AppDecoration
                                              .outlineGray2001
                                              .copyWith(
                                              borderRadius:
                                              BorderRadiusStyle
                                                  .roundedBorder24),
                                          child: Row(
                                              crossAxisAlignment:
                                              CrossAxisAlignment
                                                  .start,
                                              children: [
                                                CustomImageView(
                                                    svgPath:
                                                    ImageConstant
                                                        .imgCheckmarkBlueA400,
                                                    height: getSize(
                                                        24.00),
                                                    width: getSize(
                                                        24.00),
                                                    margin: getMargin(
                                                        top:
                                                        11,
                                                        bottom:
                                                        15)),
                                                Padding(
                                                    padding: getPadding(
                                                        left:
                                                        12,
                                                        top:
                                                        1,
                                                        bottom:
                                                        2),
                                                    child: Column(
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment.start,
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                          Text("lbl_target_price".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterMedium12.copyWith(height: getVerticalSize(1.00))),
                                                          Padding(padding: getPadding(top: 6), child: Text("lbl_131_3".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterBold20Gray800.copyWith(height: getVerticalSize(1.00))))
                                                        ])),
                                                Container(
                                                    height: getVerticalSize(
                                                        51.00),
                                                    width: getHorizontalSize(
                                                        1.00),
                                                    margin: getMargin(
                                                        left:
                                                        24),
                                                    decoration:
                                                    BoxDecoration(color: ColorConstant.gray200)),
                                                CustomImageView(
                                                    svgPath:
                                                    ImageConstant
                                                        .imgIconsolidchart,
                                                    height: getSize(
                                                        24.00),
                                                    width: getSize(
                                                        24.00),
                                                    margin: getMargin(
                                                        left:
                                                        23,
                                                        top:
                                                        11,
                                                        bottom:
                                                        15)),
                                                Padding(
                                                    padding: getPadding(
                                                        left:
                                                        12,
                                                        right:
                                                        13,
                                                        bottom:
                                                        3),
                                                    child: Column(
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment.start,
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                          Text("lbl_est_return".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterMedium12.copyWith(height: getVerticalSize(1.00))),
                                                          Padding(padding: getPadding(top: 7), child: Text("lbl_71".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterBold20Gray800.copyWith(height: getVerticalSize(1.00))))
                                                        ]))
                                              ])).paddingSymmetric(horizontal: getHorizontalSize(24))

                                    ],
                                  ).paddingSymmetric(vertical: getVerticalSize(24))
                                ).paddingSymmetric(horizontal: getHorizontalSize(8)),
                                SizedBox(height: getVerticalSize(24),),
                              Text(
                                  "lbl_characteristics"
                                      .tr,
                                  overflow: TextOverflow
                                      .ellipsis,
                                  textAlign:
                                  TextAlign.left,
                                  style: AppStyle
                                      .txtInterSemiBold16
                                      .copyWith(
                                      height:
                                      getVerticalSize(
                                          1.29))).paddingSymmetric(horizontal: getHorizontalSize(24)),
                              Wrap(

                                  children: List<
                                      Widget>.generate(
                                      controller
                                          .sbuxStockModelObj
                                          .value
                                          .list2ItemList
                                          .length,
                                          (index) {
                                        List2ItemModel model =
                                        controller
                                            .sbuxStockModelObj
                                            .value
                                            .list2ItemList[index];
                                        return List2ItemWidget(
                                            model);
                                      })),
                                Text(
                                    "msg_people_also_bought".tr,
                                    overflow:
                                    TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtInterSemiBold16
                                        .copyWith(
                                        height:
                                        getVerticalSize(
                                            1.29))).paddingSymmetric(horizontal: getHorizontalSize(24)),
                                Container(
                                    height:
                                    getVerticalSize(89.00),
                                    child: Obx(() =>
                                        ListView.separated(
                                            padding: getPadding(
                                                top: 17,left: 24,right: 24),
                                            scrollDirection:
                                            Axis.horizontal,
                                            physics:
                                            BouncingScrollPhysics(),
                                            separatorBuilder:
                                                (context, index) {
                                              return SizedBox(
                                                  height:
                                                  getVerticalSize(
                                                      8.00));
                                            },
                                            itemCount: controller
                                                .sbuxStockModelObj
                                                .value
                                                .list4ItemList
                                                .length,
                                            itemBuilder:
                                                (context,
                                                index) {
                                              List4ItemModel
                                              model =
                                              controller
                                                  .sbuxStockModelObj
                                                  .value
                                                  .list4ItemList[index];
                                              return List4ItemWidget(
                                                  model);
                                            }))),
                                SizedBox(height: getVerticalSize(24),),
                              Text(
                                  "msg_the_story_so_far"
                                      .tr,
                                  overflow: TextOverflow
                                      .ellipsis,
                                  textAlign:
                                  TextAlign.left,
                                  style: AppStyle
                                      .txtInterSemiBold16
                                      .copyWith(
                                      height:
                                      getVerticalSize(
                                          1.5))).paddingSymmetric(horizontal: getHorizontalSize(24)),
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        width:
                                        getHorizontalSize(
                                            327.00),
                                        margin:
                                        getMargin(top: 18),
                                        child: Text(
                                            "msg_there_are_many_variations"
                                                .tr,
                                            maxLines: null,
                                            textAlign:
                                            TextAlign.left,
                                            style: AppStyle
                                                .txtInterRegular14Gray800
                                                .copyWith(
                                                height: getVerticalSize(
                                                    1.5))))),
                                SizedBox(height: getVerticalSize(24),),
                                Text(
                                    "msg_the_story_so_far"
                                        .tr,
                                    overflow: TextOverflow
                                        .ellipsis,
                                    textAlign:
                                    TextAlign.left,
                                    style: AppStyle
                                        .txtInterSemiBold16
                                        .copyWith(
                                        height:
                                        getVerticalSize(
                                            1.5))).paddingSymmetric(horizontal: getHorizontalSize(24)),

                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        width:
                                        getHorizontalSize(
                                            321.00),
                                        margin:
                                        getMargin(top: 17),
                                        child: Text(
                                            "msg_there_are_many_variations2"
                                                .tr,
                                            maxLines: null,
                                            textAlign:
                                            TextAlign.left,
                                            style: AppStyle
                                                .txtInterRegular14Gray800
                                                .copyWith(
                                                height: getVerticalSize(
                                                    1.5))))),


                                Container(
                                    width: size.width,
                                    margin: getMargin(top: 11),
                                    padding:
                                    getPadding(all: 24),
                                    decoration: AppDecoration
                                        .fillWhiteA700
                                        .copyWith(
                                        borderRadius:
                                        BorderRadiusStyle
                                            .customBorderTL32),
                                    child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment
                                            .spaceBetween,
                                        crossAxisAlignment:
                                        CrossAxisAlignment
                                            .start,
                                        children: [
                                          CustomButton(
                                              onTap: (){
                                                Get.toNamed(AppRoutes.sellScreen);
                                              },
                                              height: 57,
                                              width: 159,
                                              text:
                                              "lbl_sell".tr,
                                              margin: getMargin(
                                                  bottom: 17),
                                              variant: ButtonVariant
                                                  .OutlineBlue700,
                                              fontStyle:
                                              ButtonFontStyle
                                                  .InterBold16),
                                          CustomButton(
                                              onTap: (){
                                                Get.toNamed(AppRoutes.buyScreen);
                                              },
                                              height: 57,
                                              width: 159,
                                              text:
                                              "lbl_buy2".tr,
                                              margin: getMargin(
                                                  bottom: 17))
                                        ]))




                              ],
                            ).paddingOnly(top: 24),
                          ).paddingOnly(top: 24)
                  ]),
                    ),


                  ).paddingOnly(top: 118)],
              ),
            ),



          )),
    );
  }

  onTapBtnArrowleft() {
    Get.back();
  }
}
