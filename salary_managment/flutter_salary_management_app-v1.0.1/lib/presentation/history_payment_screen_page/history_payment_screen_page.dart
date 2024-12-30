import '../history_payment_screen_page/widgets/history_item_widget.dart';
import 'controller/history_payment_screen_controller.dart';
import 'models/history_item_model.dart';
import 'models/history_payment_screen_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_salary_management_app/core/app_export.dart';

// ignore: must_be_immutable
class HistoryPaymentScreenPage extends StatelessWidget {
  HistoryPaymentScreenPage({Key? key})
      : super(
          key: key,
        );

  HistoryPaymentScreenController controller =
      Get.put(HistoryPaymentScreenController(HistoryPaymentScreenModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                SizedBox(height: 18.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "msg_paycheck_history".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodyLargeSecondaryContainer
                            .copyWith(
                          height: 1.47.h,
                        ),
                      ),
                      SizedBox(height: 13.v),
                      _buildHistory(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHistory() {
    return Obx(
      () => ListView.separated(
        padding: EdgeInsets.only(bottom: 16.v),
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 16.v,
          );
        },
        itemCount: controller.historyPaymentScreenModelObj.value.historyItemList.value.length,
        itemBuilder: (context, index) {
          HistoryItemModel model = controller.historyPaymentScreenModelObj.value.historyItemList.value[index];
          return animationFunction(index, HistoryItemWidget(
            model,
          ));
        },
      ),
    );
  }
}
