import '../controller/history_transaction_controller.dart';
import '../models/listellipse2832_item_model.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';

// ignore: must_be_immutable
class Listellipse2832ItemWidget extends StatelessWidget {
  Listellipse2832ItemWidget(this.listellipse2832ItemModelObj);

  Listellipse2832ItemModel listellipse2832ItemModelObj;

  var controller = Get.find<HistoryTransactionController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 16,
        top: 17,
        right: 16,
        bottom: 17,
      ),
      decoration: AppDecoration.fillWhiteA700.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse2832,
                height: getSize(
                  40.00,
                ),
                width: getSize(
                  40.00,
                ),
                radius: BorderRadius.circular(
                  getHorizontalSize(
                    20.00,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 12,
                  top: 1,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "msg_sbux_buy_in_dollars".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterBold14Gray800.copyWith(
                        height: getVerticalSize(
                          1.19,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 5,
                      ),
                      child: Text(
                        "lbl_starbuks".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterRegularblack.copyWith(
                          height: getVerticalSize(
                            1.27,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: getPadding(
              left: 45,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "lbl_35_123".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterBold14Gray800.copyWith(
                    height: getVerticalSize(
                      1.19,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 6,
                  ),
                  child: Text(
                    "lbl_0_0892837".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterRegularblack.copyWith(
                      height: getVerticalSize(
                        1.27,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
