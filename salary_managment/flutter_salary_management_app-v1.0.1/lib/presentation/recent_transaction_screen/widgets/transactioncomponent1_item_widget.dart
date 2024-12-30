import '../controller/recent_transaction_controller.dart';
import '../models/transactioncomponent1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_salary_management_app/core/app_export.dart';

// ignore: must_be_immutable
class Transactioncomponent1ItemWidget extends StatelessWidget {
  Transactioncomponent1ItemWidget(
    this.transactioncomponent1ItemModelObj, {
    Key? key,
    this.onTapTransactionComponent,
  }) : super(
          key: key,
        );

  Transactioncomponent1ItemModel transactioncomponent1ItemModelObj;

  var controller = Get.find<RecentTransactionController>();

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
                  imagePath: transactioncomponent1ItemModelObj.icPhone!.value,
                  height: 48.h,
                    width: 48.h,
                ),
                //     CustomIconButton(
                //   height: 48.adaptSize,
                //   width: 48.adaptSize,
                //   padding: EdgeInsets.all(12.h),
                //   child: CustomImageView(
                //     imagePath: transactioncomponent1ItemModelObj.icPhone!.value,
                //   ),
                // ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 16.h,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        transactioncomponent1ItemModelObj.userName!.value,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                    SizedBox(height: 7.v),
                    Obx(
                      () => Text(
                        transactioncomponent1ItemModelObj
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
                  transactioncomponent1ItemModelObj.transactionAmount!.value,
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
