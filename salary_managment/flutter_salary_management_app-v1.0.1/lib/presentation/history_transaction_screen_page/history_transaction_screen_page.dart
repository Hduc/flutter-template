import 'package:syncfusion_flutter_charts/charts.dart';

import '../history_transaction_screen_page/widgets/transactioncomponentsection_item_widget.dart';
import 'controller/history_transaction_screen_controller.dart';
import 'models/history_transaction_screen_model.dart';
import 'models/transactioncomponentsection_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_salary_management_app/core/app_export.dart';
import 'package:flutter_salary_management_app/widgets/custom_drop_down.dart';

// ignore_for_file: must_be_immutable
class HistoryTransactionScreenPage extends StatelessWidget {
  HistoryTransactionScreenPage({Key? key}) : super(key: key);

  HistoryTransactionScreenController controller = Get.put(
      HistoryTransactionScreenController(HistoryTransactionScreenModel().obs));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
            width: SizeUtils.width,
            child: SingleChildScrollView(
                padding: EdgeInsets.only(bottom: 16.v),
                physics: BouncingScrollPhysics(),
                child: Column(children: [
                  SizedBox(height: 16.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: Column(children: [
                        _buildChartSection(),
                        SizedBox(height: 19.v),
                        _buildTransactionComponentSection(),
                      ])),
                ]))));
  }

  /// Section Widget
  Widget _buildChartSection() {
    final List<ChartData> chartData2 = [
    ChartData('MON', 40),
    ChartData('TUE', 30),
    ChartData('WED', 35),
    ChartData('THU', 25),
    ChartData('FRI', 55),
    ChartData('SAT', 20),
    ChartData('SUN', 45),
  ];
    return Container(
      width: double.infinity,
      height: 323.h,
      padding: EdgeInsets.all(16.h),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1.h, color: Color(0xFFE7E7E7)),
          borderRadius: BorderRadius.circular(12.h),
        ),
      ),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("lbl_statistics".tr,
                  style: CustomTextStyles.bodyLargeInterGray600),
              SizedBox(height: 9.v),
              Text("lbl_monthly_revenue".tr,
                  style: CustomTextStyles.titleMediumInter)
            ]),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 6.v),
                child: CustomDropDown(
                    width: 120.h,
                    hintText: "lbl_monthly".tr,
                    items: controller.historyTransactionScreenModelObj.value
                        .dropdownItemList.value,
                    onChanged: (value) {
                      controller.onSelected(value);
                    }))
          ]),
          SizedBox(height: 11.v),
          Divider(color: appTheme.gray200),
          SizedBox(height: 10.v),
          Expanded(
              child: SfCartesianChart(
            backgroundColor: Colors.transparent,
            borderColor: Colors.transparent,
            borderWidth: 0,
            plotAreaBorderWidth: 0,
            primaryXAxis: CategoryAxis(
              majorGridLines: MajorGridLines(
                width: 0,
              ),
              minimum: -0.5,
            ),
            primaryYAxis: NumericAxis(
              desiredIntervals: 2,
              majorGridLines: MajorGridLines(dashArray: [6]),
              axisLine: AxisLine(width: 0),
              labelFormat: '{value}',
              interval: 25,
            ),

            trackballBehavior: TrackballBehavior(
                shouldAlwaysShow: true,
                lineColor: Color(0xFF7C7C7C),
                enable: true,
                // Enable trackball
                activationMode: ActivationMode.singleTap,
                lineType: TrackballLineType.none,
                tooltipSettings: InteractiveTooltip(
                    connectorLineColor: Colors.red,
                    enable: true,
                    canShowMarker: false,
                    // borderColor: Colors.red,
                    borderRadius: 8.h,
                    format: 'point.y',
                    color: Colors.black87,
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 16.fSize,
                      fontWeight: FontWeight.w400,
                    )),
                markerSettings: TrackballMarkerSettings()),
            selectionType: SelectionType.cluster,
            series: [
              ColumnSeries<ChartData, String>(
                dataSource: chartData2,
                xValueMapper: (ChartData data, _) => data.category,
                yValueMapper: (ChartData data, _) => data.value,
                name: 'Insulin',
                selectionBehavior: SelectionBehavior(
                  selectedColor: Color(0xFF694ACD),
                  enable: true,
                  unselectedColor: Color(0x1A694ACD),
                ),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(7.h),
                    topLeft: Radius.circular(7.h)),
                color: Color(0x26694ACD),
              )
            ],
            // series: <ChartSeries<ChartData, String>>[
            //   ColumnSeries<ChartData, String>(
            //     dataSource: data,
            //     xValueMapper: (ChartData data, _) => data.category,
            //     yValueMapper: (ChartData data, _) => data.value,
            //     name: 'Insulin',
            //     selectionBehavior: SelectionBehavior(
            //       selectedColor: Color(0xFF694ACD),
            //       enable: true,
            //       unselectedColor:Color(0x1A694ACD),
            //     ),
            //     borderRadius: BorderRadius.only(topRight: Radius.circular(getHorizontalSize(7)),topLeft: Radius.circular(getHorizontalSize(7))),
            //     color: Color(0x26694ACD),
            //   )
            //
            // ],
          )),
        ],
      ),
    );
    // return Column(children: [
    //   Container(
    //       padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 14.v),
    //       decoration: AppDecoration.outlineGray
    //           .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
    //       child: Column(
    //           mainAxisSize: MainAxisSize.min,
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           children: [
    //             Row(
    //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                 children: [
    //                   Column(
    //                       crossAxisAlignment: CrossAxisAlignment.start,
    //                       children: [
    //                         Text("lbl_statistics".tr,
    //                             style: CustomTextStyles.bodyLargeInterGray600),
    //                         SizedBox(height: 9.v),
    //                         Text("lbl_monthly_revenue".tr,
    //                             style: CustomTextStyles.titleMediumInter)
    //                       ]),
    //                   Padding(
    //                       padding: EdgeInsets.symmetric(vertical: 6.v),
    //                       child: CustomDropDown(
    //                           width: 120.h,
    //                           hintText: "lbl_monthly".tr,
    //                           items: controller.historyTransactionScreenModelObj
    //                               .value.dropdownItemList.value,
    //                           onChanged: (value) {
    //                             controller.onSelected(value);
    //                           }))
    //                 ]),
    //             SizedBox(height: 11.v),
    //             Divider(color: appTheme.gray200),
    //             SizedBox(height: 10.v),
    //
    //             // BarChart(
    //             //   BarChartData(
    //             //     barGroups: _chartGroups(),
    //             //     borderData: FlBorderData(
    //             //         border: const Border(bottom: BorderSide(), left: BorderSide())),
    //             //     gridData: FlGridData(show: false),
    //             //     titlesData: FlTitlesData(
    //             //       bottomTitles: AxisTitles(sideTitles: _bottomTitles),
    //             //       leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
    //             //       topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
    //             //       rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
    //             //     ),
    //             //   ),
    //             // ),
    //             // Column(children: [
    //             //   Row(mainAxisAlignment: MainAxisAlignment.center, children: [
    //             //     Column(
    //             //         crossAxisAlignment: CrossAxisAlignment.end,
    //             //         children: [
    //             //           Text("lbl_3k".tr,
    //             //               style: CustomTextStyles.bodyMediumInterGray600),
    //             //           SizedBox(height: 41.v),
    //             //           Align(
    //             //               alignment: Alignment.center,
    //             //               child: Text("lbl_2k".tr,
    //             //                   style:
    //             //                       CustomTextStyles.bodyMediumInterGray600)),
    //             //           SizedBox(height: 42.v),
    //             //           Text("lbl_1k".tr,
    //             //               style: CustomTextStyles.bodyMediumInterGray600),
    //             //           SizedBox(height: 42.v),
    //             //           Text("lbl_0".tr,
    //             //               style: CustomTextStyles.bodyMediumInterGray600)
    //             //         ]),
    //             //     Padding(
    //             //         padding: EdgeInsets.only(left: 8.h, top: 8.v),
    //             //         child: Column(children: [
    //             //           Divider(color: appTheme.gray200),
    //             //           SizedBox(height: 1.v),
    //             //           Align(
    //             //               alignment: Alignment.centerRight,
    //             //               child: Container(
    //             //                   height: 41.v,
    //             //                   width: 68.h,
    //             //                   margin: EdgeInsets.only(right: 84.h),
    //             //                   child: Stack(
    //             //                       alignment: Alignment.topCenter,
    //             //                       children: [
    //             //                         CustomImageView(
    //             //                             imagePath:
    //             //                                 ImageConstant.imgTelevision,
    //             //                             height: 41.v,
    //             //                             width: 68.h,
    //             //                             alignment: Alignment.center),
    //             //                         Align(
    //             //                             alignment: Alignment.topCenter,
    //             //                             child: Padding(
    //             //                                 padding:
    //             //                                     EdgeInsets.only(top: 8.v),
    //             //                                 child: Text("lbl_2_313".tr,
    //             //                                     style: CustomTextStyles
    //             //                                         .bodyLargeInterWhiteA700)))
    //             //                       ]))),
    //             //           SizedBox(height: 1.v),
    //             //           SizedBox(
    //             //               height: 140.v,
    //             //               width: 339.h,
    //             //               child: Stack(
    //             //                   alignment: Alignment.bottomCenter,
    //             //                   children: [
    //             //                     Align(
    //             //                         alignment: Alignment.bottomCenter,
    //             //                         child: SizedBox(
    //             //                             width: 339.h,
    //             //                             child: Divider(
    //             //                                 color: appTheme.gray200))),
    //             //                     Align(
    //             //                         alignment: Alignment.bottomCenter,
    //             //                         child: Padding(
    //             //                             padding:
    //             //                                 EdgeInsets.only(bottom: 65.v),
    //             //                             child: SizedBox(
    //             //                                 width: 339.h,
    //             //                                 child: Divider(
    //             //                                     color: appTheme.gray200)))),
    //             //                     Align(
    //             //                         alignment: Alignment.topCenter,
    //             //                         child: Padding(
    //             //                             padding: EdgeInsets.only(top: 15.v),
    //             //                             child: SizedBox(
    //             //                                 width: 339.h,
    //             //                                 child: Divider(
    //             //                                     color: appTheme.gray200)))),
    //             //                     Align(
    //             //                         alignment: Alignment.centerRight,
    //             //                         child: Padding(
    //             //                             padding:
    //             //                                 EdgeInsets.only(right: 1.h),
    //             //                             child: Row(
    //             //                                 mainAxisAlignment:
    //             //                                     MainAxisAlignment.center,
    //             //                                 crossAxisAlignment:
    //             //                                     CrossAxisAlignment.end,
    //             //                                 mainAxisSize: MainAxisSize.min,
    //             //                                 children: [
    //             //                                   Container(
    //             //                                       height: 65.v,
    //             //                                       width: 26.h,
    //             //                                       margin: EdgeInsets.only(
    //             //                                           top: 73.v,
    //             //                                           bottom: 1.v),
    //             //                                       decoration: BoxDecoration(
    //             //                                           color: appTheme
    //             //                                               .deepPurple5001,
    //             //                                           borderRadius:
    //             //                                               BorderRadius.vertical(
    //             //                                                   top: Radius
    //             //                                                       .circular(
    //             //                                                           7.h)))),
    //             //                                   Container(
    //             //                                       height: 139.v,
    //             //                                       width: 26.h,
    //             //                                       margin: EdgeInsets.only(
    //             //                                           left: 22.h),
    //             //                                       decoration: BoxDecoration(
    //             //                                           color: theme
    //             //                                               .colorScheme
    //             //                                               .primary,
    //             //                                           borderRadius:
    //             //                                               BorderRadius.vertical(
    //             //                                                   top: Radius
    //             //                                                       .circular(
    //             //                                                           7.h)))),
    //             //                                   Padding(
    //             //                                       padding: EdgeInsets.only(
    //             //                                           left: 23.h,
    //             //                                           top: 103.v,
    //             //                                           bottom: 1.v),
    //             //                                       child: CustomTextFormField(
    //             //                                           width: 26.h,
    //             //                                           controller: controller
    //             //                                               .disabledBarController,
    //             //                                           borderDecoration:
    //             //                                               TextFormFieldStyleHelper
    //             //                                                   .fillDeepPurple,
    //             //                                           fillColor: appTheme
    //             //                                               .deepPurple5001)),
    //             //                                   Container(
    //             //                                       height: 94.v,
    //             //                                       width: 26.h,
    //             //                                       margin: EdgeInsets.only(
    //             //                                           left: 29.h,
    //             //                                           top: 45.v),
    //             //                                       decoration: BoxDecoration(
    //             //                                           color: appTheme
    //             //                                               .deepPurple5001,
    //             //                                           borderRadius:
    //             //                                               BorderRadius.vertical(
    //             //                                                   top: Radius
    //             //                                                       .circular(
    //             //                                                           7.h))))
    //             //                                 ]))),
    //             //                     Align(
    //             //                         alignment: Alignment.bottomLeft,
    //             //                         child: Container(
    //             //                             height: 89.v,
    //             //                             width: 26.h,
    //             //                             margin: EdgeInsets.only(
    //             //                                 left: 107.h, bottom: 1.v),
    //             //                             decoration: BoxDecoration(
    //             //                                 color: appTheme.deepPurple5001,
    //             //                                 borderRadius:
    //             //                                     BorderRadius.vertical(
    //             //                                         top: Radius.circular(
    //             //                                             7.h))))),
    //             //                     Align(
    //             //                         alignment: Alignment.bottomLeft,
    //             //                         child: Padding(
    //             //                             padding: EdgeInsets.only(
    //             //                                 left: 1.h, bottom: 1.v),
    //             //                             child: Row(children: [
    //             //                               Container(
    //             //                                   height: 103.v,
    //             //                                   width: 26.h,
    //             //                                   decoration: BoxDecoration(
    //             //                                       color: appTheme
    //             //                                           .deepPurple5001,
    //             //                                       borderRadius:
    //             //                                           BorderRadius.vertical(
    //             //                                               top: Radius
    //             //                                                   .circular(
    //             //                                                       7.h)))),
    //             //                               Padding(
    //             //                                   padding: EdgeInsets.only(
    //             //                                       left: 28.h, top: 57.v),
    //             //                                   child: CustomTextFormField(
    //             //                                       width: 26.h,
    //             //                                       controller: controller
    //             //                                           .disabledBarController1,
    //             //                                       textInputAction:
    //             //                                           TextInputAction.done,
    //             //                                       borderDecoration:
    //             //                                           TextFormFieldStyleHelper
    //             //                                               .fillDeepPurple,
    //             //                                       fillColor: appTheme
    //             //                                           .deepPurple5001))
    //             //                             ])))
    //             //                   ]))
    //             //         ]))
    //             //   ]),
    //             //   SizedBox(height: 6.v),
    //             //   Align(
    //             //       alignment: Alignment.centerRight,
    //             //       child: Padding(
    //             //           padding: EdgeInsets.only(left: 26.h),
    //             //           child: Row(
    //             //               mainAxisAlignment: MainAxisAlignment.end,
    //             //               children: [
    //             //                 Text("lbl_mon".tr,
    //             //                     style: theme.textTheme.bodySmall),
    //             //                 Padding(
    //             //                     padding: EdgeInsets.only(left: 26.h),
    //             //                     child: Text("lbl_tue".tr,
    //             //                         style: theme.textTheme.bodySmall)),
    //             //                 Padding(
    //             //                     padding: EdgeInsets.only(left: 26.h),
    //             //                     child: Text("lbl_wed".tr,
    //             //                         style: theme.textTheme.bodySmall)),
    //             //                 Padding(
    //             //                     padding: EdgeInsets.only(left: 26.h),
    //             //                     child: Text("lbl_thu".tr,
    //             //                         style: theme.textTheme.bodySmall)),
    //             //                 Padding(
    //             //                     padding: EdgeInsets.only(left: 26.h),
    //             //                     child: Text("lbl_fri".tr,
    //             //                         style: theme.textTheme.bodySmall)),
    //             //                 Padding(
    //             //                     padding: EdgeInsets.only(left: 28.h),
    //             //                     child: Text("lbl_sat".tr,
    //             //                         style: theme.textTheme.bodySmall)),
    //             //                 Spacer(),
    //             //                 Text("lbl_sun".tr,
    //             //                     style: theme.textTheme.bodySmall)
    //             //               ])))
    //             // ])
    //           ])),
    //   SizedBox(height: 21.v),
    //   Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //         Text("msg_transaction_history".tr,
    //             style: CustomTextStyles.titleLargeBlack90001),
    //         GestureDetector(
    //             onTap: () {
    //               onTapTxtViewAll();
    //             },
    //             child: Padding(
    //                 padding: EdgeInsets.only(bottom: 4.v),
    //                 child: Text("lbl_view_all".tr,
    //                     style: CustomTextStyles.bodyMediumBlack90001_1)))
    //       ])
    // ]);
  }

  /// Section Widget
  Widget _buildTransactionComponentSection() {
    return Obx(() => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 16.v);
        },
        itemCount: controller.historyTransactionScreenModelObj.value
            .transactioncomponentsectionItemList.value.length,
        itemBuilder: (context, index) {
          TransactioncomponentsectionItemModel model = controller
              .historyTransactionScreenModelObj
              .value
              .transactioncomponentsectionItemList
              .value[index];
          return animationFunction(
              index,
              TransactioncomponentsectionItemWidget(model,
                  onTapTransactionComponent: () {
                onTapTransactionComponent();
              }));
        }));
  }

  /// Navigates to the historyTransactionScreen when the action is triggered.
  onTapTransactionComponent() {
    Get.toNamed(AppRoutes.historyTransactionScreen);
  }

  /// Navigates to the transactionHistory1Screen when the action is triggered.
  onTapTxtViewAll() {
    Get.toNamed(
      AppRoutes.transactionHistory1Screen,
    );
  }
}

class ChartData {
  final String category;
  final double value;
  bool isSelected;

  ChartData(this.category, this.value, {this.isSelected = false});
}
