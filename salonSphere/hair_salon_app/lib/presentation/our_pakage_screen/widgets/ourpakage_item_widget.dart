import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';

import '../models/ourpakage_item_model.dart';

// ignore: must_be_immutable
class OurpakageItemWidget extends StatelessWidget {
  OurpakageItemWidget(this.ourpakageItemModelObj);

  OurpakageItemModel ourpakageItemModelObj;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(AppRoutes.ouePakageWithDetailsScreen);
      },
      child: Container(
        padding: getPadding(
          left: 8,
          top: 5,
          right: 8,
          bottom: 6,
        ),
        decoration: AppDecoration.fillGray50.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: Constant.imagePath + ourpakageItemModelObj.image,
              height: getVerticalSize(
                104,
              ),
              width: double.infinity,
              radius: BorderRadius.circular(
                getHorizontalSize(
                  8,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                top: 8,
              ),
              child: Text(
                ourpakageItemModelObj.name,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtHeadline,
              ),
            ),
            Padding(
              padding: getPadding(
                top: 6,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "lbl_552".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtHeadline,
                  ),
                  Container(
                    padding: getPadding(top: 6, bottom: 6, left: 17, right: 17),
                    decoration: BoxDecoration(
                      color: ColorConstant.gray100,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          8,
                        ),
                      ),
                    ),
                    child: Text("lbl_book_now".tr,
                        style: TextStyle(
                          color: ColorConstant.black900,
                          fontSize: getFontSize(
                            13,
                          ),
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w400,
                        )),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
