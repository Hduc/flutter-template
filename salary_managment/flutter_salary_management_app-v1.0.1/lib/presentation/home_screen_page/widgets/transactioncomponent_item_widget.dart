import '../controller/home_screen_controller.dart';
import '../models/transactioncomponent_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_salary_management_app/core/app_export.dart';

// ignore: must_be_immutable
class TransactioncomponentItemWidget extends StatelessWidget {
  TransactioncomponentItemWidget(
    this.transactioncomponentItemModelObj, {
    Key? key,
    this.onTapTransactionComponent,
  }) : super(
          key: key,
        );

  TransactioncomponentItemModel transactioncomponentItemModelObj;

  var controller = Get.find<HomeScreenController>();

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
                () => CustomImageView(
                  imagePath:
                  transactioncomponentItemModelObj.phoneIcon!.value,
                  height: 48.h,
                  width: 48.h,
                ),
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
                        transactioncomponentItemModelObj.userName!.value,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                    SizedBox(height: 7.v),
                    Obx(
                      () => Text(
                        transactioncomponentItemModelObj.transactionStatus!.value,
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
                  transactioncomponentItemModelObj.transactionAmount!.value,
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
