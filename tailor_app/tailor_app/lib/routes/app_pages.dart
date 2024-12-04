import 'package:flutter/material.dart';
import 'package:tailor_app/main_project.dart';
import 'package:tailor_app/view/alteration/alteration_screen.dart';
import 'package:tailor_app/view/best_selling/best_selling_list_screen.dart';
import 'package:tailor_app/view/cart/add_card_screen.dart';
import 'package:tailor_app/view/cart/cart_screen.dart';
import 'package:tailor_app/view/cart/checkout_screen.dart';
import 'package:tailor_app/view/cart/payment_screen.dart';
import 'package:tailor_app/view/customize_clothes/customize_clothes_screen.dart';
import 'package:tailor_app/view/fabric_collection/fabric_collection_screen.dart';
import 'package:tailor_app/view/fabric_collection/fabric_detail.dart';
import 'package:tailor_app/view/fabric_collection/upload_fabric.dart';
import 'package:tailor_app/view/favourite/favourite_screen.dart';
import 'package:tailor_app/view/home/home_screen.dart';
import 'package:tailor_app/view/intro/intro_screen.dart';
import 'package:tailor_app/view/login/forgot_screen.dart';
import 'package:tailor_app/view/login/login_screen.dart';
import 'package:tailor_app/view/login/reset_screen.dart';

import 'package:tailor_app/view/setting/setting_screen.dart';
import 'package:tailor_app/view/sign_up/sign_up_screen.dart';
import 'package:tailor_app/view/sign_up/verify_screen.dart';
import 'package:tailor_app/view/trending_product/trending_product_list.dart';
import '../splash_screen.dart';
import 'app_routes.dart';

class AppPages {
  static const initialRoute = Routes.homeRoute;
  static Map<String, WidgetBuilder> routes = {
    Routes.homeRoute: (context) => const SplashScreen(),
    Routes.introRoute: (context) => const MainProject(),
    Routes.loginRoute: (context) => const LoginScreen(),
    Routes.homeScreenRoute: (context) => const HomeScreen(),
    Routes.forgotScreenRoute: (context) => const ForgotScreen(),
    Routes.resetScreenRoute: (context) => const ResetScreen(),
    Routes.signUpScreenRoute: (context) => const SignUpScreen(),
    Routes.verifyScreenRoute: (context) => const VerifyScreen(),

    Routes.fabricCollectionRoute: (context) => const FabricCollectionScreen(),
    Routes.uploadFabricRoute: (context) => const UploadFabric(),
    Routes.alterationRoute: (context) => const AlterationScreen(),
    Routes.customizeClothRoute: (context) => const CustomizeClotheScreen(),
    Routes.cartScreenRoute: (context) => const CartScreen(),
    Routes.checkoutScreenRoute: (context) => const CheckoutScreen(),
    Routes.paymentScreenRoute: (context) => const PaymentScreen(),
    Routes.addCardScreenRoute: (context) => const AddCardScreen(),
    Routes.bestSellingListRoute: (context) => const BestSellingListScreen(),
    Routes.trendingProductListRoute: (context) => const TrendingProductList(),

    Routes.settingScreenRoute: (context) => const SettingScreen(),

    Routes.favouriteRoute: (context) => const FavouriteScreen(),


    Routes.fabricDetailRoute: (context) => const FabricDetail()
  };
}
