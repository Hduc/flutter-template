import '../controller/history_transaction_screen_controller.dart';
import '../models/transactioncomponentsection_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_salary_management_app/core/app_export.dart';

// ignore: must_be_immutable
class TransactioncomponentsectionItemWidget extends StatelessWidget {
  TransactioncomponentsectionItemWidget(
    this.transactioncomponentsectionItemModelObj, {
    Key? key,
    this.onTapTransactionComponent,
  }) : super(
          key: key,
        );

  TransactioncomponentsectionItemModel transactioncomponentsectionItemModelObj;

  var controller = Get.find<HistoryTransactionScreenController>();

  VoidCallback? onTapTransactionComponent;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapTransactionComponent!.call();
      },
      child: Container(
        height: 80.v,
        padding: EdgeInsets.only(left: 8.h,right: 16.h),
        // padding: EdgeInsets.symmetric(
        //   horizontal: 7.h,
        //   vertical: 11.v,
        // ),
        decoration: AppDecoration.outlineGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
        child: Row(
          children: [
            Obx(
              () =>  CustomImageView(
                width: 48.adaptSize,
                height: 48.adaptSize,
                imagePath:
                transactioncomponentsectionItemModelObj.icPhone!.value,
              ),
              //     CustomIconButton(
              //   height: 48.adaptSize,
              //   width: 48.adaptSize,
              //   padding: EdgeInsets.all(12.h),
              //   child: CustomImageView(
              //     imagePath:
              //         transactioncomponentsectionItemModelObj.icPhone!.value,
              //   ),
              // ),
            ),
            SizedBox(width: 16.h),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(
                    () => Text(
                      transactioncomponentsectionItemModelObj.userName!.value,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                  SizedBox(height: 7.v),
                  Obx(
                    () => Text(
                      transactioncomponentsectionItemModelObj
                          .transactionStatus!.value,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 0.v,
                right: 0.h,
                bottom: 0.v,
              ),
              child: Obx(
                () => Text(
                  transactioncomponentsectionItemModelObj
                      .transactionAmount!.value,
                  style: theme.textTheme.titleMedium,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
