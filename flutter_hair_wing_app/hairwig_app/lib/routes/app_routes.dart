import 'package:hairwig_app/main_project.dart';
import 'package:hairwig_app/presentation/splash_screen/splash_screen.dart';

import 'package:hairwig_app/presentation/onboarding_one_screen/onboarding_one_screen.dart';
import 'package:hairwig_app/presentation/login_with_active_screen/login_with_active_screen.dart';
import 'package:hairwig_app/presentation/sign_up_screen/sign_up_screen.dart';

import 'package:hairwig_app/presentation/verification_screen/verification_screen.dart';
import 'package:hairwig_app/presentation/reset_password_screen/reset_password_screen.dart';
import 'package:hairwig_app/presentation/reset_password_success_screen/reset_password_success_screen.dart';
import 'package:hairwig_app/presentation/home_container_screen/home_container_screen.dart';
import 'package:hairwig_app/presentation/search_screen/search_screen.dart';

import 'package:hairwig_app/presentation/top_picks_for_you_screen/top_picks_for_you_screen.dart';
import 'package:hairwig_app/presentation/our_speciality_screen/our_speciality_screen.dart';

import 'package:hairwig_app/presentation/payment_screen/payment_screen.dart';

import 'package:hairwig_app/presentation/order_confirm_screen/order_confirm_screen.dart';
import 'package:hairwig_app/presentation/wishlist_empty_screen/wishlist_empty_screen.dart';

import 'package:hairwig_app/presentation/settings_screen/settings_screen.dart';
import 'package:hairwig_app/presentation/notifications_empty_screen/notifications_empty_screen.dart';
import 'package:hairwig_app/presentation/notifications_screen/notifications_screen.dart';

import 'package:hairwig_app/presentation/rating_screen/rating_screen.dart';

import 'package:flutter/cupertino.dart';
import 'package:page_transition/page_transition.dart';


import '../presentation/hand_bag_screen/hand_bag_screen.dart';
import '../presentation/laptop_bag_screen/textures_screen.dart';

import '../presentation/privacy_policy_screen/privacy_policy_screen.dart';
import '../presentation/profile_page/profile_page.dart';
import '../presentation/security_screen/security_screen.dart';
import '../presentation/wishlist_page/wishlist_page.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String gridScreen = '/grid_screen';

  static const String onboardingOneScreen = '/onboarding_one_screen';

  static const String onboardingOneTwoScreen = '/onboarding_one_two_screen';

  static const String onboardingOneOneScreen = '/onboarding_one_one_screen';

  static const String loginWithErrorScreen = '/login_with_error_screen';

  static const String loginWithActiveScreen = '/login_with_active_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String verificationScreen = '/verification_screen';

  static const String resetPasswordScreen = '/reset_password_screen';

  static const String resetPasswordSuccessScreen =
      '/reset_password_success_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String searchScreen = '/search_screen';

  static const String categoriesScreen = '/categories_screen';

  static const String categories2GridScreen = '/categories_2_grid_screen';

  static const String topPicksForYouScreen = '/top_picks_for_you_screen';

  static const String ourSpecialityScreen = '/our_speciality_screen';

  static const String handBagScreen = '/hand_bag_screen';

  static const String texturesScreen = '/laptop_bag_screen';

  static const String duffelBagScreen = '/duffel_bag_screen';
  static const String filterScreen = '/filter_screen';

  static const String detailPage = '/detail_page';

  static const String detailTabContainerScreen = '/detail_tab_container_screen';

  static const String detailTwoScreen = '/detail_two_screen';

  static const String detailImageScreen = '/detail_image_screen';

  static const String myCartScreen = '/my_cart_screen';

  static const String myCartOnePage = '/my_cart_one_page';

  static const String deletOrderScreen = '/delet_order_screen';

  static const String myCouponEmptyScreen = '/my_coupon_empty_screen';

  static const String myCouponScreen = '/my_coupon_screen';

  static const String myCouponOneScreen = '/my_coupon_one_screen';

  static const String paymentScreen = '/payment_screen';

  static const String addNewAddressScreen = '/add_new_address_screen';

  static const String myCartPaymentAddressScreen =
      '/my_cart_payment_address_screen';

  static const String myCartPaymentAddressEditScreen =
      '/my_cart_payment_address_edit_screen';

  static const String orderConfirmScreen = '/order_confirm_screen';

  static const String wishlistEmptyScreen = '/wishlist_empty_screen';

  static const String wishlistPage = '/wishlist_page';

  static const String profilePage = '/profile_page';

  static const String myProfileScreen = '/my_profile_screen';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String myAddressEmptyScreen = '/my_address_empty_screen';

  static const String addNewAddressOneScreen = '/add_new_address_one_screen';

  static const String myAddressScreen = '/my_address_screen';

  static const String editAddressScreen = '/edit_address_screen';

  static const String myCardsEmptyScreen = '/my_cards_empty_screen';

  static const String addACardDefualtScreen = '/add_a_card_defualt_screen';

  static const String addACardActiveScreen = '/add_a_card_active_screen';

  static const String myCardsDetailsScreen = '/my_cards_details_screen';

  static const String settingsScreen = '/settings_screen';

  static const String notificationsEmptyScreen = '/notifications_empty_screen';

  static const String notificationsScreen = '/notifications_screen';
  static const String privacypolicyScreen = '/privacypolicy_screen';
  static const String securityScreen = '/security_screen';

  static const String myAddressDeleteOneScreen =
      '/my_address_delete_one_screen';

  static const String myOrdersScreen = '/my_orders_screen';

  static const String myOrdersTwoScreen = '/my_orders_two_screen';

  static const String myOrdersOneScreen = '/my_orders_one_screen';

  static const String ratingScreen = '/rating_screen';

  static const String blogScreen = '/blog_screen';

  static const String blogDetailScreen = '/blog_detail_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  // static List<GetPage> pages = [
  //   GetPage(
  //     name: splashScreen,
  //     page: () => SplashScreen(),
  //     bindings: [
  //       SplashBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: gridScreen,
  //     page: () => GridScreen(),
  //     bindings: [
  //       GridBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: onboardingOneScreen,
  //     page: () => OnboardingOneScreen(),
  //     bindings: [
  //       OnboardingOneBinding(),
  //     ],
  //   ),
  //
  //   GetPage(
  //     name: onboardingOneOneScreen,
  //     page: () => OnboardingOneOneScreen(),
  //     bindings: [
  //       OnboardingOneOneBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: loginWithErrorScreen,
  //     page: () => LoginWithErrorScreen(),
  //     bindings: [
  //       LoginWithErrorBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: loginWithActiveScreen,
  //     page: () => LoginWithActiveScreen(),
  //     bindings: [
  //       LoginWithActiveBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: signUpScreen,
  //     page: () => SignUpScreen(),
  //     bindings: [
  //       SignUpBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: forgotPasswordScreen,
  //     page: () => ForgotPasswordScreen(),
  //     bindings: [
  //       ForgotPasswordBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: verificationScreen,
  //     page: () => VerificationScreen(),
  //     bindings: [
  //       VerificationBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: resetPasswordScreen,
  //     page: () => ResetPasswordScreen(),
  //     bindings: [
  //       ResetPasswordBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: resetPasswordSuccessScreen,
  //     page: () => ResetPasswordSuccessScreen(),
  //     bindings: [
  //       ResetPasswordSuccessBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: homeContainerScreen,
  //     page: () => HomeContainerScreen(),
  //     bindings: [
  //       HomeContainerBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: searchScreen,
  //     page: () => SearchScreen(),
  //     bindings: [
  //       SearchBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: categoriesScreen,
  //     page: () => CategoriesScreen(),
  //     bindings: [
  //       CategoriesBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: categories2GridScreen,
  //     page: () => Categories2GridScreen(),
  //     bindings: [
  //       Categories2GridBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: topPicksForYouScreen,
  //     page: () => TopPicksForYouScreen(),
  //     bindings: [
  //       TopPicksForYouBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: ourSpecialityScreen,
  //     page: () => OurSpecialityScreen(),
  //     bindings: [
  //       OurSpecialityBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: handBagScreen,
  //     page: () => HandBagScreen(),
  //     bindings: [
  //       HandBagBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: TexturesScreen,
  //     page: () => TexturesScreen(),
  //     bindings: [
  //       LaptopBagBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: duffelBagScreen,
  //     page: () => DuffelBagScreen(),
  //     bindings: [
  //       DuffelBagBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: filterScreen,
  //     page: () => FilterScreen(),
  //     bindings: [
  //       // DuffelBagBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: detailTabContainerScreen,
  //     page: () => DetailTabContainerScreen(),
  //     bindings: [
  //       DetailTabContainerBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: detailTwoScreen,
  //     page: () => DetailTwoScreen(),
  //     bindings: [
  //       DetailTwoBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: detailImageScreen,
  //     page: () => DetailImageScreen(),
  //     bindings: [
  //       DetailImageBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: myCartScreen,
  //     page: () => MyCartScreen(),
  //     bindings: [
  //       MyCartBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: deletOrderScreen,
  //     page: () => DeletOrderScreen(),
  //     bindings: [
  //       DeletOrderBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: myCouponScreen,
  //     page: () => MyCouponScreen(),
  //     bindings: [
  //       MyCouponBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: myCouponOneScreen,
  //     page: () => MyCouponOneScreen(),
  //     bindings: [
  //       MyCouponOneBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: paymentScreen,
  //     page: () => PaymentScreen(),
  //     bindings: [
  //       PaymentBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: addNewAddressScreen,
  //     page: () => AddNewAddressScreen(),
  //     bindings: [
  //       AddNewAddressBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: myCartPaymentAddressScreen,
  //     page: () => MyCartPaymentAddressScreen(),
  //     bindings: [
  //       MyCartPaymentAddressBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: myCartPaymentAddressEditScreen,
  //     page: () => MyCartPaymentAddressEditScreen(),
  //     bindings: [
  //       MyCartPaymentAddressEditBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: orderConfirmScreen,
  //     page: () => OrderConfirmScreen(),
  //     bindings: [
  //       OrderConfirmBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: wishlistEmptyScreen,
  //     page: () => WishlistEmptyScreen(),
  //     bindings: [
  //       WishlistEmptyBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: myProfileScreen,
  //     page: () => MyProfileScreen(),
  //     bindings: [
  //       MyProfileBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: editProfileScreen,
  //     page: () => EditProfileScreen(),
  //     bindings: [
  //       EditProfileBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: myAddressEmptyScreen,
  //     page: () => MyAddressEmptyScreen(),
  //     bindings: [
  //       MyAddressEmptyBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: myAddressScreen,
  //     page: () => MyAddressScreen(),
  //     bindings: [
  //       MyAddressBinding(),
  //     ],
  //   ),
  //   // GetPage(
  //   //   name: editAddressScreen,
  //   //   page: () => EditAddressScreen(addressData: data,),
  //   //   bindings: [
  //   //     EditAddressBinding(),
  //   //   ],
  //   // ),
  //   GetPage(
  //     name: myCardsEmptyScreen,
  //     page: () => MyCardsEmptyScreen(),
  //     bindings: [
  //       MyCardsEmptyBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: addACardDefualtScreen,
  //     page: () => AddACardDefualtScreen(),
  //     bindings: [
  //       AddACardDefualtBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: myCardsDetailsScreen,
  //     page: () => MyCardsDetailsScreen(),
  //     bindings: [
  //       MyCardsDetailsBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: settingsScreen,
  //     page: () => SettingsScreen(),
  //     bindings: [
  //       SettingsBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: notificationsEmptyScreen,
  //     page: () => NotificationsEmptyScreen(),
  //     bindings: [
  //       NotificationsEmptyBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: notificationsScreen,
  //     page: () => NotificationsScreen(),
  //     bindings: [
  //       NotificationsBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: privacypolicyScreen,
  //     page: () => PrivacyPolicyScreen(),
  //     bindings: [
  //       // NotificationsBinding(),
  //     ],
  //   ),
  //
  //   GetPage(
  //     name: securityScreen,
  //     page: () => SecurityScreen(),
  //     bindings: [
  //       // NotificationsBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: myAddressDeleteOneScreen,
  //     page: () => MyAddressDeleteOneScreen(),
  //     bindings: [
  //       MyAddressDeleteOneBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: myOrdersScreen,
  //     page: () => MyOrdersScreen(),
  //     bindings: [
  //       MyOrdersBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: myOrdersTwoScreen,
  //     page: () => MyOrdersTwoScreen(),
  //     bindings: [
  //       MyOrdersTwoBinding(),
  //     ],
  //   ),
  //   // GetPage(
  //   //   name: myOrdersOneScreen,
  //   //   page: () => MyOrdersOneScreen(),
  //   //   bindings: [
  //   //     MyOrdersOneBinding(),
  //   //   ],
  //   // ),
  //   GetPage(
  //     name: ratingScreen,
  //     page: () => RatingScreen(),
  //     bindings: [
  //       RatingBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: blogScreen,
  //     page: () => BlogScreen(),
  //     bindings: [
  //       BlogBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: blogDetailScreen,
  //     page: () => BlogDetailScreen(),
  //     bindings: [
  //       BlogDetailBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: appNavigationScreen,
  //     page: () => AppNavigationScreen(),
  //     bindings: [
  //       AppNavigationBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: initialRoute,
  //     page: () => SplashScreen(),
  //     bindings: [
  //       SplashBinding(),
  //     ],
  //   )
  // ];









  static routesFactory(settings) {
    switch (settings.name) {
      case AppRoutes.splashScreen:
        return getPage(SplashScreen(), settings);
      case AppRoutes.gridScreen:
        return getPage(MainProject(), settings);
      case AppRoutes.onboardingOneScreen:
        return getPage(OnboardingOneScreen(), settings);
      case AppRoutes.loginWithActiveScreen:
        return getPage(MainProject(), settings);
      case AppRoutes.signUpScreen:
        return getPage(MainProject(), settings);
      case AppRoutes.forgotPasswordScreen:
        return getPage(MainProject(), settings);
      case AppRoutes.verificationScreen:
        return getPage(VerificationScreen(), settings);
      case AppRoutes.resetPasswordScreen:
        return getPage(ResetPasswordScreen(), settings);
      case AppRoutes.resetPasswordSuccessScreen:
        return getPage(ResetPasswordSuccessScreen(), settings);
      case AppRoutes.homeContainerScreen:
        return getPage(MainProject(), settings);
      case AppRoutes.searchScreen:
        return getPage(SearchScreen(), settings);
      case AppRoutes.categoriesScreen:
        return getPage(MainProject(), settings);

      case AppRoutes.topPicksForYouScreen:
        return getPage(TopPicksForYouScreen(), settings);
      case AppRoutes.ourSpecialityScreen:
        return getPage(OurSpecialityScreen(), settings);
      case AppRoutes.texturesScreen:
        return getPage(TexturesScreen(), settings);
      case AppRoutes.handBagScreen:
        return getPage(HandBagScreen(), settings);
      case AppRoutes.duffelBagScreen:
        return getPage(MainProject(), settings);
      case AppRoutes.filterScreen:
        return getPage(MainProject(), settings);
      case AppRoutes.detailPage:
        return getPage(MainProject(), settings);
      case AppRoutes.detailTabContainerScreen:
        return getPage(MainProject(), settings);
      case AppRoutes.detailTwoScreen:
        return getPage(MainProject(), settings);
      case AppRoutes.detailImageScreen:
        return getPage(MainProject(), settings);
      case AppRoutes.myCartScreen:
        return getPage(MainProject(), settings);
      case AppRoutes.myCartOnePage:
        return getPage(MainProject(), settings);
      case AppRoutes.deletOrderScreen:
        return getPage(MainProject(), settings,);
      // case AppRoutes.myCouponEmptyScreen:
      //   return getPage(MyCouponEmptyScreen(), settings);
      case AppRoutes.myCouponScreen:
        return getPage(MainProject(), settings);
      case AppRoutes.myCouponOneScreen:
        return getPage(MainProject(), settings);
      case AppRoutes.paymentScreen:
        return getPage(PaymentScreen(), settings);
      case AppRoutes.addNewAddressScreen:
        return getPage(MainProject(), settings);
      case AppRoutes.myCartPaymentAddressScreen:
        return getPage(MainProject(), settings);
      case AppRoutes.myCartPaymentAddressEditScreen:
        return getPage(MainProject(), settings);
      case AppRoutes.orderConfirmScreen:
        return getPage(OrderConfirmScreen(), settings);
      case AppRoutes.wishlistEmptyScreen:
        return getPage(WishlistEmptyScreen(), settings);
      case AppRoutes.wishlistPage:
        return getPage(WishlistPage(), settings);
      case AppRoutes.profilePage:
        return getPage(ProfilePage(), settings);
      case AppRoutes.myProfileScreen:
        return getPage(MainProject(), settings);
      case AppRoutes.editProfileScreen:
        return getPage(MainProject(), settings);
      case AppRoutes.myAddressEmptyScreen:
        return getPage(MainProject(), settings);
      // case AppRoutes.addNewAddressOneScreen:
      //   return getPage(AddNewAddressOneScreen(), settings);
      case AppRoutes.myAddressScreen:
        return getPage(MainProject(), settings);
    // case AppRoutes.editAddressScreen:
    //   return getPage(EditAddressScreen(), settings);
      case AppRoutes.myCardsEmptyScreen:
        return getPage(MainProject(), settings);
      case AppRoutes.addACardDefualtScreen:
        return getPage(MainProject(), settings);
      // case AppRoutes.addACardActiveScreen:
      //   return getPage(AddACardActiveScreen(), settings);
      case AppRoutes.myCardsDetailsScreen:
        return getPage(MainProject(), settings);
      case AppRoutes.settingsScreen:
        return getPage(SettingsScreen(), settings);
      case AppRoutes.notificationsEmptyScreen:
        return getPage(NotificationsEmptyScreen(), settings);
      case AppRoutes.notificationsScreen:
        return getPage(NotificationsScreen(), settings);
      case AppRoutes.privacypolicyScreen:
        return getPage(PrivacyPolicyScreen(), settings);
      case AppRoutes.securityScreen:
        return getPage(SecurityScreen(), settings);
      case AppRoutes.myAddressDeleteOneScreen:
        return getPage(MainProject(), settings);
      case AppRoutes.myOrdersScreen:
        return getPage(MainProject(), settings);
      case AppRoutes.myOrdersTwoScreen:
        return getPage(MainProject(), settings);
    // case AppRoutes.myOrdersOneScreen:
    //   return getPage(MyOrdersOneScreen(), settings);
      case AppRoutes.ratingScreen:
        return getPage(RatingScreen(), settings);
      case AppRoutes.blogScreen:
        return getPage(MainProject(), settings);
      case AppRoutes.blogDetailScreen:
        return getPage(MainProject(), settings);
      case AppRoutes.appNavigationScreen:
        return getPage(MainProject(), settings);
      case AppRoutes.initialRoute:
        return getPage(SplashScreen(), settings);
      default:
        return null;
    }
  }
  static Map<String, WidgetBuilder> routes = {
    AppRoutes.splashScreen: (context) =>  SplashScreen(),
  };


  static getPage(var child, var settings) {
    var type = PageTransitionType.rightToLeft;
    return PageTransition(
      child: child,
      type: type,
      settings: settings,

    );
  }
}




