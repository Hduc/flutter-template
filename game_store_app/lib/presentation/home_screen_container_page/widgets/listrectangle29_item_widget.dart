import '../controller/home_screen_container_controller.dart';
import '../models/listrectangle29_item_model.dart';
import 'package:flutter/material.dart';
import 'package:game_store_app/core/app_export.dart';
import 'package:game_store_app/widgets/custom_icon_button.dart';

import '../models/recomended_game_model.dart';

// ignore: must_be_immutable
class Listrectangle29ItemWidget extends StatelessWidget {
  Listrectangle29ItemWidget(
    this.listrectangle29ItemModelObj, {
    this.onTapRecomendedforyo,
  });

  RecomendedData listrectangle29ItemModelObj;

  var controller = Get.find<HomeScreenContainerController>();

  VoidCallback? onTapRecomendedforyo;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapRecomendedforyo?.call();
      },
      child: Container(
        margin: getMargin(top: 12,bottom: 12),
        // height: getVerticalSize(98),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(getHorizontalSize(20)),
            color: ColorConstant.whiteA700,
            boxShadow: [
              BoxShadow(offset: Offset(0, 6),
                  blurRadius: 30,
                  color: ColorConstant.black900.withOpacity(0.07))
            ]
        ),
        child: Padding(
          padding: getPadding(all: 4),
          child: Row(
            children: [
              CustomImageView(
                imagePath: listrectangle29ItemModelObj.image,
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
                  top: 12,
                  bottom: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      listrectangle29ItemModelObj.name!,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtSubhead,
                    ),
                    Padding(
                      padding: getPadding(
                        top: 5,
                      ),
                      child: Text(
                        listrectangle29ItemModelObj.subTitle!,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtAeonikRegular15Gray600,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 4,
                      ),
                      child: Text(
                        listrectangle29ItemModelObj.price=="\$00.00"?"FREE": listrectangle29ItemModelObj.price!,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: listrectangle29ItemModelObj.price=="\$00.00"?AppStyle.txtHeadlineTeal800:AppStyle.txtHeadline,
                      ),
                    ),
                  ],
                ),
              ),
              CustomIconButton(
                height: 24,
                width: 24,
                margin: getMargin(
                  left: 3,
                  top: 12,
                  bottom: 54,
                ),
                variant: IconButtonVariant.FillBlack90011,
                child: CustomImageView(
                  svgPath: ImageConstant.imgFavorite,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
