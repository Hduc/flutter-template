import '../../../widgets/app_bar/custum_bottom_bar_controller.dart';
import '../controller/coupon_code_controller.dart';
import '../models/coupon_code_item_model.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:game_store_app/core/app_export.dart';

import '../models/coupon_code_model.dart';

// ignore: must_be_immutable
class CouponCodeItemWidget extends StatelessWidget {
  CouponCodeItemWidget(
    this.couponCodeItemModelObj, {
    this.onTapColumnoffer,
  });

  CouponCodeItemModel couponCodeItemModelObj;

  var controller = Get.find<CouponCodeController>();

  VoidCallback? onTapColumnoffer;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(getHorizontalSize(20)),
          color: ColorConstant.whiteA700,
          boxShadow: [
            BoxShadow(offset: Offset(0, 6),
                blurRadius: 30,
                color: ColorConstant.black900.withOpacity(0.07))
          ]
      ),
      child: GetBuilder<CustomBottomBarController>(
        init: CustomBottomBarController(),
        builder:(customBottom) =>  GetBuilder<CouponCodeController>(
          init: CouponCodeController(CouponCodeModel().obs),
          builder:(couponcontroller) =>  GestureDetector(
            onTap: () {
              // onTapColumnoffer?.call();
              couponcontroller.isCouponNavOfPayment?Get.back(): SizedBox();

            },
            child: Container(
              padding: getPadding(
                all: 16,
              ),

              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: getPadding(
                      top: 1,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Obx(
                          () => Text(
                            couponCodeItemModelObj.offerTxt.value,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtHeadline,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 1,
                            bottom: 3,
                          ),
                          child: Text(
                            "msg_expiray_on_12".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtFootnoteGray60001,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      325,
                    ),
                    margin: getMargin(
                      top: 17,
                      right: 30,
                    ),
                    child: Obx(
                      () => Text(
                        couponCodeItemModelObj.descriptionTxt.value,
                        maxLines: null,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtBodyBlack900,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 15,
                    ),
                    child: DottedBorder(
                      color: ColorConstant.blueGray900,
                      padding: EdgeInsets.only(
                        left: getHorizontalSize(
                          1,
                        ),
                        top: getVerticalSize(
                          1,
                        ),
                        right: getHorizontalSize(
                          1,
                        ),
                        bottom: getVerticalSize(
                          1,
                        ),
                      ),
                      strokeWidth: getHorizontalSize(
                        1,
                      ),
                      radius: Radius.circular(
                        16,
                      ),
                      borderType: BorderType.RRect,
                      dashPattern: [
                        2,
                        2,
                      ],
                      child: Container(
                        padding: getPadding(
                          left: 16,
                          top: 7,
                          right: 16,
                          bottom: 7,
                        ),
                        decoration: AppDecoration.outlineBluegray900.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder16,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 2,
                              ),
                              child: Obx(
                                () => Text(
                                  couponCodeItemModelObj.couponcodeTxt.value,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtBodyBlack900,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
