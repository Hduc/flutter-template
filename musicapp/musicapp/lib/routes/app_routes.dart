import 'package:musicapp/presentation/onboarding_four_screen/onboarding_four_screen.dart';
import 'package:musicapp/presentation/onboarding_four_screen/binding/onboarding_four_binding.dart';
import 'package:musicapp/presentation/splash_screen/splash_screen.dart';
import 'package:musicapp/presentation/splash_screen/binding/splash_binding.dart';
import 'package:musicapp/presentation/login_screen/login_screen.dart';
import 'package:musicapp/presentation/login_screen/binding/login_binding.dart';
import 'package:musicapp/presentation/login_fill_screen/login_fill_screen.dart';
import 'package:musicapp/presentation/login_fill_screen/binding/login_fill_binding.dart';
import 'package:musicapp/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:musicapp/presentation/sign_up_screen/binding/sign_up_binding.dart';
import 'package:musicapp/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:musicapp/presentation/forgot_password_screen/binding/forgot_password_binding.dart';
import 'package:musicapp/presentation/otp_verification_screen/otp_verification_screen.dart';
import 'package:musicapp/presentation/otp_verification_screen/binding/otp_verification_binding.dart';
import 'package:musicapp/presentation/reset_password_one_screen/reset_password_one_screen.dart';
import 'package:musicapp/presentation/reset_password_one_screen/binding/reset_password_one_binding.dart';
import 'package:musicapp/presentation/reset_password_screen/reset_password_screen.dart';
import 'package:musicapp/presentation/reset_password_screen/binding/reset_password_binding.dart';
import 'package:musicapp/presentation/home_screen_container_screen/home_screen_container_screen.dart';
import 'package:musicapp/presentation/home_screen_container_screen/binding/home_screen_container_binding.dart';
import 'package:musicapp/presentation/recently_played_screen/recently_played_screen.dart';
import 'package:musicapp/presentation/recently_played_screen/binding/recently_played_binding.dart';
import 'package:musicapp/presentation/recommended_for_you_screen/recommended_for_you_screen.dart';
import 'package:musicapp/presentation/recommended_for_you_screen/binding/recommended_for_you_binding.dart';
import 'package:musicapp/presentation/artist_for_you_screen/artist_for_you_screen.dart';
import 'package:musicapp/presentation/artist_for_you_screen/binding/artist_for_you_binding.dart';
import 'package:musicapp/presentation/songs_detail_screen/songs_detail_screen.dart';
import 'package:musicapp/presentation/songs_detail_screen/binding/songs_detail_binding.dart';
import 'package:musicapp/presentation/play_screen/play_screen.dart';
import 'package:musicapp/presentation/play_screen/binding/play_binding.dart';
import 'package:musicapp/presentation/artist_song_screen/artist_song_screen.dart';
import 'package:musicapp/presentation/artist_song_screen/binding/artist_song_binding.dart';
import 'package:musicapp/presentation/more_otion_popup_screen/more_otion_popup_screen.dart';
import 'package:musicapp/presentation/more_otion_popup_screen/binding/more_otion_popup_binding.dart';
import 'package:musicapp/presentation/notifications_screen/notifications_screen.dart';
import 'package:musicapp/presentation/notifications_screen/binding/notifications_binding.dart';
import 'package:musicapp/presentation/search_screen_fill_screen/search_screen_fill_screen.dart';
import 'package:musicapp/presentation/search_screen_fill_screen/binding/search_screen_fill_binding.dart';
import 'package:musicapp/presentation/my_libary_screen/my_libary_screen.dart';
import 'package:musicapp/presentation/my_libary_screen/binding/my_libary_binding.dart';
import 'package:musicapp/presentation/add_playlist_screen/add_playlist_screen.dart';
import 'package:musicapp/presentation/add_playlist_screen/binding/add_playlist_binding.dart';
import 'package:musicapp/presentation/my_libary_playlist_tab_container_screen/my_libary_playlist_tab_container_screen.dart';
import 'package:musicapp/presentation/my_libary_playlist_tab_container_screen/binding/my_libary_playlist_tab_container_binding.dart';
import 'package:musicapp/presentation/my_profile_screen/my_profile_screen.dart';
import 'package:musicapp/presentation/my_profile_screen/binding/my_profile_binding.dart';
import 'package:musicapp/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:musicapp/presentation/edit_profile_screen/binding/edit_profile_binding.dart';
import 'package:musicapp/presentation/my_wishlist_screen/my_wishlist_screen.dart';
import 'package:musicapp/presentation/my_wishlist_screen/binding/my_wishlist_binding.dart';
import 'package:musicapp/presentation/settings_screen/settings_screen.dart';
import 'package:musicapp/presentation/settings_screen/binding/settings_binding.dart';
import 'package:musicapp/presentation/about_us_screen/about_us_screen.dart';
import 'package:musicapp/presentation/about_us_screen/binding/about_us_binding.dart';
import 'package:musicapp/presentation/about_us_one_screen/about_us_one_screen.dart';
import 'package:musicapp/presentation/about_us_one_screen/binding/about_us_one_binding.dart';
import 'package:musicapp/presentation/rate_us_screen/rate_us_screen.dart';
import 'package:musicapp/presentation/rate_us_screen/binding/rate_us_binding.dart';
import 'package:musicapp/presentation/feedback_screen/feedback_screen.dart';
import 'package:musicapp/presentation/feedback_screen/binding/feedback_binding.dart';
import 'package:musicapp/presentation/privacy_policy_screen/privacy_policy_screen.dart';
import 'package:musicapp/presentation/privacy_policy_screen/binding/privacy_policy_binding.dart';
import 'package:musicapp/presentation/log_out_popup_screen/log_out_popup_screen.dart';
import 'package:musicapp/presentation/log_out_popup_screen/binding/log_out_popup_binding.dart';
import 'package:musicapp/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:musicapp/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

import '../presentation/add_artist_screen/add_artist_screen.dart';
import '../presentation/add_artist_screen/binding/add_artist_binding.dart';

class AppRoutes {
  static const String onboardingFourScreen = '/onboarding_four_screen';

  static const String splashScreen = '/splash_screen';

  static const String onboardingFiveScreen = '/onboarding_five_screen';

  static const String onboardingSixScreen = '/onboarding_six_screen';

  static const String loginScreen = '/login_screen';

  static const String loginErrorScreen = '/login_error_screen';

  static const String loginFillScreen = '/login_fill_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String otpVerificationScreen = '/otp_verification_screen';

  static const String resetPasswordOneScreen = '/reset_password_one_screen';

  static const String resetPasswordScreen = '/reset_password_screen';

  static const String homeScreenPage = '/home_screen_page';

  static const String homeScreenContainerScreen =
      '/home_screen_container_screen';

  static const String recentlyPlayedScreen = '/recently_played_screen';

  static const String recommendedForYouScreen = '/recommended_for_you_screen';

  static const String artistForYouScreen = '/artist_for_you_screen';

  static const String songsDetailScreen = '/songs_detail_screen';

  static const String playScreen = '/play_screen';

  static const String artistSongScreen = '/artist_song_screen';

  static const String moreOtionPopupScreen = '/more_otion_popup_screen';

  static const String shareScreen = '/share_screen';

  static const String notificationsEmptyScreen = '/notifications_empty_screen';

  static const String notificationsScreen = '/notifications_screen';

  static const String searchScreenPage = '/search_screen_page';

  static const String searchScreenFillScreen = '/search_screen_fill_screen';

  static const String myLibaryAddPage = '/my_libary_add_page';

  static const String myLibaryScreen = '/my_libary_screen';

  static const String addPlaylistScreen = '/add_playlist_screen';
  static const String addArtistlistScreen = '/add_artistlist_screen';

  static const String myLibaryArtistPage = '/my_libary_artist_page';

  static const String myLibaryPlaylistPage = '/my_libary_playlist_page';

  static const String myLibaryPlaylistTabContainerScreen =
      '/my_libary_playlist_tab_container_screen';

  static const String myProfileOnePage = '/my_profile_one_page';

  static const String myProfileScreen = '/my_profile_screen';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String myWishlistScreen = '/my_wishlist_screen';

  static const String settingsScreen = '/settings_screen';

  static const String aboutUsScreen = '/about_us_screen';

  static const String aboutUsOneScreen = '/about_us_one_screen';

  static const String rateUsScreen = '/rate_us_screen';

  static const String feedbackScreen = '/feedback_screen';

  static const String privacyPolicyScreen = '/privacy_policy_screen';

  static const String logOutPopupScreen = '/log_out_popup_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: onboardingFourScreen,
      page: () => OnboardingFourScreen(),
      bindings: [
        OnboardingFourBinding(),
      ],
    ),
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
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
      name: loginFillScreen,
      page: () => LoginFillScreen(),
      bindings: [
        LoginFillBinding(),
      ],
    ),
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      name: forgotPasswordScreen,
      page: () => ForgotPasswordScreen(),
      bindings: [
        ForgotPasswordBinding(),
      ],
    ),
    GetPage(
      name: otpVerificationScreen,
      page: () => OtpVerificationScreen(),
      bindings: [
        OtpVerificationBinding(),
      ],
    ),
    GetPage(
      name: resetPasswordOneScreen,
      page: () => ResetPasswordOneScreen(),
      bindings: [
        ResetPasswordOneBinding(),
      ],
    ),
    GetPage(
      name: resetPasswordScreen,
      page: () => ResetPasswordScreen(),
      bindings: [
        ResetPasswordBinding(),
      ],
    ),
    GetPage(
      name: homeScreenContainerScreen,
      page: () => HomeScreenContainerScreen(),
      bindings: [
        HomeScreenContainerBinding(),
      ],
    ),
    GetPage(
      name: recentlyPlayedScreen,
      page: () => RecentlyPlayedScreen(),
      bindings: [
        RecentlyPlayedBinding(),
      ],
    ),
    GetPage(
      name: recommendedForYouScreen,
      page: () => RecommendedForYouScreen(),
      bindings: [
        RecommendedForYouBinding(),
      ],
    ),
    GetPage(
      name: artistForYouScreen,
      page: () => ArtistForYouScreen(),
      bindings: [
        ArtistForYouBinding(),
      ],
    ),
    GetPage(
      name: songsDetailScreen,
      page: () => SongsDetailScreen(),
      bindings: [
        SongsDetailBinding(),
      ],
    ),
    GetPage(
      name: playScreen,
      page: () => PlayScreen(),
      bindings: [
        PlayBinding(),
      ],
    ),
    GetPage(
      name: artistSongScreen,
      page: () => ArtistSongScreen(),
      bindings: [
        ArtistSongBinding(),
      ],
    ),
    GetPage(
      name: moreOtionPopupScreen,
      page: () => MoreOtionPopupScreen(),
      bindings: [
        MoreOtionPopupBinding(),
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
      name: searchScreenFillScreen,
      page: () => SearchScreenFillScreen(),
      bindings: [
        SearchScreenFillBinding(),
      ],
    ),
    GetPage(
      name: myLibaryScreen,
      page: () => MyLibaryScreen(),
      bindings: [
        MyLibaryBinding(),
      ],
    ),
    GetPage(
      name: addPlaylistScreen,
      page: () => AddPlaylistScreen(),
      bindings: [
        AddPlaylistBinding(),
      ],
    ),
    GetPage(
      name: addArtistlistScreen,
      page: () => AddArtistScreen(),
      bindings: [
        AddArtistlistBinding(),
      ],
    ),
    GetPage(
      name: myLibaryPlaylistTabContainerScreen,
      page: () => MyLibaryPlaylistTabContainerScreen(),
      bindings: [
        MyLibaryPlaylistTabContainerBinding(),
      ],
    ),
    GetPage(
      name: myProfileScreen,
      page: () => MyProfileScreen(),
      bindings: [
        MyProfileBinding(),
      ],
    ),
    GetPage(
      name: editProfileScreen,
      page: () => EditProfileScreen(),
      bindings: [
        EditProfileBinding(),
      ],
    ),
    GetPage(
      name: myWishlistScreen,
      page: () => MyWishlistScreen(),
      bindings: [
        MyWishlistBinding(),
      ],
    ),
    GetPage(
      name: settingsScreen,
      page: () => SettingsScreen(),
      bindings: [
        SettingsBinding(),
      ],
    ),
    GetPage(
      name: aboutUsScreen,
      page: () => AboutUsScreen(),
      bindings: [
        AboutUsBinding(),
      ],
    ),
    GetPage(
      name: aboutUsOneScreen,
      page: () => AboutUsOneScreen(),
      bindings: [
        AboutUsOneBinding(),
      ],
    ),
    GetPage(
      name: rateUsScreen,
      page: () => RateUsScreen(),
      bindings: [
        RateUsBinding(),
      ],
    ),
    GetPage(
      name: feedbackScreen,
      page: () => FeedbackScreen(),
      bindings: [
        FeedbackBinding(),
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
      name: logOutPopupScreen,
      page: () => LogOutPopupScreen(),
      bindings: [
        LogOutPopupBinding(),
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
