import '../controller/transaction_history_controller.dart';
import '../models/transactioncomponent2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_salary_management_app/core/app_export.dart';

// ignore: must_be_immutable
class Transactioncomponent2ItemWidget extends StatelessWidget {
  Transactioncomponent2ItemWidget(
    this.transactioncomponent2ItemModelObj, {
    Key? key,
    this.onTapTransactionComponent,
  }) : super(
          key: key,
        );

  Transactioncomponent2ItemModel transactioncomponent2ItemModelObj;

  var controller = Get.find<TransactionHistoryController>();

  VoidCallback? onTapTransactionComponent;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapTransactionComponent!.call();
      },
      child: Container(
        padding: EdgeInsets.only(left: 8.h, right: 16.h),
        // padding: EdgeInsets.symmetric(
        //   horizontal: 7.h,
        //   vertical: 10.v,
        // ),
        height: 80.v,
        width: double.infinity,
        decoration: AppDecoration.outlineGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.s,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 1.v,
                bottom: 4.v,
              ),
              child: Obx(
                () => CustomImageView(
                  imagePath: transactioncomponent2ItemModelObj
                      .phoneIcon!.value,
                  width: 48.adaptSize,
                  height: 48.adaptSize,
                ),
                //     CustomIconButton(
                //   height: 48.adaptSize,
                //   width: 48.adaptSize,
                //   padding: EdgeInsets.all(12.h),
                //   child: CustomImageView(
                //     imagePath: transactioncomponent2ItemModelObj
                //         .phoneIcon!.value,
                //   ),
                // ),
              ),
            ),
            SizedBox(width: 16.h),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(
                    () => Text(
                      transactioncomponent2ItemModelObj.userName!.value,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                  SizedBox(height: 7.v),
                  Obx(
                    () => Text(
                      transactioncomponent2ItemModelObj
                          .transactionStatus!.value,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
            ),
            Obx(
              () => Text(
                transactioncomponent2ItemModelObj.transactionAmount!.value,
                style: theme.textTheme.titleMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
