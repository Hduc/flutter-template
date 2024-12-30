import '../controller/sbux_stock_share_controller.dart';
import '../models/sharetoapp_item_model.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class SharetoappItemWidget extends StatelessWidget {
  SharetoappItemWidget(this.sharetoappItemModelObj);

  SharetoappItemModel sharetoappItemModelObj;

  var controller = Get.find<SbuxStockShareController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: getPadding(
            right: 32,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomIconButton(
                height: 60,
                width: 60,
                variant: IconButtonVariant.OutlineBlack9000c,
                shape: IconButtonShape.CircleBorder15,
                padding: IconButtonPadding.PaddingAll10,
                child: CustomImageView(
                  imagePath: ImageConstant.imgAirdrop,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 3,
                ),
                child: Text(
                  "lbl_airdrop".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtSFProTextRegular11.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.07,
                    ),
                    height: getVerticalSize(
                      0.99,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
