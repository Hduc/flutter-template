import '../controller/notification_controller.dart';
import '../models/listsave_item_model.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListsaveItemWidget extends StatelessWidget {
  ListsaveItemWidget(this.listsaveItemModelObj);

  ListsaveItemModel listsaveItemModelObj;

  var controller = Get.find<NotificationController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomIconButton(
          height: 44,
          width: 44,
          margin: getMargin(
            bottom: 29,
          ),
          variant: IconButtonVariant.FillPurple300,
          shape: IconButtonShape.CircleBorder22,
          padding: IconButtonPadding.PaddingAll10,
          child: CustomImageView(
            svgPath: ImageConstant.imgSave,
          ),
        ),
        Padding(
          padding: getPadding(
            top: 1,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "msg_credit_card_connected".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterBold16.copyWith(
                      height: getVerticalSize(
                        1.24,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 38,
                      top: 4,
                    ),
                    child: Text(
                      "lbl_9_22_am".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterRegular12.copyWith(
                        height: getVerticalSize(
                          1.27,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: getHorizontalSize(
                  255.00,
                ),
                margin: getMargin(
                  top: 11,
                ),
                child: Text(
                  "msg_your_credit_card".tr,
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterRegular14WhiteA700.copyWith(
                    height: getVerticalSize(
                      1.19,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
