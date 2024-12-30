import '../../home_screen_container_page/models/recomended_game_model.dart';
import '../controller/recomended_for_you_one_controller.dart';
import '../models/listrectangle30_item_model.dart';
import 'package:flutter/material.dart';
import 'package:game_store_app/core/app_export.dart';

// ignore: must_be_immutable
class Listrectangle30ItemWidget extends StatelessWidget {
  Listrectangle30ItemWidget(
    this.listrectangle30ItemModelObj, {
    this.onTapRecomendedforyo,
  });

  RecomendedData listrectangle30ItemModelObj;

  var controller = Get.find<RecomendedForYouOneController>();

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
              imagePath: listrectangle30ItemModelObj.image,
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
                    listrectangle30ItemModelObj.name!,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtHeadline,
                  ),
                  Padding(
                    padding: getPadding(
                      top: 4,
                    ),
                    child: Text(
                      listrectangle30ItemModelObj.subTitle!,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtAeonikRegular15Gray600,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 2,
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
                            bottom: 0,
                          ),
                        ),
                        SizedBox(width: getHorizontalSize(2),),
                        Text(
                          "(${listrectangle30ItemModelObj.rate!})",
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
              child:  Text(
                listrectangle30ItemModelObj.price=="\$00.00"?"FREE": listrectangle30ItemModelObj.price!,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: listrectangle30ItemModelObj.price=="\$00.00"?AppStyle.txtHeadlineTeal800:AppStyle.txtHeadline,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
