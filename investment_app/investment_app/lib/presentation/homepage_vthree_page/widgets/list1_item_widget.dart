import 'package:investment_app/presentation/sbux_stock_screen/sbux_stock_screen.dart';

import '../controller/homepage_vthree_controller.dart';
import '../models/list1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';

// ignore: must_be_immutable
class List1ItemWidget extends StatelessWidget {
  List1ItemWidget(this.list1ItemModelObj);

  List1ItemModel list1ItemModelObj;

  var controller = Get.find<HomepageVthreeController>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.toNamed(AppRoutes.sbuxStockScreen);
      },
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
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
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Nightverse",
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
                          "Night",
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
              CustomImageView(
                imagePath: ImageConstant.imgChart,
                height: getVerticalSize(
                  40.00,
                ),
                width: getHorizontalSize(
                  57.00,
                ),
                margin: getMargin(
                  left: 44,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 0,
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
                        "lbl_142".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterRegular12Green500.copyWith(
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
        ),
      ),
    );
  }
}
