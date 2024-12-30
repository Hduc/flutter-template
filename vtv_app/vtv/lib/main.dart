import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:vtv/app/list/popular_shows_screen.dart';
import 'package:vtv/app/list/top_picks_list.dart';
import 'package:vtv/app/list/video_detail_screen.dart';
import 'package:vtv/app/profile/app_setting_screen.dart';
import 'package:vtv/app/profile/edit_profile.dart';
import 'package:vtv/app/profile/history_screen.dart';
import 'package:vtv/app/profile/my_profile_screen.dart';
import 'package:vtv/app/profile/notification_screen.dart';
import 'package:vtv/util/get/home_controller.dart';
import 'package:vtv/util/get/route_key.dart';
import 'app/Home/home_screen.dart';
import 'app/intro/intro_screen.dart';
import 'app/intro/splash_screen.dart';
import 'app/login/forgot_pass_screen.dart';
import 'app/login/login_screen.dart';
import 'app/login/personalization_screen.dart';
import 'app/login/registration_screen.dart';
import 'app/login/reset_password_screen.dart';
import 'app/login/verification_screen.dart';
import 'generated/l10n.dart';

Future<void> main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        S.delegate,
      ],
      title: 'Flutter Demo',
      theme: controller.theme,
      initialRoute: "/",
      routes: {
        "/": (context) => SplashScreen(),
        splashRoute: (context) => SplashScreen(),
        introRoute: (context) => IntroScreen(),
        loginRoute: (context) => LoginScreen(),
        forgotPassRoute: (context) => ForgotPasswordScreen(),
        resetPassRoute: (context) => ResetPasswordScreen(),
        registrationRoute: (context) => RegistrationScreen(),
        verificationScreenRoute: (context) => VerificationScreen(),
        personalizationScreenRoute: (context) => PersonalizationScreen(),
        homeScreenRoute: (context) => HomeScreen(),
        topPicksScreenRoute: (context) => TopPicksScreen(),
        popularShowsScreenRoute: (context) => PopularShowsScreen(),
        videoDetailScreenRoute: (context) => VideoDetailScreen(),
        myProfileScreenRoute: (context) => MyProfileScreen(),
        editProfileRoute: (context) => EditProfile(),
        notificationScreenRoute: (context) => NotificationScreen(),
        historyScreenRoute: (context) => HistoryScreen(),
        appSettingsScreenRoute: (context) => AppSettingsScreen(),
      },
    );
  }
}
