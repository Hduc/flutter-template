import 'package:flutter/material.dart';
import 'package:musicapp/core/app_export.dart';

import '../home_screen_page/models/list18271_item_model.dart';
import '../more_otion_popup_screen/more_otion_popup_screen.dart';
import '../my_libary_artist_page/widgets/my_libary_item_widget.dart';
import 'controller/my_libary_artist_controller.dart';

// ignore_for_file: must_be_immutable
class MyLibaryArtistPage extends StatelessWidget {
  MyLibaryArtistPage({Key? key}) : super(key: key);

  MyLibaryArtistController controller = Get.put(MyLibaryArtistController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MyLibaryArtistController>(
    init: MyLibaryArtistController(),
    builder: (controller) =>ListView.separated(
      padding: getPadding(left: 20,right: 20,top: 16,bottom: 16),
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(height: getVerticalSize(16));
          },
          itemCount: controller.artistData.length,
          itemBuilder: (context, index) {
            Artist model = controller.artistData[index];
            return MyLibaryItemWidget(model,
                onTapImgOverflowmenu: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return MoreOtionPopupScreen();
                    },
                  );
                });
          }),
    );
  }

  onTapImgOverflowmenu() {
    Get.toNamed(
      AppRoutes.moreOtionPopupScreen,
    );
  }
}
