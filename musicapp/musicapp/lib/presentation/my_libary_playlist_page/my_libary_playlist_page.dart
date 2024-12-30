import 'package:flutter/material.dart';
import 'package:musicapp/core/app_export.dart';

import '../more_otion_popup_screen/more_otion_popup_screen.dart';
import '../my_libary_artist_page/models/my_libary_item_model.dart';
import '../my_libary_playlist_page/widgets/my_libary1_item_widget.dart';
import 'controller/my_libary_playlist_controller.dart';

// ignore_for_file: must_be_immutable
class MyLibaryPlaylistPage extends StatelessWidget {
  MyLibaryPlaylistPage({Key? key}) : super(key: key);

  MyLibaryPlaylistController controller =
      Get.put(MyLibaryPlaylistController());

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: getPadding(left: 20,right: 20,top: 16,bottom: 16),
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: getVerticalSize(16));
        },
        itemCount: controller.myPlayList.length,
        itemBuilder: (context, index) {
          MyLibaryItemModel model = controller.myPlayList[index];
          return MyLibary1ItemWidget(model,
              onTapImgOverflowmenu: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return MoreOtionPopupScreen();
                  },
                );
              });
        });
  }

  /// Navigates to the moreOtionPopupScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the moreOtionPopupScreen.
  onTapImgOverflowmenu() {


    Get.toNamed(
      AppRoutes.moreOtionPopupScreen,
    );
  }
}
