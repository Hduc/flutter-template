import 'controller/likes_controller.dart';
import 'package:dating_app/core/app_export.dart';
import 'package:dating_app/presentation/chats_two_page/chats_two_page.dart';
import 'package:dating_app/presentation/likes_list_page/likes_list_page.dart';
import 'package:dating_app/presentation/location_access_container_page/location_access_container_page.dart';
import 'package:dating_app/presentation/profile_page/profile_page.dart';
import 'package:dating_app/widgets/custom_bottom_bar.dart';
import 'package:dating_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LikesScreen extends GetWidget<LikesController> {
  const LikesScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: appTheme.whiteA700,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: getPadding(
              left: 180,
              top: 22,
              right: 180,
              bottom: 22,
            ),
            decoration: AppDecoration.outline3,
            child: Text(
              "Likes".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: theme.textTheme.headlineMedium,
            ),
          ),
          Spacer(),
          CustomImageView(
            svgPath: ImageConstant.imgGroup34160154x156,
            height: getVerticalSize(
              154,
            ),
            width: getHorizontalSize(
              156,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 9,
            ),
            child: Text(
              "lbl_no_likes_yet".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: CustomTextStyles.titleLarge22,
            ),
          ),
          Container(
            width: getHorizontalSize(
              334,
            ),
            margin: getMargin(
              left: 46,
              top: 13,
              right: 46,
            ),
            child: Text(
              "msg_where_you_can_connect".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyLarge,
            ),
          ),
          CustomElevatedButton(
            text: "lbl_go_to_home".tr,
            margin: getMargin(
              top: 36,
              bottom: 36,
            ),
            buttonStyle: CustomButtonStyles.fillPrimary.copyWith(
                fixedSize: MaterialStateProperty.all<Size>(Size(
              getHorizontalSize(
                253,
              ),
              getVerticalSize(
                54,
              ),
            ))),
            buttonTextStyle: theme.textTheme.titleMedium!,
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomBar(
        onChanged: (BottomBarEnum type) {
          Get.toNamed(getCurrentRoute(type), id: 1);
        },
      ),

    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.locationAccessContainerPage;
      case BottomBarEnum.Likes:
        return AppRoutes.likesListPage;
      case BottomBarEnum.Chat:
        return AppRoutes.chatsTwoPage;
      case BottomBarEnum.Profile:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.locationAccessContainerPage:
        return LocationAccessContainerPage();
      case AppRoutes.likesListPage:
        return LikesListPage();
      case AppRoutes.chatsTwoPage:
        return ChatsTwoPage();
      case AppRoutes.profilePage:
        return ProfilePage();
      default:
        return DefaultWidget();
    }
  }
}
