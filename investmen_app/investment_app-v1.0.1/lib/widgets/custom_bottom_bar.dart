import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';

class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({this.onChanged});

  RxInt selectedIndex = 0.obs;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgIconsolidhomealt,
      type: BottomBarEnum.Iconsolidhomealt,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgMenu,
      type: BottomBarEnum.Menu,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgMaximize,
      type: BottomBarEnum.Maximize,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgClockBlueGray10001,
      type: BottomBarEnum.Clockbluegray10001,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgSearch,
      type: BottomBarEnum.Search,
    )
  ];

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => BottomNavigationBar(
        backgroundColor: ColorConstant.blue700,
        showSelectedLabels: false,
        showUnselectedLabels: false,

        elevation: 0,
        currentIndex: selectedIndex.value,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(

            icon: CustomImageView(
              svgPath: bottomMenuList[index].icon,
              height: getSize(
                24.00,
              ),
              width: getSize(
                24.00,
              ),
              color: ColorConstant.blueGray10001,
            ),

            activeIcon: Card(

              elevation: 0,
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: ColorConstant.whiteA7004c,
                  width: getHorizontalSize(
                    1.00,
                  ),
                ),
                borderRadius: BorderRadiusStyle.circleBorder28,
              ),
              child: Container(
                height: getSize(
                  56.00,
                ),
                width: getSize(
                  56.00,
                ),
                padding: EdgeInsets.zero,
                decoration: AppDecoration.outlineWhiteA7004c.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder28,
                ),
                child: CustomImageView(
                  svgPath: bottomMenuList[index].icon,
                  height: getSize(
                    24.00,
                  ),
                  width: getSize(
                    24.00,
                  ),
                  color: ColorConstant.whiteA700,
                  alignment: Alignment.center,
                ),
              ),
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex.value = index;
          onChanged!(bottomMenuList[index].type);
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Iconsolidhomealt,
  Menu,
  Maximize,
  Clockbluegray10001,
  Search,
}

class BottomMenuModel {
  BottomMenuModel({required this.icon, required this.type});

  String icon;

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
