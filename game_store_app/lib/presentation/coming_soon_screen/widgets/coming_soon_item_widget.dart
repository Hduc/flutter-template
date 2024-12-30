import '../../home_screen_container_page/models/coming_soon_game_model.dart';
import '../controller/coming_soon_controller.dart';
import '../models/coming_soon_item_model.dart';
import 'package:flutter/material.dart';
import 'package:game_store_app/core/app_export.dart';

// ignore: must_be_immutable
class ComingSoonItemWidget extends StatelessWidget {
  ComingSoonItemWidget(
    this.comingSoonItemModelObj, {
    this.onTapRecomendedforyo,
  });

  ComingSoonGames comingSoonItemModelObj;

  var controller = Get.find<ComingSoonController>();

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
              imagePath: comingSoonItemModelObj.image,
              height: getSize(
                70,
              ),
              width: getSize(
                70,
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
                top: 15,
                bottom: 12,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    comingSoonItemModelObj.name!,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtHeadline,
                  ),
                  Padding(
                    padding: getPadding(
                      top: 3,
                    ),
                    child: Text(
                      comingSoonItemModelObj.subTitle!,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtAeonikRegular15Gray600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
