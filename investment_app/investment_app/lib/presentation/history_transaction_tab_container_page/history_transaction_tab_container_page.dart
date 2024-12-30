import 'controller/history_transaction_tab_container_controller.dart';
import 'models/history_transaction_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/presentation/history_activities_page/history_activities_page.dart';
import 'package:investment_app/presentation/history_transaction_page/history_transaction_page.dart';
import 'package:investment_app/widgets/custom_icon_button.dart';

class HistoryTransactionTabContainerPage extends StatelessWidget {
  HistoryTransactionTabContainerController controller = Get.put(
      HistoryTransactionTabContainerController(
          HistoryTransactionTabContainerModel().obs));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.lightBlue900,
      body: Container(
        width: size.width,
        decoration: AppDecoration.fillLightblue900,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                height: size.height,
                width: size.width,
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup14,
                      height: getVerticalSize(
                        251.00,
                      ),
                      width: getHorizontalSize(width),
                      alignment: Alignment.topLeft,
                    ),
                    SafeArea(
                      minimum: EdgeInsets.only(top: 40),
                      child: Padding(
                        padding: getPadding(left: 24, right: 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "lbl_history".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold3700.copyWith(
                                height: getVerticalSize(
                                  1.01,
                                ),
                              ),
                            ),
                            CustomIconButton(
                              height: 50,
                              width: 50,
                              variant: IconButtonVariant.FillWhiteA70014,
                              child: CustomImageView(
                                svgPath: ImageConstant.imgSearchWhiteA700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      child: Padding(
                        padding: getPadding(
                          left: 24,
                          top: 24,
                        ),
                        child: Text(
                          "lbl_history".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterBold32WhiteA700.copyWith(
                            height: getVerticalSize(
                              1.01,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: getMargin(
                        top: 130,
                      ),
                      child: Container(
                        decoration: AppDecoration.fillWhiteA700.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL32,
                        ),
                        child: TabBarView(
                          controller: controller.tabsController,
                          children: [
                            HistoryActivitiesPage(),
                            HistoryTransactionPage(),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: Container(
                        width: double.infinity,
                        height: 52,
                        margin: getMargin(
                          top: 110,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.whiteA700,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              8.00,
                            ),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: ColorConstant.gray9000f.withOpacity(0.2),
                              spreadRadius: getHorizontalSize(
                                0.00,
                              ),
                              blurRadius: getHorizontalSize(
                                24.00,
                              ),
                              offset: Offset(
                                0,
                                6,
                              ),
                            ),
                          ],
                        ),
                        child: TabBar(
                          controller: controller.tabsController,
                          tabs: [
                            Tab(
                              text: "lbl_activities".tr,
                            ),
                            Tab(
                              text: "lbl_transactions".tr,
                            ),
                          ],
                          indicatorPadding: EdgeInsets.all(4),
                          labelColor: ColorConstant.whiteA700,
                          labelStyle: TextStyle(
                              color: ColorConstant.whiteA700,
                              fontWeight: FontWeight.w700,
                              fontSize: 16),
                          unselectedLabelColor: ColorConstant.gray800,
                          unselectedLabelStyle: TextStyle(
                              color: ColorConstant.whiteA700,
                              fontWeight: FontWeight.w600,
                              fontSize: 16),
                          indicator: BoxDecoration(
                            color: ColorConstant.blue700,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                8.00,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
