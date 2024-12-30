import '../controller/wallet_screen_controller.dart';
import '../models/grosscard_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_salary_management_app/core/app_export.dart';

// ignore: must_be_immutable
class GrosscardItemWidget extends StatelessWidget {
  GrosscardItemWidget(
    this.grosscardItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  GrosscardItemModel grosscardItemModelObj;

  var controller = Get.find<WalletScreenController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.h),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      width: 190.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => Text(
              grosscardItemModelObj.label!.value,
              style: CustomTextStyles.bodySmallSFProDisplaySecondaryContainer,
            ),
          ),
          SizedBox(height: 9.v),
          Obx(
            () => Text(
              grosscardItemModelObj.price!.value,
              style: CustomTextStyles.titleLargePrimaryContainer,
            ),
          ),
          SizedBox(height: 19.v),
          Expanded(
            child: Obx(
              () => CustomImageView(
                imagePath: grosscardItemModelObj.grossIncomeImage!.value,
                height: 48.v,
                width: 158.h,
              ),
            ),
          ),
          SizedBox(height: 8.v),
          Container(
            width: 59.25.h,
            height: 24.h,
            // padding:  EdgeInsets.all(8.h),
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: Color(0xFFD7DBE5)),
                borderRadius: BorderRadius.circular(16.h),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.icon,
                  height: 4.h,
                  width: 6.254.h,
                ),
                SizedBox(width: 4.h),
                Text(
                  '6,03%',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xFF5E6578),
                    fontSize: 10.fSize,
                    fontFamily: 'Plus Jakarta Sans',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          // Expanded(
          //   child: Container(
          //     width: 59.25,
          //     height: 24,
          //     padding: const EdgeInsets.all(8),
          //     decoration: ShapeDecoration(
          //       shape: RoundedRectangleBorder(
          //         side: BorderSide(width: 1, color: Color(0xFFD7DBE5)),
          //         borderRadius: BorderRadius.circular(16),
          //       ),
          //     ),
          //     child: Row(
          //       mainAxisSize: MainAxisSize.min,
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       crossAxisAlignment: CrossAxisAlignment.center,
          //       children: [
          //         CustomImageView(
          //           imagePath: ImageConstant.icon,
          //           height: 6.25.h,
          //           width: 4,),
          //         const SizedBox(width: 4),
          //         Text(
          //           '6,03%',
          //           textAlign: TextAlign.right,
          //           style: TextStyle(
          //             color: Color(0xFF5E6578),
          //             fontSize: 10.fSize,
          //             fontFamily: 'Plus Jakarta Sans',
          //             fontWeight: FontWeight.w600,
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // )
          // CustomOutlinedButton(
          //   height: 24.v,
          //   width: 59.h,
          //   text: "lbl_6_03".tr,
          //   buttonStyle: CustomButtonStyles.outlineGrayTL12,
          //   buttonTextStyle: theme.textTheme.labelMedium!,
          // ),
        ],
      ),
    );
  }
}
