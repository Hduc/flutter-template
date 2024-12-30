import 'package:flutter/material.dart';

// import 'package:flutter_share/flutter_share.dart';
import 'package:musicapp/core/app_export.dart';
import 'package:share_plus/share_plus.dart';

import 'controller/more_otion_popup_controller.dart';

class MoreOtionPopupScreen extends GetWidget<MoreOtionPopupController> {
  const MoreOtionPopupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(top: 16, bottom: 16, left: 20, right: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgBottomSheetDrawer,
          ),
          SizedBox(
            height: getVerticalSize(16),
          ),
          get_pop_up_option(() {
            Get.back();
            share();
          }, "lbl_share2".tr, ImageConstant.imgShare),
          SizedBox(
            height: getVerticalSize(24),
          ),
          get_pop_up_option(
            () {},
            "lbl_add_to_wishlist".tr,
            ImageConstant.imgFavorite,
          ),
          SizedBox(
            height: getVerticalSize(24),
          ),
          get_pop_up_option(
              () {}, "lbl_add_to_playlist".tr, ImageConstant.imgDownload),
          SizedBox(
            height: getVerticalSize(24),
          ),
          get_pop_up_option(
              () {}, "lbl_view_artists".tr, ImageConstant.imgUserBlack90024x24),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget get_pop_up_option(function, text, share) {
    return GestureDetector(
      onTap: function,
      child: Row(
        children: [
          CustomImageView(
            svgPath: share,
            color: PrefUtils().getThemeData() == "primary"
                ? Colors.black
                : Colors.white,
          ),
          SizedBox(
            width: getHorizontalSize(8),
          ),
          Text(text,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: theme.textTheme.bodyLarge!.copyWith(
                  color: PrefUtils().getThemeData() == "primary"
                      ? Colors.black
                      : Colors.white))
        ],
      ),
    );
  }

  /// Navigates to the shareScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the shareScreen.
  onTapShare() {
    Get.toNamed(
      AppRoutes.shareScreen,
    );
  }

  /// Navigates to the addPlaylistScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the addPlaylistScreen.
  onTapAddtoplaylist() {
    Get.toNamed(
      AppRoutes.addPlaylistScreen,
    );
  }

  Future<void> share() async {
    await Share.share('https://flutter.dev/',
        subject: 'Check out this website!');
  }
}
