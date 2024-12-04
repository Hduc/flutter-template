
import 'package:diet_app/main_project.dart';
import 'package:diet_app/presentation/onboarding_one_screen/onboarding_one_screen.dart';
import 'package:diet_app/presentation/onboarding_one_screen/binding/onboarding_one_binding.dart';
import 'package:diet_app/presentation/onboarding_two_screen/onboarding_two_screen.dart';
import 'package:diet_app/presentation/onboarding_two_screen/binding/onboarding_two_binding.dart';
import 'package:diet_app/presentation/onboarding_three_screen/onboarding_three_screen.dart';
import 'package:diet_app/presentation/onboarding_three_screen/binding/onboarding_three_binding.dart';
import 'package:diet_app/presentation/onboarding_four_screen/onboarding_four_screen.dart';
import 'package:diet_app/presentation/onboarding_four_screen/binding/onboarding_four_binding.dart';
import 'package:diet_app/presentation/onboarding_five_screen/onboarding_five_screen.dart';
import 'package:diet_app/presentation/onboarding_five_screen/binding/onboarding_five_binding.dart';
import 'package:diet_app/presentation/onboarding_six_screen/onboarding_six_screen.dart';
import 'package:diet_app/presentation/onboarding_six_screen/binding/onboarding_six_binding.dart';

import 'package:diet_app/presentation/signup_screen/signup_screen.dart';
import 'package:diet_app/presentation/signup_screen/binding/signup_binding.dart';
import 'package:diet_app/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:diet_app/presentation/forgot_password_screen/binding/forgot_password_binding.dart';

import 'package:diet_app/presentation/home_screen_container_screen/home_screen_container_screen.dart';
import 'package:diet_app/presentation/home_screen_container_screen/binding/home_screen_container_binding.dart';

import 'package:diet_app/presentation/add_menu_tab_container_screen/add_menu_tab_container_screen.dart';
import 'package:diet_app/presentation/add_menu_tab_container_screen/binding/add_menu_tab_container_binding.dart';

import 'package:diet_app/presentation/notifications_screen/notifications_screen.dart';
import 'package:diet_app/presentation/notifications_screen/binding/notifications_binding.dart';
import 'package:diet_app/presentation/details_screen/details_screen.dart';
import 'package:diet_app/presentation/details_screen/binding/details_binding.dart';
import 'package:diet_app/presentation/my_cart_screen/my_cart_screen.dart';
import 'package:diet_app/presentation/my_cart_screen/binding/my_cart_binding.dart';
import 'package:diet_app/presentation/address_screen/address_screen.dart';
import 'package:diet_app/presentation/address_screen/binding/address_binding.dart';
import 'package:diet_app/presentation/add_new_address_screen/add_new_address_screen.dart';
import 'package:diet_app/presentation/add_new_address_screen/binding/add_new_address_binding.dart';

import 'package:diet_app/presentation/add_new_card_screen/add_new_card_screen.dart';
import 'package:diet_app/presentation/add_new_card_screen/binding/add_new_card_binding.dart';

import 'package:diet_app/presentation/choose_your_plan_standard_tab_container_screen/choose_your_plan_standard_tab_container_screen.dart';
import 'package:diet_app/presentation/choose_your_plan_standard_tab_container_screen/binding/choose_your_plan_standard_tab_container_binding.dart';


import 'package:diet_app/presentation/number_of_meals_screen/number_of_meals_screen.dart';
import 'package:diet_app/presentation/number_of_meals_screen/binding/number_of_meals_binding.dart';
import 'package:diet_app/presentation/number_of_snacks_screen/number_of_snacks_screen.dart';
import 'package:diet_app/presentation/number_of_snacks_screen/binding/number_of_snacks_binding.dart';
import 'package:diet_app/presentation/number_of_weeks_screen/number_of_weeks_screen.dart';
import 'package:diet_app/presentation/number_of_weeks_screen/binding/number_of_weeks_binding.dart';

import 'package:diet_app/presentation/my_profile_screen/my_profile_screen.dart';
import 'package:diet_app/presentation/my_profile_screen/binding/my_profile_binding.dart';
import 'package:diet_app/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:diet_app/presentation/edit_profile_screen/binding/edit_profile_binding.dart';

import 'package:diet_app/presentation/about_us_screen/about_us_screen.dart';
import 'package:diet_app/presentation/about_us_screen/binding/about_us_binding.dart';
import 'package:diet_app/presentation/help_screen/help_screen.dart';
import 'package:diet_app/presentation/help_screen/binding/help_binding.dart';
import 'package:diet_app/presentation/feedback_screen/feedback_screen.dart';
import 'package:diet_app/presentation/feedback_screen/binding/feedback_binding.dart';

import 'package:get/get.dart';

import '../presentation/splash_screen/binding/splace_binding.dart';
import '../presentation/splash_screen/splash_screen.dart';

class AppRoutes {
  static const String splaceScreen = '/splace_screen';

  static const String onboardingOneScreen = '/onboarding_one_screen';

  static const String onboardingTwoScreen = '/onboarding_two_screen';

  static const String onboardingThreeScreen = '/onboarding_three_screen';

  static const String onboardingFourScreen = '/onboarding_four_screen';

  static const String onboardingFiveScreen = '/onboarding_five_screen';

  static const String onboardingSixScreen = '/onboarding_six_screen';

  static const String loginScreen = '/login_screen';

  static const String loginErrorScreen = '/login_error_screen';

  static const String loginFilledScreen = '/login_filled_screen';

  static const String signupScreen = '/signup_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String verificationScreen = '/verification_screen';

  static const String verificationOneScreen = '/verification_one_screen';

  static const String verificationConfirmScreen =
      '/verification_confirm_screen';

  static const String homeScreenPage = '/home_screen_page';

  static const String homeScreenContainerScreen =
      '/home_screen_container_screen';

  static const String whatForLunchScreen = '/what_for_lunch_screen';

  static const String recommendationsScreen = '/recommendations_screen';

  static const String moveDaysScreen = '/move_days_screen';

  static const String addMenuPage = '/add_menu_page';

  static const String addMenuTabContainerScreen =
      '/add_menu_tab_container_screen';

  static const String changeDeliveryAddressScreen =
      '/change_delivery_address_screen';

  static const String selectDateScreen = '/select_date_screen';

  static const String notificationsScreen = '/notifications_screen';

  static const String menuPage = '/menu_page';

  static const String menuTabContainerPage = '/menu_tab_container_page';

  static const String detailsScreen = '/details_screen';

  static const String myCartScreen = '/my_cart_screen';

  static const String addressScreen = '/address_screen';

  static const String addNewAddressScreen = '/add_new_address_screen';

  static const String paymentScreen = '/payment_screen';

  static const String addNewCardScreen = '/add_new_card_screen';

  static const String checkOutScreen = '/check_out_screen';

  static const String orderSuccessfullScreen = '/order_successfull_screen';

  static const String trackOrderOneScreen = '/track_order_one_screen';

  static const String trackOrderScreen = '/track_order_screen';

  static const String chooseYourPlanStandardPage =
      '/choose_your_plan_standard_page';

  static const String chooseYourPlanStandardTabContainerScreen =
      '/choose_your_plan_standard_tab_container_screen';

  static const String chooseYourPlanCustomizedPage =
      '/choose_your_plan_customized_page';

  static const String planDurationScreen = '/plan_duration_screen';

  static const String daysPerWeekScreen = '/days_per_week_screen';

  static const String selectMonthScreen = '/select_month_screen';

  static const String numberOfMealsScreen = '/number_of_meals_screen';

  static const String numberOfSnacksScreen = '/number_of_snacks_screen';

  static const String numberOfWeeksScreen = '/number_of_weeks_screen';

  static const String chooseYourPlanStandardOnePage =
      '/choose_your_plan_standard_one_page';

  static const String myPlanPage = '/my_plan_page';

  static const String runningPlanDetailsScreen = '/running_plan_details_screen';

  static const String profilePage = '/profile_page';

  static const String myProfileScreen = '/my_profile_screen';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String settingsScreen = '/settings_screen';

  static const String aboutUsScreen = '/about_us_screen';

  static const String helpScreen = '/help_screen';

  static const String feedbackScreen = '/feedback_screen';

  static const String privacyPolicyScreen = '/privacy_policy_screen';

  static const String premiumScreen = '/premium_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splaceScreen,
      page: () => SplashScreen(),
      transition: Transition.fadeIn,
      transitionDuration: Duration(seconds: 1),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: onboardingOneScreen,
      page: () => MainProject(),
      transition: Transition.cupertino,
      transitionDuration: Duration(seconds: 1),
      bindings: [
        OnboardingOneBinding(),
      ],
    ),
    GetPage(
      name: onboardingTwoScreen,
      page: () => MainProject(),
      transition: Transition.cupertino,
      transitionDuration: Duration(milliseconds: 500),
      bindings: [
        OnboardingTwoBinding(),
      ],
    ),
    GetPage(
      name: onboardingThreeScreen,
      page: () => MainProject(),
      transition: Transition.cupertino,
      transitionDuration: Duration(milliseconds: 500),
      bindings: [
        OnboardingThreeBinding(),
      ],
    ),
    GetPage(
      name: onboardingFourScreen,
      page: () => MainProject(),
      transition: Transition.cupertino,
      transitionDuration: Duration(seconds: 1),
      bindings: [
        OnboardingFourBinding(),
      ],
    ),
    GetPage(
      name: onboardingFiveScreen,
      page: () => MainProject(),
      transition: Transition.cupertino,
      transitionDuration: Duration(milliseconds: 500),
      bindings: [
        OnboardingFiveBinding(),
      ],
    ),
    GetPage(
      name: onboardingSixScreen,
      page: () => MainProject(),
      transition: Transition.cupertino,
      transitionDuration: Duration(milliseconds: 500),
      bindings: [
        OnboardingSixBinding(),
      ],
    ),

    GetPage(
      name: signupScreen,
      page: () => MainProject(),
      transition: Transition.cupertino,
      transitionDuration: Duration(milliseconds: 500),
      bindings: [
        SignupBinding(),
      ],
    ),
    GetPage(
      name: forgotPasswordScreen,
      page: () => MainProject(),
      transition: Transition.cupertino,
      transitionDuration: Duration(milliseconds: 500),
      bindings: [
        ForgotPasswordBinding(),
      ],
    ),

    GetPage(
      name: homeScreenContainerScreen,
      page: () => MainProject(),
      transition: Transition.cupertino,
      transitionDuration: Duration(milliseconds: 500),
      bindings: [
        HomeScreenContainerBinding(),
      ],
    ),

    GetPage(
      name: addMenuTabContainerScreen,
      page: () => MainProject(),
      transition: Transition.cupertino,
      transitionDuration: Duration(milliseconds: 500),
      bindings: [
        AddMenuTabContainerBinding(),
      ],
    ),


    GetPage(
      name: notificationsScreen,
      page: () => MainProject(),
      transition: Transition.cupertino,
      transitionDuration: Duration(milliseconds: 500),
      bindings: [
        NotificationsBinding(),
      ],
    ),
    GetPage(
      name: detailsScreen,
      page: () => DetailsScreen(),
      transition: Transition.cupertino,
      transitionDuration: Duration(milliseconds: 500),
      bindings: [
        DetailsBinding(),
      ],
    ),
    GetPage(
      name: myCartScreen,
      page: () => MyCartScreen(),
      transition: Transition.cupertino,
      transitionDuration: Duration(milliseconds: 500),
      bindings: [
        MyCartBinding(),
      ],
    ),
    GetPage(
      name: addressScreen,
      page: () => MainProject(),
      transition: Transition.cupertino,
      transitionDuration: Duration(milliseconds: 300),
      bindings: [
        AddressBinding(),
      ],
    ),
    GetPage(
      name: addNewAddressScreen,
      page: () => AddNewAddressScreen(),
      transition: Transition.cupertino,
      transitionDuration: Duration(milliseconds: 300),
      bindings: [
        AddNewAddressBinding(),
      ],
    ),

    GetPage(
      name: addNewCardScreen,
      page: () => AddNewCardScreen(),
      transition: Transition.cupertino,
      transitionDuration: Duration(milliseconds: 300),
      bindings: [
        AddNewCardBinding(),
      ],
    ),


    GetPage(
      name: chooseYourPlanStandardTabContainerScreen,
      page: () => ChooseYourPlanStandardTabContainerScreen(),
      transition: Transition.cupertino,
      transitionDuration: Duration(milliseconds: 500),
      bindings: [
        ChooseYourPlanStandardTabContainerBinding(),
      ],
    ),


    GetPage(
      name: numberOfMealsScreen,
      page: () => NumberOfMealsScreen(),
      transition: Transition.cupertino,
      transitionDuration: Duration(milliseconds: 500),
      bindings: [
        NumberOfMealsBinding(),
      ],
    ),
    GetPage(
      name: numberOfSnacksScreen,
      page: () => NumberOfSnacksScreen(),
      transition: Transition.cupertino,
      transitionDuration: Duration(milliseconds: 500),
      bindings: [
        NumberOfSnacksBinding(),
      ],
    ),
    GetPage(
      name: numberOfWeeksScreen,
      page: () => NumberOfWeeksScreen(),
      transition: Transition.cupertino,
      transitionDuration: Duration(milliseconds: 500),
      bindings: [
        NumberOfWeeksBinding(),
      ],
    ),

    GetPage(
      name: myProfileScreen,
      page: () => MyProfileScreen(),
      transition: Transition.cupertino,
      transitionDuration: Duration(milliseconds: 500),
      bindings: [
        MyProfileBinding(),
      ],
    ),
    GetPage(
      name: editProfileScreen,
      page: () => EditProfileScreen(),
      transition: Transition.cupertino,
      transitionDuration: Duration(milliseconds: 500),
      bindings: [
        EditProfileBinding(),
      ],
    ),

    GetPage(
      name: aboutUsScreen,
      page: () => AboutUsScreen(),
      transition: Transition.cupertino,
      transitionDuration: Duration(milliseconds: 500),
      bindings: [
        AboutUsBinding(),
      ],
    ),
    GetPage(
      name: helpScreen,
      page: () => HelpScreen(),
      transition: Transition.cupertino,
      transitionDuration: Duration(milliseconds: 500),
      bindings: [
        HelpBinding(),
      ],
    ),
    GetPage(
      name: feedbackScreen,
      page: () => FeedbackScreen(),
      transition: Transition.cupertino,
      transitionDuration: Duration(milliseconds: 500),
      bindings: [
        FeedbackBinding(),
      ],
    ),


    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      transition: Transition.fadeIn,
      transitionDuration: Duration(milliseconds: 500),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
