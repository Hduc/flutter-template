// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/presentation/home_page_screen/controller/home_page_controller.dart';

class CustomBottomBar extends GetWidget<HomePageController> {
  CustomBottomBar({this.onChanged});

  // RxInt selectedIndex = 0.obs;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
        icon: ImageConstant.imgLock,
        title: "lbl_home".tr,
        type: BottomBarEnum.Home,
        selectIcon: Constant.imagePath + "home.svg"),
    BottomMenuModel(
        icon: Constant.imagePath + "location_bold.svg",
        title: "lbl_explore".tr,
        type: BottomBarEnum.Explore,
        selectIcon: ImageConstant.imgIclocationGray600),
    BottomMenuModel(
      icon:Constant.imagePath + "clipboard.svg",
      title: "lbl_booking".tr,
      type: BottomBarEnum.Booking,
      selectIcon: ImageConstant.imgIcclipboard,
    ),
    BottomMenuModel(
      icon:Constant.imagePath + "inbox.svg",
      title: "lbl_chat".tr,
      type: BottomBarEnum.Chat,
      selectIcon: ImageConstant.imgIcinbox,
    ),
    BottomMenuModel(
      icon:Constant.imagePath + "profile.svg",
      title: "lbl_profile".tr,
      type: BottomBarEnum.Profile,
      selectIcon: ImageConstant.imgSearch,
    )
  ];

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorConstant.whiteA700,
      ),
      child: Obx(
        () => BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          currentIndex: controller.selectedIndex.value,
          type: BottomNavigationBarType.fixed,
          items: List.generate(bottomMenuList.length, (index) {
            return BottomNavigationBarItem(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomImageView(
                    svgPath: bottomMenuList[index].selectIcon,
                    height: getSize(
                      24,
                    ),
                    width: getSize(
                      24,
                    ),
                    // color: ColorConstant.gray600,
                  ),
                  Padding(
                    padding: getPadding(
                      top: 6,
                    ),
                    child: Text(
                      bottomMenuList[index].title ?? "",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtSFProTextMedium12Gray600.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.1,
                        ),
                        color: ColorConstant.gray600,
                      ),
                    ),
                  ),
                ],
              ),
              activeIcon: Column(
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
                    // color: ColorConstant.pink800,
                  ),
                  Padding(
                    padding: getPadding(
                      top: 6,
                    ),
                    child: Text(
                      bottomMenuList[index].title ?? "",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtSFProTextMedium12.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.1,
                        ),
                        color: ColorConstant.pink800,
                      ),
                    ),
                  ),
                ],
              ),
              label: '',
            );
          }),
          onTap: (index) {
            controller.selectedIndex.value = index;
            // onChanged?.call(bottomMenuList[index].type);
          },
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Home,
  Explore,
  Booking,
  Chat,
  Profile,
}

class BottomMenuModel {
  BottomMenuModel(
      {required this.icon,
      this.title,
      required this.type,
      required this.selectIcon});

  String icon;

  String? title;

  BottomBarEnum type;

  String? selectIcon;
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
