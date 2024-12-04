import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/presentation/payment_success_dialog/controller/payment_success_controller.dart';
import 'package:hair_salon_app/presentation/payment_success_dialog/payment_success_dialog.dart';
import 'package:hair_salon_app/widgets/app_bar/appbar_image.dart';
import 'package:hair_salon_app/widgets/app_bar/appbar_title.dart';
import 'package:hair_salon_app/widgets/app_bar/custom_app_bar.dart';
import 'package:hair_salon_app/widgets/custom_button.dart';

import 'controller/review_summary_controller.dart';

class ReviewSummaryScreen extends GetWidget<ReviewSummaryController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(81),
                leadingWidth: 42,
                leading: AppbarImage(
                    height: getVerticalSize(24),
                    width: getHorizontalSize(26),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 28, bottom: 28),
                    onTap: () {
                      onTapArrowleft15();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_review_summary".tr),
                styleType: Style.bgFillWhiteA700),
            body: Column(
              children: [
                Expanded(
                  child: ListView(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin:
                              getMarginOrPadding(left: 16, right: 16, top: 20),
                          width: double.maxFinite,
                          child: Container(
                            padding: getPadding(
                              left: 15,
                              top: 16,
                              right: 15,
                              bottom: 16,
                            ),
                            decoration: AppDecoration.fillGray50.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder16,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Barbarllea inova",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtHeadline,
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 23,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Specialist",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtBodyGray600,
                                      ),
                                      Text(
                                        "Esther Howard",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtBody,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 23,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Phone",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtBodyGray600,
                                      ),
                                      Text(
                                        "(239) 555-0108",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtBody,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 23,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Booking Date",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtBodyGray600,
                                      ),
                                      Text(
                                        "10 Apr 2023",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtBody,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 23,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "10 Apr 2023",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtBodyGray600,
                                      ),
                                      Text(
                                        "12:00 am",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtBody,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin:
                              getMarginOrPadding(left: 16, right: 16, top: 25),
                          width: double.maxFinite,
                          child: Container(
                            padding: getPadding(
                              left: 15,
                              top: 16,
                              right: 15,
                              bottom: 16,
                            ),
                            decoration: AppDecoration.fillGray50.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder16,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Order Details",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtHeadline,
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 16,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Haircut(Quiff)",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtBodyGray600,
                                      ),
                                      Text(
                                        "\$10.00 ",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtBody,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 16,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Shaving(Thin Shaving)",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtBodyGray600,
                                      ),
                                      Text(
                                        "\$8.90",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtBody,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 16,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Hair Wash (Aloo Vera Shampoo)",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtBodyGray600,
                                      ),
                                      Text(
                                        "\$6.60",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtBody,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: getVerticalSize(16),
                                ),
                                Divider(
                                  color: ColorConstant.gray300,
                                  height: 0,
                                  thickness: 1,
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 16,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Total",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtBodyGray600,
                                      ),
                                      Text(
                                        "\$25.50",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtBody,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                            margin: getMargin(top: 25, right: 16, left: 16),
                            padding: getPadding(
                                left: 16, top: 24, right: 16, bottom: 24),
                            decoration: AppDecoration.fillGray50.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder16),
                            child: Row(children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgSearchIndigoA700,
                                height: getVerticalSize(32),
                                width: getVerticalSize(32),
                              ),
                              SizedBox(
                                width: getVerticalSize(19),
                              ),
                              Text('••••  ••••  ••••  7547',
                                  style: AppStyle.txtHeadline),
                              Spacer(),
                              GestureDetector(
                                  onTap: () {
                                    onTapTxtChange();
                                  },
                                  child: Padding(
                                      padding: getPadding(top: 7, bottom: 6),
                                      child: Text("lbl_change".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtSubheadlinePink800)))
                            ])),
                      ]),
                ),
                CustomButton(
                    height: getVerticalSize(53),
                    text: "lbl_confirm_payment".tr,
                    margin: getMargin(bottom: 85, left: 16, right: 16),
                    onTap: () {
                      onTapConfirmpayment();
                    })
              ],
            )));
  }

  onTapTxtChange() {
    // Get.toNamed(
    //   AppRoutes.paymentMethodsScreen,
    // );
    Get.back();
  }

  onTapConfirmpayment() {
    Get.dialog(
        AlertDialog(
          backgroundColor: Colors.transparent,
          contentPadding: EdgeInsets.zero,
          insetPadding: EdgeInsets.only(left: 0),
          content: PaymentSuccessDialog(
            Get.put(
              PaymentSuccessController(),
            ),
          ),
        ),
        barrierDismissible: false);
  }

  onTapArrowleft15() {
    Get.back();
  }
}
