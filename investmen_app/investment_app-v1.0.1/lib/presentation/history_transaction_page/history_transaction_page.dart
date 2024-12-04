import '../history_transaction_page/widgets/listellipse2832_item_widget.dart';
import 'controller/history_transaction_controller.dart';
import 'models/history_transaction_model.dart';
import 'models/listellipse2832_item_model.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';

class HistoryTransactionPage extends StatelessWidget {
  HistoryTransactionController controller =
      Get.put(HistoryTransactionController(HistoryTransactionModel().obs));

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      child: Padding(
        padding: getPadding(top: 36),
        child: SingleChildScrollView(
          child: Container(
            width: size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: getPadding(
                        left: 24,
                        top: 10,
                      ),
                      child: Text(
                        "msg_financial_transaction".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterBold16.copyWith(
                          height: getVerticalSize(
                            1.24,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: getHorizontalSize(
                        282.00,
                      ),
                      margin: getMargin(
                        left: 24,
                        top: 12,
                      ),
                      child: Text(
                        "msg_every_buy_sell".tr,
                        maxLines: null,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterRegular14WhiteA700.copyWith(
                          height: getVerticalSize(
                            1.19,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: size.width,
                      margin: getMargin(
                        top: 25,
                      ),
                      padding: getPadding(
                        left: 24,
                        top: 26,
                        right: 24,
                        bottom: 26,
                      ),
                      decoration: AppDecoration.fillGray100.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderTL32,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "msg_january_02_2023".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterBold14Gray800.copyWith(
                              height: getVerticalSize(
                                1.19,
                              ),
                            ),
                          ),
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
                              itemCount: controller.historyTransactionModelObj
                                  .value.listellipse2832ItemList.length,
                              itemBuilder: (context, index) {
                                Listellipse2832ItemModel model = controller
                                    .historyTransactionModelObj
                                    .value
                                    .listellipse2832ItemList[index];
                                return Listellipse2832ItemWidget(
                                  model,
                                );
                              },
                            ),
                          ),
                        ],
                      ).paddingOnly(bottom: 0),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
