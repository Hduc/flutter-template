import 'package:dating_app/core/app_export.dart';
import 'package:dating_app/data/pref_data.dart';
import 'package:dating_app/presentation/location_access_container1_screen/controller/location_access_container1_controller.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({
    Key? key,
    this.onChanged,
  }) : super(
          key: key,
        );

  // RxInt selectedIndex = 0.obs;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgHomeIcon,
      activeIcon: ImageConstant.imgIconPrimary,
      title: "lbl_home".tr,
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgFavorite,
      activeIcon: ImageConstant.imgFavorite,
      title: "lbl_likes".tr,
      type: BottomBarEnum.Likes,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgIcon,
      activeIcon: ImageConstant.imgIcon,
      title: "lbl_chat".tr,
      type: BottomBarEnum.Chat,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgUserBlack900,
      activeIcon: ImageConstant.imgUserBlack900,
      title: "lbl_profile".tr,
      type: BottomBarEnum.Profile,
    )
  ];
  List<String> activeIcon = [
    ImageConstant.activeHome,
    ImageConstant.activeFev,
    ImageConstant.activeChat,
    ImageConstant.activeProfile,
  ];

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {

      return GetBuilder<LocationAccessContainer1Controller>(builder: (controller) {
        return Container(

          margin: EdgeInsets.zero,
          padding: EdgeInsets.zero,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: appTheme.black900.withOpacity(0.03),
                spreadRadius: getHorizontalSize(
                  2,
                ),
                blurRadius: getHorizontalSize(
                  2,
                ),
                offset: Offset(
                  0,
                  -6,
                ),
              ),
            ],
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            elevation: 0,
            currentIndex: PrefData.currentIndex,
            type: BottomNavigationBarType.fixed,
            items: List.generate(bottomMenuList.length, (index) {
              return BottomNavigationBarItem(
                icon: Container(
                  decoration: AppDecoration.white,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                        svgPath: bottomMenuList[index].icon,
                        height: getSize(
                          24,
                        ),
                        width: getSize(
                          24,
                        ),
                        color: appTheme.black900,
                        margin: getMargin(
                          top: 0,
                        ),
                      ),
                      SizedBox(
                        height: getSize(8),
                      ),
                      Text(
                        bottomMenuList[index].title ?? "",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.bodyMedium!.copyWith(
                          color: appTheme.black900,
                        ),
                      ),
                    ],
                  ),
                ),
                activeIcon: Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                        svgPath: activeIcon[index],
                        height: getSize(
                          24,
                        ),
                        width: getSize(
                          24,
                        ),
                        color:Color(0xFFAA6BE9),

                      ),
                      SizedBox(
                        height: getSize(8),
                      ),
                      Text(
                        bottomMenuList[index].title ?? "",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.bodyMedium!.copyWith(
                          color: Color(0xFFAA6BE9),
                        ),
                      ),
                    ],
                  ),
                ),
                label: '',
              );

            }),
            onTap: (index) {
              PrefData.currentIndex = index;
              controller.update();
              // onChanged?.call(bottomMenuList[index].type);
              controller.update();

            },
          ),
        );
      },init: LocationAccessContainer1Controller(),);

  }
}

enum BottomBarEnum {
  Home,
  Likes,
  Chat,
  Profile,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
