import 'package:bustrackingapp/core/app_export.dart';
import 'package:bustrackingapp/data/apiClient/api_client.dart';

import 'package:bustrackingapp/presentation/home_container_screen/controller/home_container_controller.dart';
import 'package:bustrackingapp/presentation/home_search_filled_screen/controller/home_search_filled_controller.dart';
import 'package:bustrackingapp/presentation/home_search_screen/controller/home_search_controller.dart';
import 'package:bustrackingapp/presentation/login_error_screen/controller/login_error_controller.dart';
import 'package:bustrackingapp/presentation/login_forgot_password_screen/controller/login_forgot_password_controller.dart';
import 'package:bustrackingapp/presentation/login_screen/controller/login_controller.dart';
import 'package:bustrackingapp/presentation/logout_screen/controller/logout_controller.dart';
import 'package:bustrackingapp/presentation/map_screen/controller/map_controller.dart';
import 'package:bustrackingapp/presentation/my_address_screen/controller/my_address_controller.dart';
import 'package:bustrackingapp/presentation/my_cards_screen/controller/my_cards_controller.dart';
import 'package:bustrackingapp/presentation/onboarding_screen_five_screen/controller/onboarding_screen_five_controller.dart';
import 'package:bustrackingapp/presentation/onboarding_screen_six_screen/controller/onboarding_screen_six_controller.dart';
import 'package:bustrackingapp/presentation/package_booking_pop_up_screen/controller/package_booking_pop_up_controller.dart';
import 'package:bustrackingapp/presentation/password_change_screen/controller/password_change_controller.dart';
import 'package:bustrackingapp/presentation/privacy_policy_screen/controller/privacy_policy_controller.dart';
import 'package:bustrackingapp/presentation/profile_details_screen/controller/profile_details_controller.dart';

import 'package:bustrackingapp/presentation/reset_password_screen/controller/reset_password_controller.dart';
import 'package:bustrackingapp/presentation/select_payment_method_one_screen/controller/select_payment_method_one_controller.dart';
import 'package:bustrackingapp/presentation/select_payment_method_screen/controller/select_payment_method_controller.dart';
import 'package:bustrackingapp/presentation/share_ride_screen/controller/share_ride_controller.dart';
import 'package:bustrackingapp/presentation/sign_up_screen/controller/sign_up_controller.dart';

import 'package:bustrackingapp/presentation/my_address_delete_screen/controller/my_address_delete_controller.dart';
import 'package:bustrackingapp/presentation/my_address_edit_delete_screen/controller/my_address_edit_delete_controller.dart';
import 'package:bustrackingapp/presentation/onboarding_screen_four_screen/controller/onboarding_screen_four_controller.dart';
import 'package:bustrackingapp/presentation/splash_screen_one_screen/controller/splash_screen_one_controller.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(PrefUtils());
    Get.put(ApiClient());
    Connectivity connectivity = Connectivity();
    Get.put(NetworkInfo(connectivity));

    Get.lazyPut(() => SplashScreenOneController());
    Get.lazyPut(() => OnboardingScreenFourController());
    Get.lazyPut(() => OnboardingScreenFiveController());
    Get.lazyPut(() => OnboardingScreenSixController());
    Get.lazyPut(() => SignUpController());
    Get.lazyPut(() => LoginController());
    Get.lazyPut(() => LoginErrorController());
    Get.lazyPut(() => LoginForgotPasswordController());

    Get.lazyPut(() => ResetPasswordController());
    Get.lazyPut(() => PasswordChangeController());
    Get.lazyPut(() => HomeContainerController());
    Get.lazyPut(() => HomeSearchController());
    Get.lazyPut(() => HomeSearchFilledController());

    Get.lazyPut(() => MapController());
    Get.lazyPut(() => ShareRideController());

    Get.lazyPut(() => SelectPaymentMethodOneController());

    Get.lazyPut(() => SelectPaymentMethodController());
    Get.lazyPut(() => PackageBookingPopUpController());

    Get.lazyPut(() => ProfileDetailsController());

    Get.lazyPut(() => MyCardsController());

    Get.lazyPut(() => MyAddressController());
    Get.lazyPut(() => MyAddressEditDeleteController());

    Get.lazyPut(() => MyAddressDeleteController());
    Get.lazyPut(() => PrivacyPolicyController());
    Get.lazyPut(() => LogoutController());

  }
}
