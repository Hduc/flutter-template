import 'package:flutter/material.dart';
import 'package:music_podcast/main_project.dart';
import 'package:music_podcast/view/download/download_screen.dart';
import 'package:music_podcast/view/history/history_screen.dart';
import 'package:music_podcast/view/home/home_screen.dart';
import 'package:music_podcast/view/intro_screen.dart';
import 'package:music_podcast/view/lifestyle_podcast/lifestyle_podcast_list.dart';
import 'package:music_podcast/view/list/new_release_list.dart';
import 'package:music_podcast/view/list/recommended_list.dart';
import 'package:music_podcast/view/list/trending_list.dart';
import 'package:music_podcast/view/login/forgot_password.dart';
import 'package:music_podcast/view/login/login_screen.dart';
import 'package:music_podcast/view/login/reset_password.dart';
import 'package:music_podcast/view/login/verification_screen.dart';


import '../splash_screen.dart';
import 'app_routes.dart';

class AppPages {
  static const initialRoute = Routes.homeRoute;
  static Map<String, WidgetBuilder> routes = {
    Routes.homeRoute: (context) => const SplashScreen(),
    Routes.introRoute: (context) => const IntroScreen(),
    Routes.loginRoute: (context) => const MainProject(),
    Routes.homeScreenRoute: (context) => const MainProject(),
    Routes.forgotPasswordRoute: (context) => const ForgotPassword(),
    Routes.resetPasswordRoute: (context) => const ResetPassword(),
    Routes.verificationRoute: (context) => const VerificationScreen(),
    Routes.popularPodcastListRoute: (context) => const MainProject(),
    Routes.trendingPodcastListRoute: (context) => const MainProject(),
    Routes.lifeStylePodcastListRoute: (context) => const LifeStylePodcastList(),
    Routes.searchScreenRoute: (context) => const MainProject(),
    Routes.myProfileScreenRoute: (context) => const MainProject(),
    Routes.notificationScreenRoute: (context) => const MainProject(),
    Routes.downloadRoute: (context) => const DownloadScreen(),
    Routes.historyRoute: (context) => const HistoryScreen(),
    Routes.privacyRoute: (context) => const MainProject(),
    Routes.termConditionRoute: (context) => const MainProject(),
    Routes.podcastDetailRoute: (context) => const MainProject(),
    Routes.episodeListRoute: (context) => const MainProject(),
    Routes.newReleaseListRoute: (context) => const NewReleaseListScreen(),
    Routes.recommendedListRoute: (context) => const RecommendedList(),
    Routes.trendingListRoute: (context) => const TrendingList()
  };
}
