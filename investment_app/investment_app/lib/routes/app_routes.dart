import 'package:investment_app/presentation/splash_screen/splash_screen.dart';
import 'package:investment_app/presentation/splash_screen/binding/splash_binding.dart';
import 'package:investment_app/presentation/onboarding_six_screen/onboarding_six_screen.dart';
import 'package:investment_app/presentation/onboarding_six_screen/binding/onboarding_six_binding.dart';
import 'package:investment_app/presentation/login_screen/login_screen.dart';
import 'package:investment_app/presentation/login_screen/binding/login_binding.dart';
import 'package:investment_app/presentation/otp_screen/otp_screen.dart';
import 'package:investment_app/presentation/otp_screen/binding/otp_binding.dart';
import 'package:investment_app/presentation/register_name_screen/register_name_screen.dart';
import 'package:investment_app/presentation/register_name_screen/binding/register_name_binding.dart';
import 'package:investment_app/presentation/register_gender_screen/register_gender_screen.dart';
import 'package:investment_app/presentation/register_gender_screen/binding/register_gender_binding.dart';
import 'package:investment_app/presentation/register_date_of_birth_screen/register_date_of_birth_screen.dart';
import 'package:investment_app/presentation/register_date_of_birth_screen/binding/register_date_of_birth_binding.dart';
import 'package:investment_app/presentation/register_where_you_born_screen/register_where_you_born_screen.dart';
import 'package:investment_app/presentation/register_where_you_born_screen/binding/register_where_you_born_binding.dart';
import 'package:investment_app/presentation/register_hope_to_achieve_screen/register_hope_to_achieve_screen.dart';
import 'package:investment_app/presentation/register_hope_to_achieve_screen/binding/register_hope_to_achieve_binding.dart';
import 'package:investment_app/presentation/register_investing_experience_screen/register_investing_experience_screen.dart';
import 'package:investment_app/presentation/register_investing_experience_screen/binding/register_investing_experience_binding.dart';
import 'package:investment_app/presentation/register_job_screen/register_job_screen.dart';
import 'package:investment_app/presentation/register_job_screen/binding/register_job_binding.dart';
import 'package:investment_app/presentation/register_company_name_screen/register_company_name_screen.dart';
import 'package:investment_app/presentation/register_company_name_screen/binding/register_company_name_binding.dart';
import 'package:investment_app/presentation/register_job_role_screen/register_job_role_screen.dart';
import 'package:investment_app/presentation/register_job_role_screen/binding/register_job_role_binding.dart';
import 'package:investment_app/presentation/register_savings_screen/register_savings_screen.dart';
import 'package:investment_app/presentation/register_savings_screen/binding/register_savings_binding.dart';
import 'package:investment_app/presentation/register_upload_or_take_id_card_screen/register_upload_or_take_id_card_screen.dart';
import 'package:investment_app/presentation/register_upload_or_take_id_card_screen/binding/register_upload_or_take_id_card_binding.dart';
import 'package:investment_app/presentation/register_photo_id_card_screen/register_photo_id_card_screen.dart';
import 'package:investment_app/presentation/register_photo_id_card_screen/binding/register_photo_id_card_binding.dart';
import 'package:investment_app/presentation/register_photo_id_card_saved_screen/register_photo_id_card_saved_screen.dart';
import 'package:investment_app/presentation/register_photo_id_card_saved_screen/binding/register_photo_id_card_saved_binding.dart';
import 'package:investment_app/presentation/register_address_screen/register_address_screen.dart';
import 'package:investment_app/presentation/register_address_screen/binding/register_address_binding.dart';
import 'package:investment_app/presentation/register_selfie_w_id_card_one_screen/register_selfie_w_id_card_one_screen.dart';
import 'package:investment_app/presentation/register_selfie_w_id_card_one_screen/binding/register_selfie_w_id_card_one_binding.dart';
import 'package:investment_app/presentation/register_selfie_w_id_card_screen/register_selfie_w_id_card_screen.dart';
import 'package:investment_app/presentation/register_selfie_w_id_card_screen/binding/register_selfie_w_id_card_binding.dart';
import 'package:investment_app/presentation/register_selfie_w_id_card_saved_screen/register_selfie_w_id_card_saved_screen.dart';
import 'package:investment_app/presentation/register_selfie_w_id_card_saved_screen/binding/register_selfie_w_id_card_saved_binding.dart';
import 'package:investment_app/presentation/register_term_agreement_screen/register_term_agreement_screen.dart';
import 'package:investment_app/presentation/register_term_agreement_screen/binding/register_term_agreement_binding.dart';
import 'package:investment_app/presentation/register_set_pin_screen/register_set_pin_screen.dart';
import 'package:investment_app/presentation/register_set_pin_screen/binding/register_set_pin_binding.dart';
import 'package:investment_app/presentation/homepage_screen/homepage_screen.dart';
import 'package:investment_app/presentation/homepage_screen/binding/homepage_binding.dart';
import 'package:investment_app/presentation/homepage_vtwo_screen/homepage_vtwo_screen.dart';
import 'package:investment_app/presentation/homepage_vtwo_screen/binding/homepage_vtwo_binding.dart';
import 'package:investment_app/presentation/homepage_vthree_container_screen/homepage_vthree_container_screen.dart';
import 'package:investment_app/presentation/homepage_vthree_container_screen/binding/homepage_vthree_container_binding.dart';
import 'package:investment_app/presentation/deposit_select_payment_screen/deposit_select_payment_screen.dart';
import 'package:investment_app/presentation/deposit_select_payment_screen/binding/deposit_select_payment_binding.dart';
import 'package:investment_app/presentation/deposit_deposit_amount_screen/deposit_deposit_amount_screen.dart';
import 'package:investment_app/presentation/deposit_deposit_amount_screen/binding/deposit_deposit_amount_binding.dart';
import 'package:investment_app/presentation/deposit_waiting_fund_screen/deposit_waiting_fund_screen.dart';
import 'package:investment_app/presentation/deposit_waiting_fund_screen/binding/deposit_waiting_fund_binding.dart';
import 'package:investment_app/presentation/withdraw_select_account_screen/withdraw_select_account_screen.dart';
import 'package:investment_app/presentation/withdraw_select_account_screen/binding/withdraw_select_account_binding.dart';
import 'package:investment_app/presentation/withdraw_add_bank_account_screen/withdraw_add_bank_account_screen.dart';
import 'package:investment_app/presentation/withdraw_add_bank_account_screen/binding/withdraw_add_bank_account_binding.dart';
import 'package:investment_app/presentation/withdraw_bank_account_info_screen/withdraw_bank_account_info_screen.dart';
import 'package:investment_app/presentation/withdraw_bank_account_info_screen/binding/withdraw_bank_account_info_binding.dart';
import 'package:investment_app/presentation/withdraw_confirm_bank_account_one_screen/withdraw_confirm_bank_account_one_screen.dart';
import 'package:investment_app/presentation/withdraw_confirm_bank_account_one_screen/binding/withdraw_confirm_bank_account_one_binding.dart';
import 'package:investment_app/presentation/withdraw_confirm_bank_account_screen/withdraw_confirm_bank_account_screen.dart';
import 'package:investment_app/presentation/withdraw_confirm_bank_account_screen/binding/withdraw_confirm_bank_account_binding.dart';
import 'package:investment_app/presentation/withdraw_withdraw_amount_screen/withdraw_withdraw_amount_screen.dart';
import 'package:investment_app/presentation/withdraw_withdraw_amount_screen/binding/withdraw_withdraw_amount_binding.dart';
import 'package:investment_app/presentation/withdraw_summary_screen/withdraw_summary_screen.dart';
import 'package:investment_app/presentation/withdraw_summary_screen/binding/withdraw_summary_binding.dart';
import 'package:investment_app/presentation/notification_screen/notification_screen.dart';
import 'package:investment_app/presentation/notification_screen/binding/notification_binding.dart';
import 'package:investment_app/presentation/sbux_stock_screen/sbux_stock_screen.dart';
import 'package:investment_app/presentation/sbux_stock_screen/binding/sbux_stock_binding.dart';
import 'package:investment_app/presentation/spot_market_stats_screen/spot_market_stats_screen.dart';
import 'package:investment_app/presentation/spot_market_stats_screen/binding/spot_market_stats_binding.dart';
import 'package:investment_app/presentation/buy_screen/buy_screen.dart';
import 'package:investment_app/presentation/buy_screen/binding/buy_binding.dart';
import 'package:investment_app/presentation/buy_stock_option_screen/buy_stock_option_screen.dart';
import 'package:investment_app/presentation/buy_stock_option_screen/binding/buy_stock_option_binding.dart';
import 'package:investment_app/presentation/summary_one_screen/summary_one_screen.dart';
import 'package:investment_app/presentation/summary_one_screen/binding/summary_one_binding.dart';
import 'package:investment_app/presentation/sell_screen/sell_screen.dart';
import 'package:investment_app/presentation/sell_screen/binding/sell_binding.dart';
import 'package:investment_app/presentation/summary_screen/summary_screen.dart';
import 'package:investment_app/presentation/summary_screen/binding/summary_binding.dart';
import 'package:investment_app/presentation/exchange_screen/exchange_screen.dart';
import 'package:investment_app/presentation/exchange_screen/binding/exchange_binding.dart';
import 'package:investment_app/presentation/summary_two_screen/summary_two_screen.dart';
import 'package:investment_app/presentation/summary_two_screen/binding/summary_two_binding.dart';
import 'package:investment_app/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:investment_app/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String onboardingSixScreen = '/onboarding_six_screen';

  static const String loginScreen = '/login_screen';

  static const String otpScreen = '/otp_screen';

  static const String registerNameScreen = '/register_name_screen';

  static const String registerGenderScreen = '/register_gender_screen';

  static const String registerDateOfBirthScreen =
      '/register_date_of_birth_screen';

  static const String registerWhereYouBornScreen =
      '/register_where_you_born_screen';

  static const String registerHopeToAchieveScreen =
      '/register_hope_to_achieve_screen';

  static const String registerInvestingExperienceScreen =
      '/register_investing_experience_screen';

  static const String registerJobScreen = '/register_job_screen';

  static const String registerCompanyNameScreen =
      '/register_company_name_screen';

  static const String registerJobRoleScreen = '/register_job_role_screen';

  static const String registerSavingsScreen = '/register_savings_screen';

  static const String registerUploadOrTakeIdCardScreen =
      '/register_upload_or_take_id_card_screen';

  static const String registerPhotoIdCardScreen =
      '/register_photo_id_card_screen';

  static const String registerPhotoIdCardSavedScreen =
      '/register_photo_id_card_saved_screen';

  static const String registerAddressScreen = '/register_address_screen';

  static const String registerSelfieWIdCardOneScreen =
      '/register_selfie_w_id_card_one_screen';

  static const String registerSelfieWIdCardScreen =
      '/register_selfie_w_id_card_screen';

  static const String registerSelfieWIdCardSavedScreen =
      '/register_selfie_w_id_card_saved_screen';

  static const String registerTermAgreementScreen =
      '/register_term_agreement_screen';

  static const String registerSetPinScreen = '/register_set_pin_screen';

  static const String homepageScreen = '/homepage_screen';

  static const String homepageVtwoScreen = '/homepage_vtwo_screen';

  static const String homepageVthreePage = '/homepage_vthree_page';

  static const String homepageVthreeContainerScreen =
      '/homepage_vthree_container_screen';

  static const String depositSelectPaymentScreen =
      '/deposit_select_payment_screen';

  static const String depositDepositAmountScreen =
      '/deposit_deposit_amount_screen';

  static const String depositWaitingFundScreen = '/deposit_waiting_fund_screen';

  static const String withdrawSelectAccountScreen =
      '/withdraw_select_account_screen';

  static const String withdrawAddBankAccountScreen =
      '/withdraw_add_bank_account_screen';

  static const String withdrawBankAccountInfoScreen =
      '/withdraw_bank_account_info_screen';

  static const String withdrawConfirmBankAccountOneScreen =
      '/withdraw_confirm_bank_account_one_screen';

  static const String withdrawConfirmBankAccountScreen =
      '/withdraw_confirm_bank_account_screen';

  static const String withdrawWithdrawAmountScreen =
      '/withdraw_withdraw_amount_screen';

  static const String withdrawSummaryScreen = '/withdraw_summary_screen';

  static const String notificationScreen = '/notification_screen';

  static const String portfolioPage = '/portfolio_page';

  static const String sbuxStockScreen = '/sbux_stock_screen';

  static const String spotMarketStatsScreen = '/spot_market_stats_screen';

  static const String buyScreen = '/buy_screen';

  static const String buyStockOptionScreen = '/buy_stock_option_screen';

  static const String summaryOneScreen = '/summary_one_screen';

  static const String sellScreen = '/sell_screen';

  static const String summaryScreen = '/summary_screen';
  static const String exchangeScreen = '/exchange_screen';

  static const String summaryTwoScreen = '/summary_two_screen';

  static const String historyActivitiesPage = '/history_activities_page';

  static const String historyTransactionPage = '/history_transaction_page';

  static const String historyTransactionTabContainerPage =
      '/history_transaction_tab_container_page';

  static const String profilePage = '/profile_page';

  static const String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: onboardingSixScreen,
      page: () => OnboardingSixScreen(),
      bindings: [
        OnboardingSixBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: otpScreen,
      page: () => OtpScreen(),
      bindings: [
        OtpBinding(),
      ],
    ),
    GetPage(
      name: registerNameScreen,
      page: () => RegisterNameScreen(),
      bindings: [
        RegisterNameBinding(),
      ],
    ),
    GetPage(
      name: registerGenderScreen,
      page: () => RegisterGenderScreen(),
      bindings: [
        RegisterGenderBinding(),
      ],
    ),
    GetPage(
      name: registerDateOfBirthScreen,
      page: () => RegisterDateOfBirthScreen(),
      bindings: [
        RegisterDateOfBirthBinding(),
      ],
    ),
    GetPage(
      name: registerWhereYouBornScreen,
      page: () => RegisterWhereYouBornScreen(),
      bindings: [
        RegisterWhereYouBornBinding(),
      ],
    ),
    GetPage(
      name: registerHopeToAchieveScreen,
      page: () => RegisterHopeToAchieveScreen(),
      bindings: [
        RegisterHopeToAchieveBinding(),
      ],
    ),
    GetPage(
      name: registerInvestingExperienceScreen,
      page: () => RegisterInvestingExperienceScreen(),
      bindings: [
        RegisterInvestingExperienceBinding(),
      ],
    ),
    GetPage(
      name: registerJobScreen,
      page: () => RegisterJobScreen(),
      bindings: [
        RegisterJobBinding(),
      ],
    ),
    GetPage(
      name: registerCompanyNameScreen,
      page: () => RegisterCompanyNameScreen(),
      bindings: [
        RegisterCompanyNameBinding(),
      ],
    ),
    GetPage(
      name: registerJobRoleScreen,
      page: () => RegisterJobRoleScreen(),
      bindings: [
        RegisterJobRoleBinding(),
      ],
    ),
    GetPage(
      name: registerSavingsScreen,
      page: () => RegisterSavingsScreen(),
      bindings: [
        RegisterSavingsBinding(),
      ],
    ),
    GetPage(
      name: registerUploadOrTakeIdCardScreen,
      page: () => RegisterUploadOrTakeIdCardScreen(),
      bindings: [
        RegisterUploadOrTakeIdCardBinding(),
      ],
    ),
    GetPage(
      name: registerPhotoIdCardScreen,
      page: () => RegisterPhotoIdCardScreen(),
      bindings: [
        RegisterPhotoIdCardBinding(),
      ],
    ),
    GetPage(
      name: registerPhotoIdCardSavedScreen,
      page: () => RegisterPhotoIdCardSavedScreen(),
      bindings: [
        RegisterPhotoIdCardSavedBinding(),
      ],
    ),
    GetPage(
      name: registerAddressScreen,
      page: () => RegisterAddressScreen(),
      bindings: [
        RegisterAddressBinding(),
      ],
    ),
    GetPage(
      name: registerSelfieWIdCardOneScreen,
      page: () => RegisterSelfieWIdCardOneScreen(),
      bindings: [
        RegisterSelfieWIdCardOneBinding(),
      ],
    ),
    GetPage(
      name: registerSelfieWIdCardScreen,
      page: () => RegisterSelfieWIdCardScreen(),
      bindings: [
        RegisterSelfieWIdCardBinding(),
      ],
    ),
    GetPage(
      name: registerSelfieWIdCardSavedScreen,
      page: () => RegisterSelfieWIdCardSavedScreen(),
      bindings: [
        RegisterSelfieWIdCardSavedBinding(),
      ],
    ),
    GetPage(
      name: registerTermAgreementScreen,
      page: () => RegisterTermAgreementScreen(),
      bindings: [
        RegisterTermAgreementBinding(),
      ],
    ),
    GetPage(
      name: registerSetPinScreen,
      page: () => RegisterSetPinScreen(),
      bindings: [
        RegisterSetPinBinding(),
      ],
    ),
    GetPage(
      name: homepageScreen,
      page: () => HomepageScreen(),
      bindings: [
        HomepageBinding(),
      ],
    ),
    GetPage(
      name: homepageVtwoScreen,
      page: () => HomepageVtwoScreen(),
      bindings: [
        HomepageVtwoBinding(),
      ],
    ),
    GetPage(
      name: homepageVthreeContainerScreen,
      page: () => HomepageVthreeContainerScreen(),
      bindings: [
        HomepageVthreeContainerBinding(),
      ],
    ),
    GetPage(
      name: depositSelectPaymentScreen,
      page: () => DepositSelectPaymentScreen(),
      bindings: [
        DepositSelectPaymentBinding(),
      ],
    ),
    GetPage(
      name: depositDepositAmountScreen,
      page: () => DepositDepositAmountScreen(),
      bindings: [
        DepositDepositAmountBinding(),
      ],
    ),
    GetPage(
      name: depositWaitingFundScreen,
      page: () => DepositWaitingFundScreen(),
      bindings: [
        DepositWaitingFundBinding(),
      ],
    ),
    GetPage(
      name: withdrawSelectAccountScreen,
      page: () => WithdrawSelectAccountScreen(),
      bindings: [
        WithdrawSelectAccountBinding(),
      ],
    ),
    GetPage(
      name: withdrawAddBankAccountScreen,
      page: () => WithdrawAddBankAccountScreen(),
      bindings: [
        WithdrawAddBankAccountBinding(),
      ],
    ),
    GetPage(
      name: withdrawBankAccountInfoScreen,
      page: () => WithdrawBankAccountInfoScreen(),
      bindings: [
        WithdrawBankAccountInfoBinding(),
      ],
    ),
    GetPage(
      name: withdrawConfirmBankAccountOneScreen,
      page: () => WithdrawConfirmBankAccountOneScreen(),
      bindings: [
        WithdrawConfirmBankAccountOneBinding(),
      ],
    ),
    GetPage(
      name: withdrawConfirmBankAccountScreen,
      page: () => WithdrawConfirmBankAccountScreen(),
      bindings: [
        WithdrawConfirmBankAccountBinding(),
      ],
    ),
    GetPage(
      name: withdrawWithdrawAmountScreen,
      page: () => WithdrawWithdrawAmountScreen(),
      bindings: [
        WithdrawWithdrawAmountBinding(),
      ],
    ),
    GetPage(
      name: withdrawSummaryScreen,
      page: () => WithdrawSummaryScreen(),
      bindings: [
        WithdrawSummaryBinding(),
      ],
    ),
    GetPage(
      name: notificationScreen,
      page: () => NotificationScreen(),
      bindings: [
        NotificationBinding(),
      ],
    ),
    GetPage(
      name: sbuxStockScreen,
      page: () => SbuxStockScreen(),
      bindings: [
        SbuxStockBinding(),
      ],
    ),
    GetPage(
      name: spotMarketStatsScreen,
      page: () => SpotMarketStatsScreen(),
      bindings: [
        SpotMarketStatsBinding(),
      ],
    ),
    GetPage(
      name: buyScreen,
      page: () => BuyScreen(),
      bindings: [
        BuyBinding(),
      ],
    ),
    GetPage(
      name: buyStockOptionScreen,
      page: () => BuyStockOptionScreen(),
      bindings: [
        BuyStockOptionBinding(),
      ],
    ),
    GetPage(
      name: summaryOneScreen,
      page: () => SummaryOneScreen(),
      bindings: [
        SummaryOneBinding(),
      ],
    ),
    GetPage(
      name: sellScreen,
      page: () => SellScreen(),
      bindings: [
        SellBinding(),
      ],
    ),
    GetPage(
      name: summaryScreen,
      page: () => SummaryScreen(),
      bindings: [
        SummaryBinding(),
      ],
    ),
    GetPage(
      name: exchangeScreen,
      page: () => ExchangeScreen(),
      bindings: [
        ExchangeBinding(),
      ],
    ),
    GetPage(
      name: summaryTwoScreen,
      page: () => SummaryTwoScreen(),
      bindings: [
        SummaryTwoBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
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
