import 'package:flutter/material.dart';
import 'package:musicapp/core/app_export.dart';

import 'controller/my_libary_controller.dart';

class MyLibaryScreen extends GetWidget<MyLibaryController> {
  const MyLibaryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(top: 15,left: 20,right: 20,bottom: 24),
      child: Column(
       mainAxisSize: MainAxisSize.min,
       children: [
         CustomImageView(
           svgPath: ImageConstant.imgBottomSheetDrawer,
         ),
         SizedBox(height: getVerticalSize(16),),
        GestureDetector(
         onTap: (){
          onTapAddtoartists();
         },
          child: Row(
           children: [
             CustomImageView(
                 color: PrefUtils().getThemeData() == "primary"?Colors.black:Colors.white,
                 svgPath: ImageConstant
                     .imgPlus),
             SizedBox(width: getHorizontalSize(8),),
            Text("lbl_add_to_artists".tr,style: theme.textTheme.bodyLarge!.copyWith(
              color: PrefUtils().getThemeData() == "primary"?Colors.black:Colors.white,
            ),),

           ],
          ),
        ),
         SizedBox(height: getVerticalSize(25.5),),
        GestureDetector(
         onTap: (){
           onTapAddtoplaylist();
         },
          child: Row(
           children: [
             CustomImageView(
               color: PrefUtils().getThemeData() == "primary"?Colors.black:Colors.white,
                 svgPath: ImageConstant
                     .imgPlus),
            SizedBox(width: getHorizontalSize(8),),
            Text("lbl_add_to_playlist".tr,style: theme.textTheme.bodyLarge!.copyWith(
              color: PrefUtils().getThemeData() == "primary"?Colors.black:Colors.white,
            )),
           ],
          ),
        )
       ],
      ),
    );
  }


  onTapAddtoartists() {
    Get.back();
    Get.toNamed(
      AppRoutes.addArtistlistScreen,
    );
  }

  onTapAddtoplaylist() {
    Get.back();
    Get.toNamed(
      AppRoutes.addPlaylistScreen,
    );
  }
}
