import 'package:ai_app_flutter/core/app_export.dart';
import 'package:flutter/material.dart';


import '../presentation/home_one_container_screen/controller/home_one_container_controller.dart';

// ignore: must_be_immutable
class CustomBottomBar extends GetWidget<HomeOneContainerController>  {
  CustomBottomBar({this.onChanged});


  // HistoryController historyController = Get.put(HistoryController());
  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgIccomment,
      title: "lbl_chat".tr,
      type: BottomBarEnum.Chat,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgIcmore,
      title: "lbl_ai_assistants".tr,
      type: BottomBarEnum.Aiassistants,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgIcclockbold,
      title: "lbl_history".tr,
      type: BottomBarEnum.History,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgIcprofile,
      title: "lbl_account".tr,
      type: BottomBarEnum.Account,
    )
  ];

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorConstant.whiteA700,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            getHorizontalSize(
              16,
            ),
          ),
          topRight: Radius.circular(
            getHorizontalSize(
              16,
            ),
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9000f,
            blurRadius: getHorizontalSize(
              11,
            ),
            offset: Offset(
              0,
              1,
            ),
          ),
        ],
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
                    svgPath: bottomMenuList[index].icon,
                    height: getSize(
                      24,
                    ),
                    width: getSize(
                      24,
                    ),
                    color: ColorConstant.gray400,
                  ),
                  Padding(
                    padding: getPadding(
                      top: 8,
                    ),
                    child: Text(
                      bottomMenuList[index].title ?? "",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtFootnoteGray400.copyWith(
                        color: ColorConstant.gray400,
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
                    color: ColorConstant.black900,
                  ),
                  Padding(
                    padding: getPadding(
                      top: 8,
                    ),
                    child: Text(
                      bottomMenuList[index].title ?? "",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtFootnote.copyWith(
                        color: ColorConstant.black900,
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

            // onChanged?.call(bottomMenuList[controller.selectedIndex.value].type);
          },
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Chat,
  Aiassistants,
  History,
  Account,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    this.title,
    required this.type,
  });

  String icon;

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
