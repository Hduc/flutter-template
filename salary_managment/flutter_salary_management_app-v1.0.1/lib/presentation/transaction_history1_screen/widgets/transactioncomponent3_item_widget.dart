import '../controller/transaction_history1_controller.dart';
import '../models/transactioncomponent3_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_salary_management_app/core/app_export.dart';

// ignore: must_be_immutable
class Transactioncomponent3ItemWidget extends StatelessWidget {
  Transactioncomponent3ItemWidget(
    this.transactioncomponent3ItemModelObj, {
    Key? key,
    this.onTapTransactionComponent,
  }) : super(
          key: key,
        );

  Transactioncomponent3ItemModel transactioncomponent3ItemModelObj;

  var controller = Get.find<TransactionHistory1Controller>();

  VoidCallback? onTapTransactionComponent;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapTransactionComponent!.call();
      },
      child: Container(
        height: 80.v,
        padding: EdgeInsets.only(
          left: 8.h,
          right: 16.h,












        ),
        // padding: EdgeInsets.symmetric(
        //   horizontal: 7.h,
        //   vertical: 10.v,
        // ),
        decoration: AppDecoration.outlineGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
        child: Row(
          children: [
            Obx(
              () =>  CustomImageView(
                height: 48.adaptSize,
                width: 48.adaptSize,
                imagePath: transactioncomponent3ItemModelObj
                    .phoneIcon!.value,
              ),
              //     CustomIconButton(
              //   height: 48.adaptSize,
              //   width: 48.adaptSize,
              //   padding: EdgeInsets.all(12.h),
              //   child: CustomImageView(
              //     imagePath: transactioncomponent3ItemModelObj
              //         .phoneIcon!.value,
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
                      transactioncomponent3ItemModelObj.userName!.value,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                  SizedBox(height: 13.v),
                  Obx(
                    () => Text(
                      transactioncomponent3ItemModelObj
                          .transactionStatus!.value,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
            ),
            Obx(
              () => Text(
                transactioncomponent3ItemModelObj.transactionAmount!.value,
                style: theme.textTheme.titleMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
