import '../controller/history_payment_screen_controller.dart';
import '../models/history_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_salary_management_app/core/app_export.dart';

// ignore: must_be_immutable
class HistoryItemWidget extends StatelessWidget {
  HistoryItemWidget(
    this.historyItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  HistoryItemModel historyItemModelObj;

  var controller = Get.find<HistoryPaymentScreenController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.h),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Expanded(
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Transfer code: ',
                        style: TextStyle(
                          color: Color(0xFF7C7C7C),
                          fontSize: 13.fSize,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: '1266AE309UT',
                        style: TextStyle(
                          color: Color(0xFF7C49DE),
                          fontSize: 13.fSize,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.more,
                width: 24.adaptSize,
                height: 24.adaptSize,
              ),
            ],
          ),
          // Obx(
          //   () => CustomRadioButton(
          //     width: 364.h,
          //     text: "msg_transfer_code_1266ae309ut".tr,
          //     value: "msg_transfer_code_1266ae309ut".tr,
          //     groupValue: historyItemModelObj.radioGroup!.value,
          //     padding: EdgeInsets.symmetric(vertical: 3.v),
          //     isRightCheck: true,
          //     onChange: (value) {
          //       historyItemModelObj.radioGroup!.value = value;
          //     },
          //   ),
          // ),
          SizedBox(height: 22.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Obx(
              () => Text(
                historyItemModelObj.amount!.value,
                style: theme.textTheme.headlineMedium,
              ),
            ),
          ),
          SizedBox(height: 7.v),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Payment for:',
                        style: TextStyle(
                          color: Color(0xFF7C7C7C),
                          fontSize: 15.fSize,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: ' October 2024',
                        style: TextStyle(
                          color: Color(0xFF151515),
                          fontSize: 15.fSize,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 70,
                height: 34,
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: ShapeDecoration(
                  color: historyItemModelObj.fillColor!.value,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(288),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Paid',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color:historyItemModelObj.textColor!.value,
                      fontSize: 15.fSize,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              )
              // Padding(
              //   padding: EdgeInsets.only(
              //     top: 9.v,
              //     bottom: 6.v,
              //   ),
              //   child: RichText(
              //     text: TextSpan(
              //       children: [
              //         TextSpan(
              //           text: "lbl_payment_for".tr,
              //           style: CustomTextStyles.bodyMediumGray600_1,
              //         ),
              //         TextSpan(
              //           text: " ",
              //         ),
              //         TextSpan(
              //           text: "lbl_october_2024".tr,
              //           style:
              //               CustomTextStyles.titleSmallOnSecondaryContainerBold,
              //         ),
              //       ],
              //     ),
              //     textAlign: TextAlign.left,
              //   ),
              // ),
              // CustomElevatedButton(
              //   height: 34.v,
              //   width: 70.h,
              //   text: "lbl_paid".tr,
              //   buttonStyle: CustomButtonStyles.fillGreen,
              //   buttonTextStyle: CustomTextStyles.titleSmallGreenA700,
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
