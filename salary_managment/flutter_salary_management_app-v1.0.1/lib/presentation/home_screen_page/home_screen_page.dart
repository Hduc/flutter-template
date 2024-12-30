import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../home_screen_page/widgets/transactioncomponent_item_widget.dart';
import 'controller/home_screen_controller.dart';
import 'models/home_screen_model.dart';
import 'models/transactioncomponent_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_salary_management_app/core/app_export.dart';
import 'package:flutter_salary_management_app/widgets/custom_elevated_button.dart';
import 'package:flutter_salary_management_app/widgets/custom_icon_button.dart';
import 'package:flutter_salary_management_app/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class HomeScreenPage extends StatelessWidget {
  HomeScreenPage({Key? key}) : super(key: key);

  HomeScreenController controller =
      Get.put(HomeScreenController(HomeScreenModel().obs));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 5.v),
        child: Column(children: [
          SizedBox(height: 27.v),
          _buildNameAndNotification(),
          Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.only(bottom: 20.v),
            physics: BouncingScrollPhysics(),
            child: AnimationLimiter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: AnimationConfiguration.toStaggeredList(
                  duration: const Duration(milliseconds: 375),
                  childAnimationBuilder: (widget) => SlideAnimation(
                    horizontalOffset: 50.0,
                    child: FadeInAnimation(
                      child: widget,
                    ),
                  ),
                  children: [
                    SizedBox(height: 12.v),
                    _buildSalary(),
                    SizedBox(height: 16.v),
                    _buildIncomeAndExpense(),
                    SizedBox(height: 16.v),
                    _buildChart(),
                    SizedBox(height: 19.v),
                    _buildHeadline(),
                    SizedBox(height: 20.v),
                    _buildTransactionComponent(),
                  ],
                ),
              ),
            ),
          ))
        ]),
      ),
    ));
  }

  /// Section Widget
  Widget _buildNameAndNotification() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Text("msg_hello_ronald_richards".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.headlineSmall!.copyWith(height: 1.46)),
          ),
          Padding(
              padding: EdgeInsets.only(top: 11.v, bottom: 18.v),
              child: CustomIconButton(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  padding: EdgeInsets.all(7.h),
                  decoration: IconButtonStyleHelper.fillGray,
                  onTap: () {
                    onTapBtnIcAlert();
                  },
                  child: CustomImageView(imagePath: ImageConstant.imgIcAlert)))
        ]);
  }

  /// Section Widget
  Widget _buildSalary() {
    return Container(
        padding: EdgeInsets.all(15.h),
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 4.v),
              Text("lbl_current_salary".tr, style: theme.textTheme.titleMedium),
              SizedBox(height: 19.v),
              Text("lbl_32_000_00".tr, style: theme.textTheme.headlineMedium),
              SizedBox(height: 19.v),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Expanded(
                    child: CustomElevatedButton(
                        text: "lbl_withdraw".tr,
                        margin: EdgeInsets.only(right: 8.h))),
                Expanded(
                    child: CustomOutlinedButton(
                        text: "lbl_deposit".tr,
                        margin: EdgeInsets.only(left: 8.h)))
              ])
            ]));
  }

  /// Section Widget
  Widget _buildIncomeAndExpense() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Expanded(
          child: Container(
              margin: EdgeInsets.only(right: 8.h),
              padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 16.v),
              decoration: AppDecoration.fillDeeppurple50
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
              child: Row(children: [
                CustomIconButton(
                    height: 57.adaptSize,
                    width: 57.adaptSize,
                    padding: EdgeInsets.all(14.h),
                    decoration: IconButtonStyleHelper.fillIndigo,
                    child: CustomImageView(
                        imagePath: ImageConstant.imgIcArrowSort)),
                Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("lbl_income".tr,
                              style: CustomTextStyles.bodyLargeBlack90001),
                          SizedBox(height: 11.v),
                          Text("lbl_2500_00".tr,
                              style: CustomTextStyles.titleMediumBlack90001)
                        ]))
              ]))),
      Expanded(
          child: Container(
              margin: EdgeInsets.only(left: 8.h),
              padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 16.v),
              decoration: AppDecoration.fillRed
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
              child: Row(children: [
                CustomIconButton(

                    height: 57.adaptSize,
                    width: 57.adaptSize,
                    padding: EdgeInsets.all(14.h),
                    decoration: IconButtonStyleHelper.fillPink,
                    child: CustomImageView(
                        imagePath: ImageConstant.imgIcArrowSortWhiteA700)),
                Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("lbl_spent".tr,
                              style: CustomTextStyles.bodyLargeBlack90001),
                          SizedBox(height: 10.v),
                          Text("lbl_500_00".tr,
                              style: CustomTextStyles.titleMediumBlack90001),
                        ]))
              ])))
    ]);
  }

  /// Section Widget
  Widget _buildChart() {
    return Container(
      width: double.infinity,
      height: 323.v,
      padding: EdgeInsets.all(16.h),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xFFE7E7E7)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("lbl_overview".tr,
                  style: CustomTextStyles.bodyLargeInterGray500),
              SizedBox(height: 3.v),
              Text("lbl_sales".tr,
                  style: CustomTextStyles.titleLargeInterErrorContainer),
            ]),
            CustomOutlinedButton(
                height: 36.v,
                width: 101.h,
                text: "lbl_view_details".tr,
                margin: EdgeInsets.only(top: 8.v, bottom: 7.v),
                buttonStyle: CustomButtonStyles.outlineGray,
                buttonTextStyle: CustomTextStyles.bodyMediumInterBlack90001)
          ]),
          SizedBox(height: 15.v),
          Expanded(
            child: LineChart(
              duration: Duration(milliseconds: 300),
              // swapAnimationDuration: const Duration(milliseconds: 250),
              // swapAnimationCurve: Curves.easeInOut,
              LineChartData(
                rangeAnnotations: RangeAnnotations(horizontalRangeAnnotations: [
                  HorizontalRangeAnnotation(y1: 1, y2: 2)
                ]),
                gridData: FlGridData(
                    show: true,
                    drawVerticalLine: false,
                    drawHorizontalLine: true,
                    getDrawingHorizontalLine: (value) {
                      return FlLine(
                        color: Colors.grey.withOpacity(0.5),
                        strokeWidth: 1,
                      );
                    }),
                lineTouchData: LineTouchData(
                  enabled: true,
                ),
                extraLinesData: ExtraLinesData(horizontalLines: [
                  HorizontalLine(y: 0, color: Colors.grey.withOpacity(0.5))
                ]),
                borderData: FlBorderData(show: false),
                lineBarsData: [
                  // The red line
                  LineChartBarData(
                    dotData: FlDotData(show: false),
                    spots: controller.dummyData1,
                    isCurved: true,
                    barWidth: 3,
                    color: const Color(0xFFFF718B),
                  ),
                  LineChartBarData(
                    dotData: FlDotData(show: false),
                    spots: controller.dummyData2,
                    isCurved: true,
                    barWidth: 3,
                    color: const Color(0xFF7C49DE),
                  ),
                  // The orange line
                ],
              ),
            ),
          ),
        ],
      ),
    );
    // return Container(
    //     padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 14.v),
    //     decoration: AppDecoration.outlineGray
    //         .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
    //     child: Column(mainAxisSize: MainAxisSize.min, children: [
    //       Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
    //         Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
    //           Text("lbl_overview".tr,
    //               style: CustomTextStyles.bodyLargeInterGray500),
    //           SizedBox(height: 3.v),
    //           Text("lbl_sales".tr,
    //               style: CustomTextStyles.titleLargeInterErrorContainer),
    //
    //
    //
    //         ]),
    //         CustomOutlinedButton(
    //             height: 36.v,
    //             width: 101.h,
    //             text: "lbl_view_details".tr,
    //             margin: EdgeInsets.only(top: 8.v, bottom: 7.v),
    //             buttonStyle: CustomButtonStyles.outlineGray,
    //             buttonTextStyle: CustomTextStyles.bodyMediumInterBlack90001)
    //       ]),
    //       SizedBox(height: 15.v),
    //
    //       // Column(children: [
    //       //   SizedBox(
    //       //       height: 189.v,
    //       //       width: 364.h,
    //       //       child: Stack(alignment: Alignment.topCenter, children: [
    //       //         Align(
    //       //             alignment: Alignment.bottomLeft,
    //       //             child: Column(
    //       //                 mainAxisSize: MainAxisSize.min,
    //       //                 crossAxisAlignment: CrossAxisAlignment.start,
    //       //                 children: [
    //       //                   Text("lbl_50k".tr,
    //       //                       style:
    //       //                           CustomTextStyles.bodyLargeInterBluegray600),
    //       //                   SizedBox(height: 31.v),
    //       //                   Text("lbl_10k".tr,
    //       //                       style:
    //       //                           CustomTextStyles.bodyLargeInterBluegray600),
    //       //                   SizedBox(height: 31.v),
    //       //                   Text("lbl_05k".tr,
    //       //                       style:
    //       //                           CustomTextStyles.bodyLargeInterBluegray600),
    //       //                   SizedBox(height: 31.v),
    //       //                   Text("lbl_0".tr,
    //       //                       style:
    //       //                           CustomTextStyles.bodyLargeInterBluegray600)
    //       //                 ])),
    //       //         Align(
    //       //             alignment: Alignment.topCenter,
    //       //             child: SizedBox(
    //       //                 height: 179.v,
    //       //                 width: 364.h,
    //       //                 child: Stack(
    //       //                     alignment: Alignment.centerRight,
    //       //                     children: [
    //       //                       Align(
    //       //                           alignment: Alignment.topCenter,
    //       //                           child: Padding(
    //       //                               padding: EdgeInsets.only(top: 1.v),
    //       //                               child: Column(
    //       //                                   mainAxisSize: MainAxisSize.min,
    //       //                                   crossAxisAlignment:
    //       //                                       CrossAxisAlignment.end,
    //       //                                   children: [
    //       //                                     Divider(color: appTheme.indigo50),
    //       //                                     SizedBox(height: 24.v),
    //       //                                     Divider(
    //       //                                         color: appTheme.indigo50,
    //       //                                         indent: 37.h),
    //       //                                     SizedBox(height: 32.v),
    //       //                                     Container(
    //       //                                         margin: EdgeInsets.only(
    //       //                                             left: 37.h),
    //       //                                         padding: EdgeInsets.symmetric(
    //       //                                             vertical: 18.v),
    //       //                                         decoration: BoxDecoration(
    //       //                                             image: DecorationImage(
    //       //                                                 image: fs.Svg(
    //       //                                                     ImageConstant
    //       //                                                         .imgGroup24),
    //       //                                                 fit: BoxFit.cover)),
    //       //                                         child: Column(
    //       //                                             mainAxisAlignment:
    //       //                                                 MainAxisAlignment
    //       //                                                     .center,
    //       //                                             children: [
    //       //                                               Divider(
    //       //                                                   color: appTheme
    //       //                                                       .indigo50),
    //       //                                               SizedBox(height: 50.v),
    //       //                                               Divider(
    //       //                                                   color: appTheme
    //       //                                                       .indigo50)
    //       //                                             ]))
    //       //                                   ]))),
    //       //                       CustomImageView(
    //       //                           imagePath:
    //       //                               ImageConstant.imgActiveLineElements,
    //       //                           height: 179.v,
    //       //                           width: 18.h,
    //       //                           alignment: Alignment.centerRight,
    //       //                           margin: EdgeInsets.only(right: 125.h))
    //       //                     ]))),
    //       //         Align(
    //       //             alignment: Alignment.bottomRight,
    //       //             child: Padding(
    //       //                 padding: EdgeInsets.only(bottom: 9.v),
    //       //                 child: SizedBox(
    //       //                     width: 327.h,
    //       //                     child: Divider(color: appTheme.indigo50))))
    //       //       ])),
    //       //   SizedBox(height: 10.v),
    //       //   Align(
    //       //       alignment: Alignment.centerRight,
    //       //       child: Padding(
    //       //           padding: EdgeInsets.only(left: 37.h),
    //       //           child: Row(
    //       //               mainAxisAlignment: MainAxisAlignment.end,
    //       //               children: [
    //       //                 Text("lbl_jan".tr,
    //       //                     style:
    //       //                         CustomTextStyles.bodyMediumInterBluegray600),
    //       //                 Spacer(flex: 20),
    //       //                 Text("lbl_feb".tr,
    //       //                     style:
    //       //                         CustomTextStyles.bodyMediumInterBluegray600),
    //       //                 Spacer(flex: 20),
    //       //                 Text("lbl_mar".tr,
    //       //                     style:
    //       //                         CustomTextStyles.bodyMediumInterBluegray600),
    //       //                 Spacer(flex: 20),
    //       //                 Text("lbl_apr".tr,
    //       //                     style:
    //       //                         CustomTextStyles.bodyMediumInterBluegray600),
    //       //                 Spacer(flex: 20),
    //       //                 Text("lbl_may".tr,
    //       //                     style:
    //       //                         CustomTextStyles.bodyMediumInterBluegray600),
    //       //                 Spacer(flex: 20),
    //       //                 Text("lbl_jun".tr,
    //       //                     style:
    //       //                         CustomTextStyles.bodyMediumInterBluegray600)
    //       //               ])))
    //       // ]),
    //       SizedBox(height: 6.v)
    //     ]));
  }

  /// Section Widget
  Widget _buildHeadline() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text("msg_recent_transaction".tr,
          style: CustomTextStyles.titleLargeBlack90001),
      GestureDetector(
          onTap: () {
            onTapTxtViewAll();
          },
          child: Padding(
              padding: EdgeInsets.only(top: 3.v, bottom: 2.v),
              child: Text("lbl_view_all".tr,
                  style: CustomTextStyles.bodyMediumBlack90001_1)))
    ]);
  }

  /// Section Widget
  Widget _buildTransactionComponent() {
    return Obx(() => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 16.v);
        },
        itemCount: controller
            .homeScreenModelObj.value.transactioncomponentItemList.value.length,
        itemBuilder: (context, index) {
          TransactioncomponentItemModel model = controller.homeScreenModelObj
              .value.transactioncomponentItemList.value[index];
          return TransactioncomponentItemWidget(model,
              onTapTransactionComponent: () {
            onTapTransactionComponent();
          });
        }));
  }

  /// Navigates to the historyTransactionScreen when the action is triggered.
  onTapTransactionComponent() {
    Get.toNamed(AppRoutes.historyTransactionScreen);
  }

  /// Navigates to the notificationScreen when the action is triggered.
  onTapBtnIcAlert() {
    Get.toNamed(
      AppRoutes.notificationScreen,
    );
  }

  /// Navigates to the recentTransactionScreen when the action is triggered.
  onTapTxtViewAll() {
    Get.toNamed(
      AppRoutes.recentTransactionScreen,
    );
  }
}

class SalesData {
  SalesData(this.year, this.sales);

  final String year;
  final String sales;
}
