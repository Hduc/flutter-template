import '../controller/songs_detail_controller.dart';
import '../models/songs_detail_item_model.dart';
import 'package:flutter/material.dart';
import 'package:musicapp/core/app_export.dart';

// ignore: must_be_immutable
class SongsDetailItemWidget extends StatelessWidget {
  SongsDetailItemWidget(
    this.songsDetailItemModelObj, {
    Key? key,
    this.onTapImgOverflowmenu,
  }) : super(
          key: key,
        );

  SongsDetailItemModel songsDetailItemModelObj;

  var controller = Get.find<SongsDetailController>();

  VoidCallback? onTapImgOverflowmenu;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        all: 4,
      ),
      decoration: AppDecoration.fill2.copyWith(

        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle4390,
            height: getSize(
              64,
            ),
            width: getSize(
              64,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                16,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 16,
              top: 8,
              bottom: 5,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    songsDetailItemModelObj.titleTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 7,
                  ),
                  child: Obx(
                    () => Text(
                      songsDetailItemModelObj.authorTxt.value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: TextThemeHelper.bodyLargeGray600_1,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            svgPath: ImageConstant.imgOverflowmenu,
            height: getSize(
              20,
            ),
            width: getSize(
              20,
            ),
            margin: getMargin(
              top: 7,
              right: 7,
              bottom: 37,
            ),
            onTap: () {
              onTapImgOverflowmenu?.call();
            },
          ),
        ],
      ),
    );
  }
}
