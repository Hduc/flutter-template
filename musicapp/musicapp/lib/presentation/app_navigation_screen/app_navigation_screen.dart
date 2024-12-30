import 'package:flutter/material.dart';
import 'package:musicapp/core/app_export.dart';

import 'controller/app_navigation_controller.dart';

class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key}) : super(key: key);

  @override Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.primary,
        body: SizedBox(width: getHorizontalSize(375),
            child: Column(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(decoration: AppDecoration.white,
                      child: Column(mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Align(alignment: Alignment.centerLeft,
                                child: Padding(padding: getPadding(
                                    left: 20, top: 10, right: 20, bottom: 10),
                                    child: Text("lbl_app_navigation".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(color: appTheme
                                            .black900,
                                            fontSize: getFontSize(20),
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400)))),
                            Align(alignment: Alignment.centerLeft,
                                child: Padding(padding: getPadding(left: 20),
                                    child: Text("msg_check_your_app_s".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(color: appTheme
                                            .blueGray400,
                                            fontSize: getFontSize(16),
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400)))),
                            Padding(padding: getPadding(top: 5),
                                child: Divider(height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: appTheme.black900))
                          ])),
                  Expanded(child: SingleChildScrollView(child: Container(
                      decoration: AppDecoration.white,
                      child: Column(mainAxisAlignment: MainAxisAlignment.start,
                          children: [GestureDetector(onTap: () {
                            onTapOnboardingFour();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text(
                                                "lbl_onboarding_four".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapSplashscreen();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_splash_screen".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapOnboardingFive();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text(
                                                "lbl_onboarding_five".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapOnboardingSix();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_onboarding_six".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapLogin();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_login2".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapLoginerror();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_login_error".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapLoginfill();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_login_fill".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapSignup();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_sign_up".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapForgotpassword();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text(
                                                "lbl_forgot_password".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapOTPverification();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text(
                                                "msg_otp_verification".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapResetpasswordOne();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text(
                                                "msg_reset_password_one".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapResetpassword();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_reset_password".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapHomescreenContainer();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text(
                                                "msg_home_screen_container".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapRecentlyplayed();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text(
                                                "lbl_recently_played".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapRecommendedforyou();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text(
                                                "msg_recommended_for".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapArtistforyou();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_artist_for_you".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapSongsdetail();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_songs_detail".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapPlayscreen();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_play_screen".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapArtistsong();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_artist_song".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapMoreotionpopup();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text(
                                                "msg_more_otion_popup".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapShare();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_share2".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapNotificationsempty();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text(
                                                "msg_notifications_empty".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapNotifications();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_notifications".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapSearchscreenfill();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text(
                                                "msg_search_screen_fill".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapMylibary();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_my_libary".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapAddplaylist();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_add_playlist".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapMylibaryplaylistTabContainer();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text(
                                                "msg_my_libary_playlist".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapMyprofile();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_my_profile".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapEditprofile();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_edit_profile".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapMywishlist();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_my_wishlist".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapSettings();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_settings".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapAboutus();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_about_us".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapAboutusOne();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_about_us_one".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapRateus();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_rate_us".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapFeedback();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_feedback".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapPrivacypolicy();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_privacy_policy".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapLogoutpopup();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_log_out_popup".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ])))
                          ]))))
                ]))));
  }

  /// Navigates to the onboardingFourScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the onboardingFourScreen.
  onTapOnboardingFour() {
    Get.toNamed(AppRoutes.onboardingFourScreen,);
  }

  /// Navigates to the splashScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the splashScreen.
  onTapSplashscreen() {
    Get.toNamed(AppRoutes.splashScreen,);
  }

  /// Navigates to the onboardingFiveScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the onboardingFiveScreen.
  onTapOnboardingFive() {
    Get.toNamed(AppRoutes.onboardingFiveScreen,);
  }

  /// Navigates to the onboardingSixScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the onboardingSixScreen.
  onTapOnboardingSix() {
    Get.toNamed(AppRoutes.onboardingSixScreen,);
  }

  /// Navigates to the loginScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the loginScreen.
  onTapLogin() {
    Get.toNamed(AppRoutes.loginScreen,);
  }

  /// Navigates to the loginErrorScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the loginErrorScreen.
  onTapLoginerror() {
    Get.toNamed(AppRoutes.loginErrorScreen,);
  }

  /// Navigates to the loginFillScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the loginFillScreen.
  onTapLoginfill() {
    Get.toNamed(AppRoutes.loginFillScreen,);
  }

  /// Navigates to the signUpScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the signUpScreen.
  onTapSignup() {
    Get.toNamed(AppRoutes.signUpScreen,);
  }

  /// Navigates to the forgotPasswordScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the forgotPasswordScreen.
  onTapForgotpassword() {
    Get.toNamed(AppRoutes.forgotPasswordScreen,);
  }

  /// Navigates to the otpVerificationScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the otpVerificationScreen.
  onTapOTPverification() {
    Get.toNamed(AppRoutes.otpVerificationScreen,);
  }

  /// Navigates to the resetPasswordOneScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the resetPasswordOneScreen.
  onTapResetpasswordOne() {
    Get.toNamed(AppRoutes.resetPasswordOneScreen,);
  }

  /// Navigates to the resetPasswordScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the resetPasswordScreen.
  onTapResetpassword() {
    Get.toNamed(AppRoutes.resetPasswordScreen,);
  }

  /// Navigates to the homeScreenContainerScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the homeScreenContainerScreen.
  onTapHomescreenContainer() {
    Get.toNamed(AppRoutes.homeScreenContainerScreen,);
  }

  /// Navigates to the recentlyPlayedScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the recentlyPlayedScreen.
  onTapRecentlyplayed() {
    Get.toNamed(AppRoutes.recentlyPlayedScreen,);
  }

  /// Navigates to the recommendedForYouScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the recommendedForYouScreen.
  onTapRecommendedforyou() {
    Get.toNamed(AppRoutes.recommendedForYouScreen,);
  }

  /// Navigates to the artistForYouScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the artistForYouScreen.
  onTapArtistforyou() {
    Get.toNamed(AppRoutes.artistForYouScreen,);
  }

  /// Navigates to the songsDetailScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the songsDetailScreen.
  onTapSongsdetail() {
    Get.toNamed(AppRoutes.songsDetailScreen,);
  }

  /// Navigates to the playScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the playScreen.
  onTapPlayscreen() {
    Get.toNamed(AppRoutes.playScreen,);
  }

  /// Navigates to the artistSongScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the artistSongScreen.
  onTapArtistsong() {
    Get.toNamed(AppRoutes.artistSongScreen,);
  }

  /// Navigates to the moreOtionPopupScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the moreOtionPopupScreen.
  onTapMoreotionpopup() {
    Get.toNamed(AppRoutes.moreOtionPopupScreen,);
  }

  /// Navigates to the shareScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the shareScreen.
  onTapShare() {
    Get.toNamed(AppRoutes.shareScreen,);
  }

  /// Navigates to the notificationsEmptyScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the notificationsEmptyScreen.
  onTapNotificationsempty() {
    Get.toNamed(AppRoutes.notificationsEmptyScreen,);
  }

  /// Navigates to the notificationsScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the notificationsScreen.
  onTapNotifications() {
    Get.toNamed(AppRoutes.notificationsScreen,);
  }

  /// Navigates to the searchScreenFillScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the searchScreenFillScreen.
  onTapSearchscreenfill() {
    Get.toNamed(AppRoutes.searchScreenFillScreen,);
  }

  /// Navigates to the myLibaryScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the myLibaryScreen.
  onTapMylibary() {
    Get.toNamed(AppRoutes.myLibaryScreen,);
  }

  /// Navigates to the addPlaylistScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the addPlaylistScreen.
  onTapAddplaylist() {
    Get.toNamed(AppRoutes.addPlaylistScreen,);
  }

  /// Navigates to the myLibaryPlaylistTabContainerScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the myLibaryPlaylistTabContainerScreen.
  onTapMylibaryplaylistTabContainer() {
    Get.toNamed(AppRoutes.myLibaryPlaylistTabContainerScreen,);
  }

  /// Navigates to the myProfileScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the myProfileScreen.
  onTapMyprofile() {
    Get.toNamed(AppRoutes.myProfileScreen,);
  }

  /// Navigates to the editProfileScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the editProfileScreen.
  onTapEditprofile() {
    Get.toNamed(AppRoutes.editProfileScreen,);
  }

  /// Navigates to the myWishlistScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the myWishlistScreen.
  onTapMywishlist() {
    Get.toNamed(AppRoutes.myWishlistScreen,);
  }

  /// Navigates to the settingsScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the settingsScreen.
  onTapSettings() {
    Get.toNamed(AppRoutes.settingsScreen,);
  }

  /// Navigates to the aboutUsScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the aboutUsScreen.
  onTapAboutus() {
    Get.toNamed(AppRoutes.aboutUsScreen,);
  }

  /// Navigates to the aboutUsOneScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the aboutUsOneScreen.
  onTapAboutusOne() {
    Get.toNamed(AppRoutes.aboutUsOneScreen,);
  }

  /// Navigates to the rateUsScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the rateUsScreen.
  onTapRateus() {
    Get.toNamed(AppRoutes.rateUsScreen,);
  }

  /// Navigates to the feedbackScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the feedbackScreen.
  onTapFeedback() {
    Get.toNamed(AppRoutes.feedbackScreen,);
  }

  /// Navigates to the privacyPolicyScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the privacyPolicyScreen.
  onTapPrivacypolicy() {
    Get.toNamed(AppRoutes.privacyPolicyScreen,);
  }

  /// Navigates to the logOutPopupScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the logOutPopupScreen.
  onTapLogoutpopup() {
    Get.toNamed(AppRoutes.logOutPopupScreen,);
  }
}
