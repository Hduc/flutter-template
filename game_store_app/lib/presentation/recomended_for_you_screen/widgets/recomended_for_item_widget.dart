import '../controller/recomended_for_you_controller.dart';
import '../models/recomended_for_item_model.dart';
import 'package:flutter/material.dart';
import 'package:game_store_app/core/app_export.dart';

// ignore: must_be_immutable
class RecomendedForItemWidget extends StatelessWidget {
  RecomendedForItemWidget(
    this.recomendedForItemModelObj, {
    this.onTapRecomendedforyo,
  });

  RecomendedForItemModel recomendedForItemModelObj;

  var controller = Get.find<RecomendedForYouController>();

  VoidCallback? onTapRecomendedforyo;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapRecomendedforyo?.call();
      },
      child: Container(
        padding: getPadding(
          all: 4,
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
          children: [
            CustomImageView(
              imagePath: recomendedForItemModelObj.image,
              height: getSize(
                90,
              ),
              width: getSize(
                90,
              ),
              radius: BorderRadius.circular(
                getHorizontalSize(
                  20,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                left: 16,
                top: 13,
                bottom: 8,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    recomendedForItemModelObj.name!,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtHeadline,
                  ),
                  Padding(
                    padding: getPadding(
                      top: 3,
                    ),
                    child: Text(
                      recomendedForItemModelObj.subTitle!,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtAeonikRegular15Gray600,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 4,
                    ),
                    child: Row(
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgStarOrangeA200,
                          height: getSize(
                            20,
                          ),
                          width: getSize(
                            20,
                          ),
                          margin: getMargin(
                            bottom: 1,
                          ),
                        ),
                        SizedBox(width: getHorizontalSize(2),),
                        Text(
                          "(${recomendedForItemModelObj.rate!})",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtAeonikRegular15,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: getPadding(
                top: 35,
                right: 12,
                bottom: 33,
              ),
              child: Text(
                recomendedForItemModelObj.price!,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtHeadline,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
