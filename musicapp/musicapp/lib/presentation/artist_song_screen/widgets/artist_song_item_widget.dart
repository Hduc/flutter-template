import '../controller/artist_song_controller.dart';
import '../models/artist_song_item_model.dart';
import 'package:flutter/material.dart';
import 'package:musicapp/core/app_export.dart';

// ignore: must_be_immutable
class ArtistSongItemWidget extends StatelessWidget {
  ArtistSongItemWidget(
    this.artistSongItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ArtistSongItemModel artistSongItemModelObj;

  var controller = Get.find<ArtistSongController>();

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle43902,
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
              bottom: 4,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    artistSongItemModelObj.songnameTxt.value,
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
                      artistSongItemModelObj.singernameTxt.value,
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
            svgPath: ImageConstant.imgOverflowmenuPrimary,
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
          ),
        ],
      ),
    );
  }
}
