import '../controller/wallet_screen_controller.dart';
import '../models/transactioncomponentlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_salary_management_app/core/app_export.dart';

// ignore: must_be_immutable
class TransactioncomponentlistItemWidget extends StatelessWidget {
  TransactioncomponentlistItemWidget(
    this.transactioncomponentlistItemModelObj, {
    Key? key,
    this.onTapTransactionComponent,
  }) : super(
          key: key,
        );

  TransactioncomponentlistItemModel transactioncomponentlistItemModelObj;

  var controller = Get.find<WalletScreenController>();

  VoidCallback? onTapTransactionComponent;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapTransactionComponent!.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 7.h,
          vertical: 10.v,
        ),
        decoration: AppDecoration.outlineGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 4.v),
              child: Obx(
                () =>CustomImageView(
                  imagePath:
                  transactioncomponentlistItemModelObj.icPhone!.value,
                  height: 48.adaptSize,
                    width: 48.adaptSize,
                ),
                //     CustomIconButton(
                //   height: 48.adaptSize,
                //   width: 48.adaptSize,
                //   padding: EdgeInsets.all(12.h),
                //   child: CustomImageView(
                //     imagePath:
                //         transactioncomponentlistItemModelObj.icPhone!.value,
                //   ),
                // ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 16.h,
                  top: 0.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        transactioncomponentlistItemModelObj.userName!.value,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                    SizedBox(height: 7.v),
                    Obx(
                      () => Text(
                        transactioncomponentlistItemModelObj
                            .transactionStatus!.value,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 0.v,
                right: 8.h,
                bottom: 0.v,
              ),
              child: Obx(
                () => Text(
                  transactioncomponentlistItemModelObj.transactionAmount!.value,
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
