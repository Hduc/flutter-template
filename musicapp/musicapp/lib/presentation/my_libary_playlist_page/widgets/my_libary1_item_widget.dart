import '../../my_libary_artist_page/models/my_libary_item_model.dart';
import '../controller/my_libary_playlist_controller.dart';
import 'package:flutter/material.dart';
import 'package:musicapp/core/app_export.dart';

// ignore: must_be_immutable
class MyLibary1ItemWidget extends StatelessWidget {
  MyLibary1ItemWidget(
    this.myLibary1ItemModelObj, {
    Key? key,
    this.onTapImgOverflowmenu,
  }) : super(
          key: key,
        );

  MyLibaryItemModel myLibary1ItemModelObj;

  var controller = Get.find<MyLibaryPlaylistController>();

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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         Row(
           children: [
             CustomImageView(
               imagePath: myLibary1ItemModelObj.image,
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
                 crossAxisAlignment: CrossAxisAlignment.start,
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Text(
                     myLibary1ItemModelObj.title!,
                     overflow: TextOverflow.ellipsis,
                     textAlign: TextAlign.left,
                     style: theme.textTheme.titleMedium,
                   ),
                   Padding(
                     padding: getPadding(
                       top: 7,
                     ),
                     child: Text(
                       myLibary1ItemModelObj.subTitle!,
                       overflow: TextOverflow.ellipsis,
                       textAlign: TextAlign.left,
                       style: TextThemeHelper.bodyLargeGray600_1,
                     ),
                   ),
                 ],
               ),
             ),
           ],
         ),
          CustomImageView(
            svgPath: PrefUtils().getThemeData() == "primary"?ImageConstant.imgOverflowmenu: ImageConstant.imgOverflowmenuWhite,
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
