import 'package:carwash_app/main_project.dart';
import 'package:carwash_app/presentation/splash_screen/splash_screen.dart';
import 'package:carwash_app/presentation/splash_screen/binding/splash_binding.dart';
import 'package:carwash_app/presentation/onboarding_1_screen/onboarding_1_screen.dart';
import 'package:carwash_app/presentation/onboarding_1_screen/binding/onboarding_1_binding.dart';
import 'package:carwash_app/presentation/log_in_screen/log_in_screen.dart';
import 'package:carwash_app/presentation/log_in_screen/binding/log_in_binding.dart';
import 'package:carwash_app/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:carwash_app/presentation/sign_up_screen/binding/sign_up_binding.dart';

import 'package:carwash_app/presentation/verification_screen/verification_screen.dart';
import 'package:carwash_app/presentation/verification_screen/binding/verification_binding.dart';

import 'package:carwash_app/presentation/home_container_screen/home_container_screen.dart';
import 'package:carwash_app/presentation/home_container_screen/binding/home_container_binding.dart';

import 'package:carwash_app/presentation/service_detail_screen/service_detail_screen.dart';
import 'package:carwash_app/presentation/service_detail_screen/binding/service_detail_binding.dart';

import 'package:carwash_app/presentation/location_map_screen/location_map_screen.dart';
import 'package:carwash_app/presentation/location_map_screen/binding/location_map_binding.dart';
import 'package:carwash_app/presentation/location_with_select_screen/location_with_select_screen.dart';
import 'package:carwash_app/presentation/location_with_select_screen/binding/location_with_select_binding.dart';
import 'package:carwash_app/presentation/location_with_select_one_screen/location_with_select_one_screen.dart';
import 'package:carwash_app/presentation/location_with_select_one_screen/binding/location_with_select_one_binding.dart';

import 'package:carwash_app/presentation/our_reviews_screen/our_reviews_screen.dart';
import 'package:carwash_app/presentation/our_reviews_screen/binding/our_reviews_binding.dart';
import 'package:carwash_app/presentation/our_reviews_success_screen/our_reviews_success_screen.dart';
import 'package:carwash_app/presentation/our_reviews_success_screen/binding/our_reviews_success_binding.dart';
import 'package:carwash_app/presentation/profile_screen/profile_screen.dart';
import 'package:carwash_app/presentation/profile_screen/binding/profile_binding.dart';
import 'package:carwash_app/presentation/profile_details_screen/profile_details_screen.dart';
import 'package:carwash_app/presentation/profile_details_screen/binding/profile_details_binding.dart';

import 'package:carwash_app/presentation/notifications_screen/notifications_screen.dart';
import 'package:carwash_app/presentation/notifications_screen/binding/notifications_binding.dart';
import 'package:carwash_app/presentation/privacy_policy_screen/privacy_policy_screen.dart';
import 'package:carwash_app/presentation/privacy_policy_screen/binding/privacy_policy_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String gridScreen = '/grid_screen';

  static const String onboarding1Screen = '/onboarding_1_screen';

  static const String onboardingTwoScreen = '/onboarding_two_screen';

  static const String onboardingThreeScreen = '/onboarding_three_screen';

  static const String logInScreen = '/log_in_screen';

  static const String logInWithErrorScreen = '/log_in_with_error_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String fotgotPasswordScreen = '/fotgot_password_screen';

  static const String verificationScreen = '/verification_screen';

  static const String verificationCodeErrorScreen =
      '/verification_code_error_screen';

  static const String resetPasswordScreen = '/reset_password_screen';

  static const String resetPasswordTwoScreen = '/reset_password_two_screen';

  static const String resetPasswordSuccessScreen =
      '/reset_password_success_screen';

  static const String citySelcetionScreen = '/city_selcetion_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String popularCentersScreen = '/popular_centers_screen';

  static const String recommendedForYouScreen = '/recommended_for_you_screen';

  static const String topRatedScreen = '/top_rated_screen';

  static const String filterResultScreen = '/filter_result_screen';

  static const String serviceDetailScreen = '/service_detail_screen';

  static const String emptyMyVehicleOneScreen = '/empty_my_vehicle_one_screen';

  static const String addCarDetailsOneScreen = '/add_car_details_one_screen';

  static const String addCarDetailsTwoScreen = '/add_car_details_two_screen';

  static const String bookAWashScreen = '/book_a_wash_screen';

  static const String paymentMethodOneScreen = '/payment_method_one_screen';

  static const String reviewsScreen = '/reviews_screen';

  static const String customerReviewsScreen = '/customer_reviews_screen';

  static const String locationAccessPage = '/location_access_page';

  static const String locationMapScreen = '/location_map_screen';

  static const String locationWithSelectScreen = '/location_with_select_screen';

  static const String locationWithSelectOneScreen =
      '/location_with_select_one_screen';

  static const String bookingUpcomingScreen = '/booking_upcoming_screen';

  static const String bookingDetailsScreen = '/booking_details_screen';

  static const String completeBookingDetailsScreen =
      '/complete_booking_details_screen';

  static const String ourReviewsScreen = '/our_reviews_screen';

  static const String ourReviewsSuccessScreen = '/our_reviews_success_screen';

  static const String profileScreen = '/profile_screen';

  static const String profileDetailsScreen = '/profile_details_screen';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String emptyPaymentMethodScreen = '/empty_payment_method_screen';

  static const String addPaymentMethodScreen = '/add_payment_method_screen';

  static const String addPaymentMethodActiveScreen =
      '/add_payment_method_active_screen';

  static const String paymentMethodScreen = '/payment_method_screen';

  static const String emptyMyVehicleScreen = '/empty_my_vehicle_screen';

  static const String addCarDetailsScreen = '/add_car_details_screen';

  static const String addCarDetailsThreeScreen =
      '/add_car_details_three_screen';

  static const String myVehicleScreen = '/my_vehicle_screen';

  static const String emptyNotificationsScreen = '/empty_notifications_screen';

  static const String notificationsScreen = '/notifications_screen';

  static const String privacyPolicyScreen = '/privacy_policy_screen';

  static const String logOutScreen = '/log_out_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: onboarding1Screen,
      page: () => Onboarding1Screen(),
      bindings: [
        Onboarding1Binding(),
      ],
    ),
    GetPage(
      name: logInScreen,
      page: () => MainProject(),
      bindings: [
        LogInBinding(),
      ],
    ),
    GetPage(
      name: signUpScreen,
      page: () => MainProject(),
      bindings: [
        SignUpBinding(),
      ],
    ),

    GetPage(
      name: verificationScreen,
      page: () => MainProject(),
      bindings: [
        VerificationBinding(),
      ],
    ),


    GetPage(
      name: homeContainerScreen,
      page: () => MainProject(),
      bindings: [
        HomeContainerBinding(),
      ],
    ),

    GetPage(
      name: serviceDetailScreen,
      page: () => MainProject(),
      bindings: [
        ServiceDetailBinding(),
      ],
    ),

    GetPage(
      name: locationMapScreen,
      page: () => LocationMapScreen(),
      bindings: [
        LocationMapBinding(),
      ],
    ),
    GetPage(
      name: locationWithSelectScreen,
      page: () => LocationWithSelectScreen(),
      bindings: [
        LocationWithSelectBinding(),
      ],
    ),
    GetPage(
      name: locationWithSelectOneScreen,
      page: () => LocationWithSelectOneScreen(),
      bindings: [
        LocationWithSelectOneBinding(),
      ],
    ),

    // GetPage(
    //   name: bookingDetailsScreen,
    //   page: () => BookingDetailsScreen(),
    //   bindings: [
    //     BookingDetailsBinding(),
    //   ],
    // ),

    GetPage(
      name: ourReviewsScreen,
      page: () => OurReviewsScreen(),
      bindings: [
        OurReviewsBinding(),
      ],
    ),
    GetPage(
      name: ourReviewsSuccessScreen,
      page: () => OurReviewsSuccessScreen(),
      bindings: [
        OurReviewsSuccessBinding(),
      ],
    ),
    GetPage(
      name: profileScreen,
      page: () => ProfileScreen(),
      bindings: [
        ProfileBinding(),
      ],
    ),
    GetPage(
      name: profileDetailsScreen,
      page: () => ProfileDetailsScreen(),
      bindings: [
        ProfileDetailsBinding(),
      ],
    ),

    GetPage(
      name: notificationsScreen,
      page: () => NotificationsScreen(),
      bindings: [
        NotificationsBinding(),
      ],
    ),
    GetPage(
      name: privacyPolicyScreen,
      page: () => PrivacyPolicyScreen(),
      bindings: [
        PrivacyPolicyBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
