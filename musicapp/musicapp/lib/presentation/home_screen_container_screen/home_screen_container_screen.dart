import 'package:flutter/material.dart';
import 'package:musicapp/core/app_export.dart';
import 'package:musicapp/presentation/home_screen_page/home_screen_page.dart';
import 'package:musicapp/presentation/my_libary_add_page/my_libary_add_page.dart';
import 'package:musicapp/presentation/my_profile_one_page/my_profile_one_page.dart';
import 'package:musicapp/presentation/search_screen_page/search_screen_page.dart';
import 'package:musicapp/widgets/custom_bottom_bar.dart';

import '../../widgets/app_bar/custum_bottom_bar_controller.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_outlined_button.dart';
import 'controller/home_screen_container_controller.dart';


class HomeScreenContainerScreen extends StatefulWidget {
  const HomeScreenContainerScreen({super.key});

  @override
  State<HomeScreenContainerScreen> createState() => _HomeScreenContainerScreenState();
}

class _HomeScreenContainerScreenState extends State<HomeScreenContainerScreen> {
 HomeScreenContainerController controller = Get.put(HomeScreenContainerController());
 @override
 void initState() {
  setSafeAreaColor();
  super.initState();
 }


 List<Widget> screen = [
  HomeScreenPage(),
  SearchScreenPage(),
  MyLibaryAddPage(),
  MyProfileOnePage()
 ];
 @override
 Widget build(BuildContext context) {
  return GetBuilder<CustomBottomBarController>(
   init: CustomBottomBarController(),
   builder: (controller) => WillPopScope(
    onWillPop: () async {
     if (controller.selectedIndex == 0) {
      showDialog(
       barrierDismissible: false,
       context: context,
       builder: (context) {
        return AlertDialog(
            insetPadding: EdgeInsets.all(16),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)),
            contentPadding: EdgeInsets.zero,
            content: Container(
                width: getHorizontalSize(396),
                padding:
                getPadding(left: 0, top: 24, right: 0, bottom: 24),
                decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(getHorizontalSize(16),
                 ),
                 color: appTheme.white700
                ),
                child: Column(
                 mainAxisSize: MainAxisSize.min,
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                  Text(
                   "Are you sure want to ext ?".tr,
                   overflow: TextOverflow.ellipsis,
                   textAlign: TextAlign.left,
                   style: theme.textTheme.titleLarge,
                  ),
                  Padding(
                   padding: getPadding(
                    left: 30,
                    top: 28,
                    right: 30,
                    bottom: 2,
                   ),
                   child: Row(
                    children: [

                     Expanded(
                      child: CustomOutlinedButton(
                       text: "No",
                       margin: getMargin(
                        right: 8,
                       ),
                       onTap: (){
                        Get.back();
                       },
                       buttonStyle: ButtonThemeHelper
                           .outlineDeeppurpleA200
                           .copyWith(
                           fixedSize:
                           MaterialStateProperty.all<Size>(
                               Size(
                                double.maxFinite,
                                getVerticalSize(
                                 54,
                                ),
                               ))),
                       buttonTextStyle: TextThemeHelper
                           .titleMediumDeeppurpleA200,
                      ),
                     ),


                     // Expanded(
                     //  child: CustomButton(
                     //   height: getVerticalSize(
                     //    46,
                     //   ),
                     //   text: "lbl_no".tr,
                     //   margin: getMargin(
                     //    right: 10,
                     //   ),
                     //   onTap: () {
                     //    Get.back();
                     //   },
                     //   variant: ButtonVariant.FillWhiteA700a3,
                     //   shape: ButtonShape.RoundedBorder8,
                     //   padding: ButtonPadding.PaddingAll4,
                     //   fontStyle:
                     //   ButtonFontStyle.SFUITextBold18Indigo500,
                     //  ),
                     // ),
                     SizedBox(
                      width: getHorizontalSize(10),
                     ),

                     Expanded(
                      child: CustomElevatedButton(
                       text: "Yes",
                       margin: getMargin(
                        left: 8,
                       ),
                       onTap: (){
                        if (controller.selectedIndex == 0) {
                         closeApp();
                        } else {
                         controller.getIndex(0);
                         Get.back();
                        }
                       },
                       buttonStyle: ButtonThemeHelper
                           .fillDeeppurpleA200
                           .copyWith(
                           fixedSize:
                           MaterialStateProperty.all<Size>(
                               Size(
                                double.maxFinite,
                                getVerticalSize(
                                 54,
                                ),
                               ))),
                       buttonTextStyle:
                       TextThemeHelper.titleMediumPrimary_1,
                      ),
                     ),
                    ],
                   ),
                  ),
                 ],
                )));
       },
      );
     } else {
      controller.getIndex(0);
      // Get.back();
     }
     return false;
    },
    child: Scaffold(
        backgroundColor: appTheme.bgColor,
        body: SafeArea(child: screen[controller.selectedIndex]),
        bottomNavigationBar:
        CustomBottomBar(onChanged: (BottomBarEnum type) {
         Get.toNamed(getCurrentRoute(type), id: 1);
        })),
   ),
  );
 }

 ///Handling route based on bottom click actions
 String getCurrentRoute(BottomBarEnum type) {
  switch (type) {
   case BottomBarEnum.Home:
    return AppRoutes.homeScreenPage;
   case BottomBarEnum.Search:
    return AppRoutes.searchScreenPage;
   case BottomBarEnum.Libary:
    return AppRoutes.myLibaryAddPage;
   case BottomBarEnum.Profile:
    return AppRoutes.myProfileOnePage;
   default:
    return "/";
  }
 }

 ///Handling page based on route
 Widget getCurrentPage(String currentRoute) {
  switch (currentRoute) {
   case AppRoutes.homeScreenPage:
    return HomeScreenPage();
   case AppRoutes.searchScreenPage:
    return SearchScreenPage();
   case AppRoutes.myLibaryAddPage:
    return MyLibaryAddPage();
   case AppRoutes.myProfileOnePage:
    return MyProfileOnePage();
   default:
    return DefaultWidget();
  }
 }

}










