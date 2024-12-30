import 'package:flutter/services.dart';
import 'package:investment_app/presentation/exchange_screen/exchange_screen.dart';

import 'controller/homepage_vthree_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/presentation/history_transaction_tab_container_page/history_transaction_tab_container_page.dart';
import 'package:investment_app/presentation/homepage_vthree_page/homepage_vthree_page.dart';
import 'package:investment_app/presentation/portfolio_page/portfolio_page.dart';
import 'package:investment_app/presentation/profile_page/profile_page.dart';
import 'package:investment_app/widgets/custom_bottom_bar.dart';

class HomepageVthreeContainerScreen
    extends GetWidget<HomepageVthreeContainerController> {
  HomepageVthreeContainerController homepageVthreeContainerController =
      Get.put(HomepageVthreeContainerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFE5E5E5),
      body: GetBuilder<HomepageVthreeContainerController>(
        init: HomepageVthreeContainerController(),
        builder: (homeMainScreenController) => Scaffold(
          body: _body(),
          bottomNavigationBar: Container(
              child: ClipRRect(
            child: BottomNavigationBar(
                backgroundColor: ColorConstant.whiteA700,
                currentIndex: homeMainScreenController.position.value,
                onTap: (index) {
                  homeMainScreenController.onChange(index);
                },
                type: BottomNavigationBarType.fixed,
                items: [
                  BottomNavigationBarItem(
                      activeIcon: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: ColorConstant.lightBlack,
                            ),
                            child: Padding(
                              padding: getPadding(
                                  left: 16, right: 16, top: 5, bottom: 5),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgHomeAc,
                                height: getSize(24),
                                width: getSize(24),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: getVerticalSize(4),
                          ),
                          Text(
                            "Home",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: AppStyle.txtInterMedium12White.copyWith(
                              height: getVerticalSize(
                                1.24,
                              ),
                            ),
                          ),
                        ],
                      ),
                      icon: Column(
                        children: [
                          Container(
                            child: Padding(
                              padding: getPadding(
                                  left: 16, right: 16, top: 5, bottom: 5),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgHomeInAc,
                                height: getSize(24),
                                width: getSize(24),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: getVerticalSize(4),
                          ),
                          Text(
                            "Home",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: AppStyle.txtInterMedium12DartGray.copyWith(
                              height: getVerticalSize(
                                1.24,
                              ),
                            ),
                          ),
                        ],
                      ),
                      label: ''),
                  BottomNavigationBarItem(
                      activeIcon: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: ColorConstant.lightBlack,
                            ),
                            child: Padding(
                              padding: getPadding(
                                  left: 16, right: 16, top: 5, bottom: 5),
                              child: CustomImageView(
                                svgPath: ImageConstant.imgPortfolioAc,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: getVerticalSize(4),
                          ),
                          Text(
                            "PortFolio",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: AppStyle.txtInterMedium12White.copyWith(
                              height: getVerticalSize(
                                1.24,
                              ),
                            ),
                          ),
                        ],
                      ),
                      icon: Column(
                        children: [
                          Container(
                            child: Padding(
                              padding: getPadding(
                                  left: 16, right: 16, top: 5, bottom: 5),
                              child: CustomImageView(
                                svgPath: ImageConstant.imgPortfolioInAc,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: getVerticalSize(4),
                          ),
                          Text(
                            "PortFolio",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: AppStyle.txtInterMedium12DartGray.copyWith(
                              height: getVerticalSize(
                                1.24,
                              ),
                            ),
                          ),
                        ],
                      ),
                      label: ''),
                  BottomNavigationBarItem(
                      activeIcon: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: ColorConstant.lightBlack,
                            ),
                            child: Padding(
                              padding: getPadding(
                                  left: 16, right: 16, top: 5, bottom: 5),
                              child: CustomImageView(
                                svgPath: ImageConstant.imgExchangeAc,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: getVerticalSize(4),
                          ),
                          Text(
                            "Exchange",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: AppStyle.txtInterMedium12White.copyWith(
                              height: getVerticalSize(
                                1.24,
                              ),
                            ),
                          ),
                        ],
                      ),
                      icon: Column(
                        children: [
                          Container(
                            child: Padding(
                              padding: getPadding(
                                  left: 16, right: 16, top: 5, bottom: 5),
                              child: CustomImageView(
                                svgPath: ImageConstant.imgExchangeInAc,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: getVerticalSize(4),
                          ),
                          Text(
                            "Exchange",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: AppStyle.txtInterMedium12DartGray.copyWith(
                              height: getVerticalSize(
                                1.24,
                              ),
                            ),
                          ),
                        ],
                      ),
                      label: ''),
                  BottomNavigationBarItem(
                      activeIcon: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: ColorConstant.lightBlack,
                            ),
                            child: Padding(
                              padding: getPadding(
                                  left: 16, right: 16, top: 5, bottom: 5),
                              child: CustomImageView(
                                svgPath: ImageConstant.imgHistryAc,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: getVerticalSize(4),
                          ),
                          Text(
                            "Histry",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: AppStyle.txtInterMedium12White.copyWith(
                              height: getVerticalSize(
                                1.24,
                              ),
                            ),
                          ),
                        ],
                      ),
                      icon: Column(
                        children: [
                          Container(
                            child: Padding(
                              padding: getPadding(
                                  left: 16, right: 16, top: 5, bottom: 5),
                              child: CustomImageView(
                                svgPath: ImageConstant.imgHistryInAc,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: getVerticalSize(4),
                          ),
                          Text(
                            "Histry",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: AppStyle.txtInterMedium12DartGray.copyWith(
                              height: getVerticalSize(
                                1.24,
                              ),
                            ),
                          ),
                        ],
                      ),
                      label: ''),
                  BottomNavigationBarItem(
                      activeIcon: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: ColorConstant.lightBlack,
                            ),
                            child: Padding(
                              padding: getPadding(
                                  left: 16, right: 16, top: 5, bottom: 5),
                              child: CustomImageView(
                                svgPath: ImageConstant.imgProfileAc,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: getVerticalSize(4),
                          ),
                          Text(
                            "Profile",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: AppStyle.txtInterMedium12White.copyWith(
                              height: getVerticalSize(
                                1.24,
                              ),
                            ),
                          ),
                        ],
                      ),
                      icon: Column(
                        children: [
                          Container(
                            child: Padding(
                              padding: getPadding(
                                  left: 16, right: 16, top: 5, bottom: 5),
                              child: CustomImageView(
                                svgPath: ImageConstant.imgProfileInAc,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: getVerticalSize(4),
                          ),
                          Text(
                            "Profile",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: AppStyle.txtInterMedium12DartGray.copyWith(
                              height: getVerticalSize(
                                1.24,
                              ),
                            ),
                          ),
                        ],
                      ),
                      label: ''),
                ]),
          )),
        ),
      ),
    );
  }

  _body() {
    switch (homepageVthreeContainerController.position.value) {
      case 0:
        return HomepageVthreePage();
      case 1:
        return PortfolioPage();
      //FavouriteItemScreen();

      case 3:
        return HistoryTransactionTabContainerPage();
      //NoCartItemScreen();
      case 2:
        return ExchangeScreen();
      case 4:
        return ProfilePage();
      default:
        return DefaultWidget();
    }
  }

  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Iconsolidhomealt:
        return AppRoutes.homepageVthreePage;
      case BottomBarEnum.Menu:
        return AppRoutes.portfolioPage;
      case BottomBarEnum.Maximize:
        return AppRoutes.exchangeScreen;
      case BottomBarEnum.Clockbluegray10001:
        return AppRoutes.historyTransactionTabContainerPage;
      case BottomBarEnum.Search:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homepageVthreePage:
        return HomepageVthreePage();
      case AppRoutes.portfolioPage:
        return PortfolioPage();
      case AppRoutes.historyTransactionTabContainerPage:
        return HistoryTransactionTabContainerPage();
      case AppRoutes.exchangeScreen:
        return ExchangeScreen();
      case AppRoutes.profilePage:
        return ProfilePage();
      default:
        return DefaultWidget();
    }
  }
}
