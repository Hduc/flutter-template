import 'package:dating_app/core/app_export.dart';
import 'package:flutter/material.dart';

import 'controller/app_navigation_controller.dart';

class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key}) : super(key: key);

  @override Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(child: Scaffold(backgroundColor: appTheme.whiteA700,
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
                            onTapSplashTwo();
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
                                            child: Text("lbl_splash_two".tr,
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
                            onTapSplash();
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
                                            child: Text("lbl_splash".tr,
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
                            onTapSplashOne();
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
                                            child: Text("lbl_splash_one".tr,
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
                            onTapOnboardingOne();
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
                                            child: Text("lbl_onboarding_one".tr,
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
                            onTapOnboardingTwo();
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
                                            child: Text("lbl_onboarding_two".tr,
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
                            onTapOnboardingThree();
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
                                                "msg_onboarding_three".tr,
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
                                            child: Text("lbl_log_in".tr,
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
                            onTapLoginwitherror();
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
                                                "msg_log_in_with_error".tr,
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
                            onTapVerification();
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
                                            child: Text("lbl_verification".tr,
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
                            onTapVerificationOne();
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
                                                "msg_verification_one".tr,
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
                            onTapResetpasswordsuccess();
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
                                                "msg_reset_password_success".tr,
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
                            onTapGender();
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
                                            child: Text("lbl_gender".tr,
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
                            onTapOrientation();
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
                                            child: Text("lbl_orientation".tr,
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
                            onTapInterested();
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
                                            child: Text("lbl_interested".tr,
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
                            onTapCompatibility();
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
                                            child: Text("lbl_compatibility".tr,
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
                            onTapIntro();
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
                                            child: Text("lbl_intro".tr,
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
                            onTapAddpics();
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
                                            child: Text("lbl_add_pics".tr,
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
                            onTapAddpicsOne();
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
                                            child: Text("lbl_add_pics_one".tr,
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
                            onTapDescription();
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
                                            child: Text("lbl_description".tr,
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
                            onTapProfilecreatedsuccess();
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
                                                "msg_profile_created".tr,
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
                            onTapLocationaccessContainer();
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
                                                "msg_location_access".tr,
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
                            onTapAddmanuallyaddress();
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
                                                "msg_add_manually_address".tr,
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
                            onTapNearbyyouTabContainer();
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
                                                "msg_near_by_you_tab".tr,
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
                            onTapFilter();
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
                                            child: Text("lbl_filter".tr,
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
                            onTapIntrest();
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
                                            child: Text("lbl_intrest".tr,
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
                            onTapDetails();
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
                                            child: Text("lbl_details".tr,
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
                            onTapMatchsuccess();
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
                                            child: Text("lbl_match_success".tr,
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
                            onTapSearch();
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
                                            child: Text("lbl_search".tr,
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
                            onTapSearchresult();
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
                                            child: Text("lbl_search_result".tr,
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
                            onTapLikes();
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
                                            child: Text("lbl_likes".tr,
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
                            onTapChats();
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
                                            child: Text("lbl_chats".tr,
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
                            onTapChatsOne();
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
                                            child: Text("lbl_chats_one".tr,
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
                            onTapChatswithkeyboard();
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
                                                "msg_chats_with_keyboard".tr,
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
                            onTapChatsWithsend();
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
                                                "lbl_chats_with_send".tr,
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
                            onTapChatsWithimage();
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
                                                "msg_chats_with_image".tr,
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
                            onTapCall();
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
                                            child: Text("lbl_call".tr,
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
                            onTapEmptynotification();
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
                                                "msg_empty_notification".tr,
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
                            onTapNotification();
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
                                            child: Text("lbl_notification".tr,
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
                            onTapMyaddress();
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
                                            child: Text("lbl_my_address".tr,
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
                            onTapAddressedit();
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
                                            child: Text("lbl_address_edit".tr,
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
                            onTapDeleteaddress();
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
                                            child: Text("lbl_delete_address".tr,
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
                            onTapEditaddress();
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
                                            child: Text("lbl_edit_address".tr,
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
                            onTapAddnewaddress();
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
                                                "lbl_add_new_address".tr,
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
                            onTapSubscription();
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
                                            child: Text("lbl_subscription".tr,
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
                            onTapPaymentmethod();
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
                                            child: Text("lbl_payment_method".tr,
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
                            onTapReviewsummary();
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
                                            child: Text("lbl_review_summary".tr,
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
                            onTapHelp();
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
                                            child: Text("lbl_help".tr,
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
                            onTapTermsandconditions();
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
                                                "msg_terms_and_conditions".tr,
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
                            onTapLogout();
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
                                            child: Text("lbl_logout2".tr,
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

  /// Navigates to the splashTwoScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the splashTwoScreen.
  onTapSplashTwo() {
    Get.toNamed(AppRoutes.splashTwoScreen,);
  }

  /// Navigates to the splashScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the splashScreen.
  onTapSplash() {
    Get.toNamed(AppRoutes.splashScreen,);
  }

  /// Navigates to the splashOneScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the splashOneScreen.
  onTapSplashOne() {
    Get.toNamed(AppRoutes.splashOneScreen,);
  }

  /// Navigates to the onboardingOneScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the onboardingOneScreen.
  onTapOnboardingOne() {
    Get.toNamed(AppRoutes.onboardingOneScreen,);
  }

  /// Navigates to the onboardingTwoScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the onboardingTwoScreen.
  onTapOnboardingTwo() {
    Get.toNamed(AppRoutes.onboardingTwoScreen,);
  }

  /// Navigates to the onboardingThreeScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the onboardingThreeScreen.
  onTapOnboardingThree() {
    Get.toNamed(AppRoutes.onboardingThreeScreen,);
  }

  /// Navigates to the logInScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the logInScreen.
  onTapLogin() {
    Get.toNamed(AppRoutes.logInScreen,);
  }

  /// Navigates to the logInWithErrorScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the logInWithErrorScreen.
  onTapLoginwitherror() {
    Get.toNamed(AppRoutes.logInWithErrorScreen,);
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

  /// Navigates to the verificationScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the verificationScreen.
  onTapVerification() {
    Get.toNamed(AppRoutes.verificationScreen,);
  }

  /// Navigates to the verificationOneScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the verificationOneScreen.
  onTapVerificationOne() {
    Get.toNamed(AppRoutes.verificationOneScreen,);
  }

  /// Navigates to the resetPasswordScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the resetPasswordScreen.
  onTapResetpassword() {
    Get.toNamed(AppRoutes.resetPasswordScreen,);
  }

  /// Navigates to the resetPasswordSuccessScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the resetPasswordSuccessScreen.
  onTapResetpasswordsuccess() {
    Get.toNamed(AppRoutes.resetPasswordSuccessScreen,);
  }

  /// Navigates to the genderScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the genderScreen.
  onTapGender() {
    Get.toNamed(AppRoutes.genderScreen,);
  }

  /// Navigates to the orientationScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the orientationScreen.
  onTapOrientation() {
    Get.toNamed(AppRoutes.orientationScreen,);
  }

  /// Navigates to the interestedScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the interestedScreen.
  onTapInterested() {
    Get.toNamed(AppRoutes.interestedScreen,);
  }

  /// Navigates to the compatibilityScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the compatibilityScreen.
  onTapCompatibility() {
    Get.toNamed(AppRoutes.compatibilityScreen,);
  }

  /// Navigates to the introScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the introScreen.
  onTapIntro() {
    Get.toNamed(AppRoutes.introScreen,);
  }

  /// Navigates to the addPicsScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the addPicsScreen.
  onTapAddpics() {
    Get.toNamed(AppRoutes.addPicsScreen,);
  }

  /// Navigates to the addPicsOneScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the addPicsOneScreen.
  onTapAddpicsOne() {
    Get.toNamed(AppRoutes.addPicsOneScreen,);
  }

  /// Navigates to the descriptionScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the descriptionScreen.
  onTapDescription() {
    Get.toNamed(AppRoutes.descriptionScreen,);
  }

  /// Navigates to the profileCreatedSuccessScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the profileCreatedSuccessScreen.
  onTapProfilecreatedsuccess() {
    Get.toNamed(AppRoutes.profileCreatedSuccessScreen,);
  }

  /// Navigates to the locationAccessContainer1Screen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the locationAccessContainer1Screen.
  onTapLocationaccessContainer() {
    Get.toNamed(AppRoutes.locationAccessContainer1Screen,);
  }

  /// Navigates to the addManuallyAddressScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the addManuallyAddressScreen.
  onTapAddmanuallyaddress() {
    Get.toNamed(AppRoutes.addManuallyAddressScreen,);
  }

  /// Navigates to the nearByYouTabContainerScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the nearByYouTabContainerScreen.
  onTapNearbyyouTabContainer() {
    Get.toNamed(AppRoutes.nearByYouTabContainerScreen,);
  }

  /// Navigates to the filterScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the filterScreen.
  onTapFilter() {
    Get.toNamed(AppRoutes.filterScreen,);
  }

  /// Navigates to the intrestScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the intrestScreen.
  onTapIntrest() {
    Get.toNamed(AppRoutes.intrestScreen,);
  }

  /// Navigates to the detailsScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the detailsScreen.
  onTapDetails() {
    Get.toNamed(AppRoutes.detailsScreen,);
  }

  /// Navigates to the matchSuccessScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the matchSuccessScreen.
  onTapMatchsuccess() {
    Get.toNamed(AppRoutes.matchSuccessScreen,);
  }

  /// Navigates to the searchScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the searchScreen.
  onTapSearch() {
    Get.toNamed(AppRoutes.searchScreen,);
  }

  /// Navigates to the searchResultScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the searchResultScreen.
  onTapSearchresult() {
    Get.toNamed(AppRoutes.searchResultScreen,);
  }

  /// Navigates to the likesScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the likesScreen.
  onTapLikes() {
    Get.toNamed(AppRoutes.likesScreen,);
  }

  /// Navigates to the chatsScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the chatsScreen.
  onTapChats() {
    Get.toNamed(AppRoutes.chatsScreen,);
  }

  /// Navigates to the chatsOneScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the chatsOneScreen.
  onTapChatsOne() {
    Get.toNamed(AppRoutes.chatsOneScreen,);
  }

  /// Navigates to the chatsWithKeyboardScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the chatsWithKeyboardScreen.
  onTapChatswithkeyboard() {
    Get.toNamed(AppRoutes.chatsWithKeyboardScreen,);
  }

  /// Navigates to the chatsWithSendScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the chatsWithSendScreen.
  onTapChatsWithsend() {
    Get.toNamed(AppRoutes.chatsWithSendScreen,);
  }

  /// Navigates to the chatsWithImageScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the chatsWithImageScreen.
  onTapChatsWithimage() {
    Get.toNamed(AppRoutes.chatsWithImageScreen,);
  }

  /// Navigates to the callScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the callScreen.
  onTapCall() {
    Get.toNamed(AppRoutes.callScreen,);
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

  /// Navigates to the emptyNotificationScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the emptyNotificationScreen.
  onTapEmptynotification() {
    Get.toNamed(AppRoutes.emptyNotificationScreen,);
  }

  /// Navigates to the notificationScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the notificationScreen.
  onTapNotification() {
    Get.toNamed(AppRoutes.notificationScreen,);
  }

  /// Navigates to the myAddressScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the myAddressScreen.
  onTapMyaddress() {
    Get.toNamed(AppRoutes.myAddressScreen,);
  }

  /// Navigates to the addressEditScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the addressEditScreen.
  onTapAddressedit() {
    Get.toNamed(AppRoutes.addressEditScreen,);
  }

  /// Navigates to the deleteAddressScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the deleteAddressScreen.
  onTapDeleteaddress() {
    Get.toNamed(AppRoutes.deleteAddressScreen,);
  }

  /// Navigates to the editAddressScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the editAddressScreen.
  onTapEditaddress() {
    Get.toNamed(AppRoutes.editAddressScreen,);
  }

  /// Navigates to the addNewAddressScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the addNewAddressScreen.
  onTapAddnewaddress() {
    Get.toNamed(AppRoutes.addNewAddressScreen,);
  }

  /// Navigates to the subscriptionScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the subscriptionScreen.
  onTapSubscription() {
    Get.toNamed(AppRoutes.subscriptionScreen,);
  }

  /// Navigates to the paymentMethodScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the paymentMethodScreen.
  onTapPaymentmethod() {
    Get.toNamed(AppRoutes.paymentMethodScreen,);
  }

  /// Navigates to the reviewSummaryScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the reviewSummaryScreen.
  onTapReviewsummary() {
    Get.toNamed(AppRoutes.reviewSummaryScreen,);
  }

  /// Navigates to the helpScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the helpScreen.
  onTapHelp() {
    Get.toNamed(AppRoutes.helpScreen,);
  }

  /// Navigates to the termsAndConditionsScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the termsAndConditionsScreen.
  onTapTermsandconditions() {
    Get.toNamed(AppRoutes.termsAndConditionsScreen,);
  }

  /// Navigates to the logoutScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the logoutScreen.
  onTapLogout() {
    Get.toNamed(AppRoutes.logoutScreen,);
  }
}
