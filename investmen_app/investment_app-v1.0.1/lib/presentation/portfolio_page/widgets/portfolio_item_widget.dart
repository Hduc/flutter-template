import '../controller/portfolio_controller.dart';
import '../models/portfolio_item_model.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';

// ignore: must_be_immutable
class PortfolioItemWidget extends StatelessWidget {
  PortfolioItemWidget(this.portfolioItemModelObj);

  PortfolioItemModel portfolioItemModelObj;

  var controller = Get.find<PortfolioController>();
  // PortfolioController portfolioController = Get.put(PortfolioController(po));

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.toNamed(AppRoutes.sbuxStockScreen);
      },
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
                  imagePath: portfolioItemModelObj.icon,
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
                        portfolioItemModelObj.title!,
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
                          portfolioItemModelObj.subTitle!,
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

            Row(
              children: [
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
                    left: 12,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        portfolioItemModelObj.price!,
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
                          portfolioItemModelObj.rate!,
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

          ],
        ),
      ),
    );
  }
}
