import '../controller/payment_method_controller.dart';
import '../models/payment_method_item_model.dart';
import 'package:flutter/material.dart';
import 'package:game_store_app/core/app_export.dart';

// ignore: must_be_immutable
class PaymentMethodItemWidget extends StatelessWidget {
  PaymentMethodItemWidget(this.paymentMethodItemModelObj);

  PaymentMethodItemModel paymentMethodItemModelObj;

  var controller = Get.find<PaymentMethodController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 16,
        top: 10,
        right: 16,
        bottom: 10,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(getHorizontalSize(20)),
          color: ColorConstant.whiteA700,
          boxShadow: [
            BoxShadow(offset: Offset(0, 6),
                blurRadius: 30,
                color: ColorConstant.black900.withOpacity(0.07))
          ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: getPadding(
              top: 1,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  paymentMethodItemModelObj.methodName!,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtSubhead,
                ),
                Padding(
                  padding: getPadding(
                    left: 1,
                    top: 5,
                  ),
                  child: Text(
                    paymentMethodItemModelObj.number!,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtAeonikRegular15Gray600,
                  ),
                ),
              ],
            ),
          ),
          CustomImageView(
            svgPath: paymentMethodItemModelObj.paymentIcon,
            height: getVerticalSize(
              40,
            ),
            width: getHorizontalSize(
              65,
            ),
            margin: getMargin(
              top: 1,
              bottom: 1,
            ),
          ),
        ],
      ),
    );
  }
}
