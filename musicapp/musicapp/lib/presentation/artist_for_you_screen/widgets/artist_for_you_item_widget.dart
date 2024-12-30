import '../../home_screen_page/models/list18271_item_model.dart';
import '../controller/artist_for_you_controller.dart';
import 'package:flutter/material.dart';
import 'package:musicapp/core/app_export.dart';

// ignore: must_be_immutable
class ArtistForYouItemWidget extends StatelessWidget {
  ArtistForYouItemWidget(
    this.artistForYouItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Artist artistForYouItemModelObj;

  ArtistForYouController controller = Get.put(ArtistForYouController());

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.toNamed(AppRoutes.artistSongScreen);
      },
      child: Container(
        padding: getPadding(
          left: 14,
          top: 16,
          right: 14,
          bottom: 16,
        ),
        decoration: AppDecoration.fill2.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: artistForYouItemModelObj.image,
              height: getSize(
                80,
              ),
              width: getSize(
                80,
              ),
              radius: BorderRadius.circular(
                getHorizontalSize(
                  40,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                top: 8,
              ),
              child: Text(
                artistForYouItemModelObj.name!,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: theme.textTheme.bodyLarge,
              ),
            ),
            Padding(
              padding: getPadding(
                top: 3,
                bottom: 2,
              ),
              child: Text(
                "${artistForYouItemModelObj.followers!} followers",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: theme.textTheme.bodyMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
