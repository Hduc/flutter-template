import 'package:flutter/material.dart';
import 'package:game_store_app/core/app_export.dart';
import 'package:game_store_app/presentation/coupon_code_page/controller/coupon_code_controller.dart';
import 'package:game_store_app/presentation/coupon_code_page/models/coupon_code_model.dart';

import 'app_bar/custum_bottom_bar_controller.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  CustomBottomBarController customBottomBarController = Get.put(CustomBottomBarController());
  CouponCodeController couponController = Get.put(CouponCodeController(CouponCodeModel().obs));
  // RxInt selectedIndex = 0.obs;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgGroup4138,
      type: BottomBarEnum.Group4138,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgGroup4135,
      type: BottomBarEnum.Group4135,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgStroke12,
      type: BottomBarEnum.Stroke12,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgUSerIcon,
      type: BottomBarEnum.profile,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorConstant.whiteA700,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black90011,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              6,
            ),
          ),
        ],
      ),
      child: GetBuilder<CustomBottomBarController>(
        init: CustomBottomBarController(),
        builder:(controller) =>  BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          currentIndex: controller.selectedIndex,
          type: BottomNavigationBarType.fixed,
          items: List.generate(bottomMenuList.length, (index) {
            return BottomNavigationBarItem(
              icon: CustomImageView(
                svgPath: bottomMenuList[index].icon,
                height: getVerticalSize(
                  24,
                ),
                width: getHorizontalSize(
                  24,
                ),
                color: ColorConstant.gray,
              ),
              activeIcon: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(getHorizontalSize(20),),
                    color: ColorConstant.lightBlueA700
                ),
                child: CustomImageView(
                  color: ColorConstant.whiteA700,
                  svgPath: bottomMenuList[index].icon,
                  height: getVerticalSize(
                    24,
                  ),
                  width: getHorizontalSize(
                    24,
                  ),
                  radius: BorderRadius.circular(
                    getHorizontalSize(
                      16,
                    ),
                  ),
                  margin: getMargin(
                      top: 4,
                      bottom: 4,
                      left: 14,
                      right: 14
                  ),
                ),
              ),
              label: '',
            );
          }),
          onTap: (index) {
            print("index is ======== ${controller.selectedIndex}");
            controller.getIndex(index);
            couponController.isCouponScreenNavigateOfPayDetail(false);
            // widget.onChanged?.call(bottomMenuList[controller.selectedIndex].type);
          },
        ),
      )
    );
  }
}

enum BottomBarEnum {
  Group4138,
  Group4135,
profile,
  Stroke12,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.type,
  });

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
