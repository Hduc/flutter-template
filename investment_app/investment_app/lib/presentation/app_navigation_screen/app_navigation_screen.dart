import 'controller/app_navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/presentation/register_success_bottomsheet/register_success_bottomsheet.dart';
import 'package:investment_app/presentation/register_success_bottomsheet/controller/register_success_controller.dart';
import 'package:investment_app/presentation/withdraw_success_bottomsheet/withdraw_success_bottomsheet.dart';
import 'package:investment_app/presentation/withdraw_success_bottomsheet/controller/withdraw_success_controller.dart';
import 'package:investment_app/presentation/sbux_stock_share_bottomsheet/sbux_stock_share_bottomsheet.dart';
import 'package:investment_app/presentation/sbux_stock_share_bottomsheet/controller/sbux_stock_share_controller.dart';
import 'package:investment_app/presentation/success_one_bottomsheet/success_one_bottomsheet.dart';
import 'package:investment_app/presentation/success_one_bottomsheet/controller/success_one_controller.dart';
import 'package:investment_app/presentation/success_bottomsheet/success_bottomsheet.dart';
import 'package:investment_app/presentation/success_bottomsheet/controller/success_controller.dart';
import 'package:investment_app/presentation/success_two_bottomsheet/success_two_bottomsheet.dart';
import 'package:investment_app/presentation/success_two_bottomsheet/controller/success_two_controller.dart';
import 'package:investment_app/presentation/logout_dialog/logout_dialog.dart';
import 'package:investment_app/presentation/logout_dialog/controller/logout_controller.dart';

class AppNavigationScreen extends GetWidget<AppNavigationController> {
  @override Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700,
        body: Container(width: size.width,
            child: Column(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(width: size.width,
                      decoration: AppDecoration.fillWhiteA700,
                      child: Column(mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Align(alignment: Alignment.centerLeft,
                                child: Padding(padding: getPadding(
                                    left: 20, top: 10, right: 20, bottom: 10),
                                    child: Text("lbl_app_navigation".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: AppStyle.txtRobotoRegular20
                                            .copyWith(height: getVerticalSize(
                                            1.00))))),
                            Align(alignment: Alignment.centerLeft,
                                child: Padding(padding: getPadding(left: 20),
                                    child: Text("msg_check_your_app_s".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: AppStyle.txtRobotoRegular16
                                            .copyWith(height: getVerticalSize(
                                            1.00))))),
                            Container(height: getVerticalSize(1.00),
                                width: size.width,
                                margin: getMargin(top: 5),
                                decoration: BoxDecoration(
                                    color: ColorConstant.black900))
                          ])),
                  Expanded(child: SingleChildScrollView(child: Container(
                      width: size.width,
                      decoration: AppDecoration.fillWhiteA700,
                      child: Column(mainAxisAlignment: MainAxisAlignment.start,
                          children: [GestureDetector(onTap: () {
                            onTapSplashscreen();
                          }, child: Container(width: size.width,
                              decoration: AppDecoration.fillWhiteA700,
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
                                                style: AppStyle
                                                    .txtRobotoRegular20
                                                    .copyWith(
                                                    height: getVerticalSize(
                                                        1.00))))),
                                    Container(height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: getMargin(top: 5),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapOnboardingSix();
                          }, child: Container(width: size.width,
                              decoration: AppDecoration.fillWhiteA700,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("msg_onboarding_six".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtRobotoRegular20
                                                    .copyWith(
                                                    height: getVerticalSize(
                                                        1.00))))),
                                    Container(height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: getMargin(top: 5),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapLogin();
                          }, child: Container(width: size.width,
                              decoration: AppDecoration.fillWhiteA700,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_login".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtRobotoRegular20
                                                    .copyWith(
                                                    height: getVerticalSize(
                                                        1.00))))),
                                    Container(height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: getMargin(top: 5),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapOTP();
                          }, child: Container(width: size.width,
                              decoration: AppDecoration.fillWhiteA700,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_otp".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtRobotoRegular20
                                                    .copyWith(
                                                    height: getVerticalSize(
                                                        1.00))))),
                                    Container(height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: getMargin(top: 5),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapRegistername();
                          }, child: Container(width: size.width,
                              decoration: AppDecoration.fillWhiteA700,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_register_name".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtRobotoRegular20
                                                    .copyWith(
                                                    height: getVerticalSize(
                                                        1.00))))),
                                    Container(height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: getMargin(top: 5),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapRegistergender();
                          }, child: Container(width: size.width,
                              decoration: AppDecoration.fillWhiteA700,
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
                                                "msg_register_gender".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtRobotoRegular20
                                                    .copyWith(
                                                    height: getVerticalSize(
                                                        1.00))))),
                                    Container(height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: getMargin(top: 5),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapRegisterdateofbirth();
                          }, child: Container(width: size.width,
                              decoration: AppDecoration.fillWhiteA700,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("msg_register_date".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtRobotoRegular20
                                                    .copyWith(
                                                    height: getVerticalSize(
                                                        1.00))))),
                                    Container(height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: getMargin(top: 5),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapRegisterwhereyouborn();
                          }, child: Container(width: size.width,
                              decoration: AppDecoration.fillWhiteA700,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("msg_register_where".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtRobotoRegular20
                                                    .copyWith(
                                                    height: getVerticalSize(
                                                        1.00))))),
                                    Container(height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: getMargin(top: 5),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapRegisterhopetoachieve();
                          }, child: Container(width: size.width,
                              decoration: AppDecoration.fillWhiteA700,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("msg_register_hope".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtRobotoRegular20
                                                    .copyWith(
                                                    height: getVerticalSize(
                                                        1.00))))),
                                    Container(height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: getMargin(top: 5),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapRegisterinvestingexperience();
                          }, child: Container(width: size.width,
                              decoration: AppDecoration.fillWhiteA700,
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
                                                "msg_register_investing".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtRobotoRegular20
                                                    .copyWith(
                                                    height: getVerticalSize(
                                                        1.00))))),
                                    Container(height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: getMargin(top: 5),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapRegisterjob();
                          }, child: Container(width: size.width,
                              decoration: AppDecoration.fillWhiteA700,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_register_job".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtRobotoRegular20
                                                    .copyWith(
                                                    height: getVerticalSize(
                                                        1.00))))),
                                    Container(height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: getMargin(top: 5),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapRegistercompanyname();
                          }, child: Container(width: size.width,
                              decoration: AppDecoration.fillWhiteA700,
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
                                                "msg_register_company".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtRobotoRegular20
                                                    .copyWith(
                                                    height: getVerticalSize(
                                                        1.00))))),
                                    Container(height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: getMargin(top: 5),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapRegisterjobrole();
                          }, child: Container(width: size.width,
                              decoration: AppDecoration.fillWhiteA700,
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
                                                "msg_register_job_role".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtRobotoRegular20
                                                    .copyWith(
                                                    height: getVerticalSize(
                                                        1.00))))),
                                    Container(height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: getMargin(top: 5),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapRegistersavings();
                          }, child: Container(width: size.width,
                              decoration: AppDecoration.fillWhiteA700,
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
                                                "msg_register_savings".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtRobotoRegular20
                                                    .copyWith(
                                                    height: getVerticalSize(
                                                        1.00))))),
                                    Container(height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: getMargin(top: 5),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapRegisteruploadortakeIDcard();
                          }, child: Container(width: size.width,
                              decoration: AppDecoration.fillWhiteA700,
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
                                                "msg_register_upload".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtRobotoRegular20
                                                    .copyWith(
                                                    height: getVerticalSize(
                                                        1.00))))),
                                    Container(height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: getMargin(top: 5),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapRegisterphotoIDcard();
                          }, child: Container(width: size.width,
                              decoration: AppDecoration.fillWhiteA700,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("msg_register_photo".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtRobotoRegular20
                                                    .copyWith(
                                                    height: getVerticalSize(
                                                        1.00))))),
                                    Container(height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: getMargin(top: 5),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapRegisterphotoIDcardsaved();
                          }, child: Container(width: size.width,
                              decoration: AppDecoration.fillWhiteA700,
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
                                                "msg_register_photo2".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtRobotoRegular20
                                                    .copyWith(
                                                    height: getVerticalSize(
                                                        1.00))))),
                                    Container(height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: getMargin(top: 5),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapRegisteraddress();
                          }, child: Container(width: size.width,
                              decoration: AppDecoration.fillWhiteA700,
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
                                                "msg_register_address".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtRobotoRegular20
                                                    .copyWith(
                                                    height: getVerticalSize(
                                                        1.00))))),
                                    Container(height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: getMargin(top: 5),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapRegisterselfiewIDcardOne();
                          }, child: Container(width: size.width,
                              decoration: AppDecoration.fillWhiteA700,
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
                                                "msg_register_selfie".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtRobotoRegular20
                                                    .copyWith(
                                                    height: getVerticalSize(
                                                        1.00))))),
                                    Container(height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: getMargin(top: 5),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapRegisterselfiewIDcard();
                          }, child: Container(width: size.width,
                              decoration: AppDecoration.fillWhiteA700,
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
                                                "msg_register_selfie2".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtRobotoRegular20
                                                    .copyWith(
                                                    height: getVerticalSize(
                                                        1.00))))),
                                    Container(height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: getMargin(top: 5),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapRegisterselfiewIDcardsaved();
                          }, child: Container(width: size.width,
                              decoration: AppDecoration.fillWhiteA700,
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
                                                "msg_register_selfie3".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtRobotoRegular20
                                                    .copyWith(
                                                    height: getVerticalSize(
                                                        1.00))))),
                                    Container(height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: getMargin(top: 5),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapRegistertermagreement();
                          }, child: Container(width: size.width,
                              decoration: AppDecoration.fillWhiteA700,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("msg_register_term".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtRobotoRegular20
                                                    .copyWith(
                                                    height: getVerticalSize(
                                                        1.00))))),
                                    Container(height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: getMargin(top: 5),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapRegistersetPIN();
                          }, child: Container(width: size.width,
                              decoration: AppDecoration.fillWhiteA700,
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
                                                "msg_register_set_pin".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtRobotoRegular20
                                                    .copyWith(
                                                    height: getVerticalSize(
                                                        1.00))))),
                                    Container(height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: getMargin(top: 5),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapRegistersuccess();
                          }, child: Container(width: size.width,
                              decoration: AppDecoration.fillWhiteA700,
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
                                                "msg_register_success".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtRobotoRegular20
                                                    .copyWith(
                                                    height: getVerticalSize(
                                                        1.00))))),
                                    Container(height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: getMargin(top: 5),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapHomepage();
                          }, child: Container(width: size.width,
                              decoration: AppDecoration.fillWhiteA700,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_homepage".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtRobotoRegular20
                                                    .copyWith(
                                                    height: getVerticalSize(
                                                        1.00))))),
                                    Container(height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: getMargin(top: 5),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapHomepageVTwo();
                          }, child: Container(width: size.width,
                              decoration: AppDecoration.fillWhiteA700,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_homepage_vtwo".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtRobotoRegular20
                                                    .copyWith(
                                                    height: getVerticalSize(
                                                        1.00))))),
                                    Container(height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: getMargin(top: 5),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapHomepageVThreeContainer();
                          }, child: Container(width: size.width,
                              decoration: AppDecoration.fillWhiteA700,
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
                                                "msg_homepage_vthree".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtRobotoRegular20
                                                    .copyWith(
                                                    height: getVerticalSize(
                                                        1.00))))),
                                    Container(height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: getMargin(top: 5),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapDepositselectpayment();
                          }, child: Container(width: size.width,
                              decoration: AppDecoration.fillWhiteA700,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("msg_deposit_select".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtRobotoRegular20
                                                    .copyWith(
                                                    height: getVerticalSize(
                                                        1.00))))),
                                    Container(height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: getMargin(top: 5),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapDepositdepositamount();
                          }, child: Container(width: size.width,
                              decoration: AppDecoration.fillWhiteA700,
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
                                                "msg_deposit_deposit".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtRobotoRegular20
                                                    .copyWith(
                                                    height: getVerticalSize(
                                                        1.00))))),
                                    Container(height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: getMargin(top: 5),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapDepositwaitingfund();
                          }, child: Container(width: size.width,
                              decoration: AppDecoration.fillWhiteA700,
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
                                                "msg_deposit_waiting".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtRobotoRegular20
                                                    .copyWith(
                                                    height: getVerticalSize(
                                                        1.00))))),
                                    Container(height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: getMargin(top: 5),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapWithdrawselectaccount();
                          }, child: Container(width: size.width,
                              decoration: AppDecoration.fillWhiteA700,
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
                                                "msg_withdraw_select".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtRobotoRegular20
                                                    .copyWith(
                                                    height: getVerticalSize(
                                                        1.00))))),
                                    Container(height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: getMargin(top: 5),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapWithdrawaddbankaccount();
                          }, child: Container(width: size.width,
                              decoration: AppDecoration.fillWhiteA700,
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
                                                "msg_withdraw_add_bank".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtRobotoRegular20
                                                    .copyWith(
                                                    height: getVerticalSize(
                                                        1.00))))),
                                    Container(height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: getMargin(top: 5),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapWithdrawbankaccountinfo();
                          }, child: Container(width: size.width,
                              decoration: AppDecoration.fillWhiteA700,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("msg_withdraw_bank".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtRobotoRegular20
                                                    .copyWith(
                                                    height: getVerticalSize(
                                                        1.00))))),
                                    Container(height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: getMargin(top: 5),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapWithdrawconfirmbankaccountOne();
                          }, child: Container(width: size.width,
                              decoration: AppDecoration.fillWhiteA700,
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
                                                "msg_withdraw_confirm".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtRobotoRegular20
                                                    .copyWith(
                                                    height: getVerticalSize(
                                                        1.00))))),
                                    Container(height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: getMargin(top: 5),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapWithdrawconfirmbankaccount();
                          }, child: Container(width: size.width,
                              decoration: AppDecoration.fillWhiteA700,
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
                                                "msg_withdraw_confirm2".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtRobotoRegular20
                                                    .copyWith(
                                                    height: getVerticalSize(
                                                        1.00))))),
                                    Container(height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: getMargin(top: 5),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapWithdrawwithdrawamount();
                          }, child: Container(width: size.width,
                              decoration: AppDecoration.fillWhiteA700,
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
                                                "msg_withdraw_withdraw".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtRobotoRegular20
                                                    .copyWith(
                                                    height: getVerticalSize(
                                                        1.00))))),
                                    Container(height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: getMargin(top: 5),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapWithdrawsummary();
                          }, child: Container(width: size.width,
                              decoration: AppDecoration.fillWhiteA700,
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
                                                "msg_withdraw_summary".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtRobotoRegular20
                                                    .copyWith(
                                                    height: getVerticalSize(
                                                        1.00))))),
                                    Container(height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: getMargin(top: 5),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapWithdrawsuccess();
                          }, child: Container(width: size.width,
                              decoration: AppDecoration.fillWhiteA700,
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
                                                "msg_withdraw_success".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtRobotoRegular20
                                                    .copyWith(
                                                    height: getVerticalSize(
                                                        1.00))))),
                                    Container(height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: getMargin(top: 5),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapNotification();
                          }, child: Container(width: size.width,
                              decoration: AppDecoration.fillWhiteA700,
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
                                                style: AppStyle
                                                    .txtRobotoRegular20
                                                    .copyWith(
                                                    height: getVerticalSize(
                                                        1.00))))),
                                    Container(height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: getMargin(top: 5),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapSbuxstock();
                          }, child: Container(width: size.width,
                              decoration: AppDecoration.fillWhiteA700,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_sbux_stock".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtRobotoRegular20
                                                    .copyWith(
                                                    height: getVerticalSize(
                                                        1.00))))),
                                    Container(height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: getMargin(top: 5),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapSbuxstockshare();
                          }, child: Container(width: size.width,
                              decoration: AppDecoration.fillWhiteA700,
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
                                                "msg_sbux_stock_share".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtRobotoRegular20
                                                    .copyWith(
                                                    height: getVerticalSize(
                                                        1.00))))),
                                    Container(height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: getMargin(top: 5),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapSPOTMarketstats();
                          }, child: Container(width: size.width,
                              decoration: AppDecoration.fillWhiteA700,
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
                                                "msg_spot_market_stats2".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtRobotoRegular20
                                                    .copyWith(
                                                    height: getVerticalSize(
                                                        1.00))))),
                                    Container(height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: getMargin(top: 5),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapBuy();
                          }, child: Container(width: size.width,
                              decoration: AppDecoration.fillWhiteA700,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_buy2".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtRobotoRegular20
                                                    .copyWith(
                                                    height: getVerticalSize(
                                                        1.00))))),
                                    Container(height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: getMargin(top: 5),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapBuystockoption();
                          }, child: Container(width: size.width,
                              decoration: AppDecoration.fillWhiteA700,
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
                                                "msg_buy_stock_option".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtRobotoRegular20
                                                    .copyWith(
                                                    height: getVerticalSize(
                                                        1.00))))),
                                    Container(height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: getMargin(top: 5),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapSummaryOne();
                          }, child: Container(width: size.width,
                              decoration: AppDecoration.fillWhiteA700,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_summary_one".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtRobotoRegular20
                                                    .copyWith(
                                                    height: getVerticalSize(
                                                        1.00))))),
                                    Container(height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: getMargin(top: 5),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapSuccessOne();
                          }, child: Container(width: size.width,
                              decoration: AppDecoration.fillWhiteA700,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_success_one".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtRobotoRegular20
                                                    .copyWith(
                                                    height: getVerticalSize(
                                                        1.00))))),
                                    Container(height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: getMargin(top: 5),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapSell();
                          }, child: Container(width: size.width,
                              decoration: AppDecoration.fillWhiteA700,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_sell".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtRobotoRegular20
                                                    .copyWith(
                                                    height: getVerticalSize(
                                                        1.00))))),
                                    Container(height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: getMargin(top: 5),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapSummary();
                          }, child: Container(width: size.width,
                              decoration: AppDecoration.fillWhiteA700,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_summary".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtRobotoRegular20
                                                    .copyWith(
                                                    height: getVerticalSize(
                                                        1.00))))),
                                    Container(height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: getMargin(top: 5),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapSuccess();
                          }, child: Container(width: size.width,
                              decoration: AppDecoration.fillWhiteA700,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_success".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtRobotoRegular20
                                                    .copyWith(
                                                    height: getVerticalSize(
                                                        1.00))))),
                                    Container(height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: getMargin(top: 5),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapExchange();
                          }, child: Container(width: size.width,
                              decoration: AppDecoration.fillWhiteA700,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_exchange".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtRobotoRegular20
                                                    .copyWith(
                                                    height: getVerticalSize(
                                                        1.00))))),
                                    Container(height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: getMargin(top: 5),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapSummaryTwo();
                          }, child: Container(width: size.width,
                              decoration: AppDecoration.fillWhiteA700,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_summary_two".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtRobotoRegular20
                                                    .copyWith(
                                                    height: getVerticalSize(
                                                        1.00))))),
                                    Container(height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: getMargin(top: 5),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapSuccessTwo();
                          }, child: Container(width: size.width,
                              decoration: AppDecoration.fillWhiteA700,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_success_two".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtRobotoRegular20
                                                    .copyWith(
                                                    height: getVerticalSize(
                                                        1.00))))),
                                    Container(height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: getMargin(top: 5),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapLogout();
                          }, child: Container(width: size.width,
                              decoration: AppDecoration.fillWhiteA700,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_logout".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtRobotoRegular20
                                                    .copyWith(
                                                    height: getVerticalSize(
                                                        1.00))))),
                                    Container(height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: getMargin(top: 5),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray400))
                                  ])))
                          ]))))
                ]))));
  }

  onTapSplashscreen() {
    Get.toNamed(AppRoutes.splashScreen);
  }

  onTapOnboardingSix() {
    Get.toNamed(AppRoutes.onboardingSixScreen);
  }

  onTapLogin() {
    Get.toNamed(AppRoutes.loginScreen);
  }

  onTapOTP() {
    Get.toNamed(AppRoutes.otpScreen);
  }

  onTapRegistername() {
    Get.toNamed(AppRoutes.registerNameScreen);
  }

  onTapRegistergender() {
    Get.toNamed(AppRoutes.registerGenderScreen);
  }

  onTapRegisterdateofbirth() {
    Get.toNamed(AppRoutes.registerDateOfBirthScreen);
  }

  onTapRegisterwhereyouborn() {
    Get.toNamed(AppRoutes.registerWhereYouBornScreen);
  }

  onTapRegisterhopetoachieve() {
    Get.toNamed(AppRoutes.registerHopeToAchieveScreen);
  }

  onTapRegisterinvestingexperience() {
    Get.toNamed(AppRoutes.registerInvestingExperienceScreen);
  }

  onTapRegisterjob() {
    Get.toNamed(AppRoutes.registerJobScreen);
  }

  onTapRegistercompanyname() {
    Get.toNamed(AppRoutes.registerCompanyNameScreen);
  }

  onTapRegisterjobrole() {
    Get.toNamed(AppRoutes.registerJobRoleScreen);
  }

  onTapRegistersavings() {
    Get.toNamed(AppRoutes.registerSavingsScreen);
  }

  onTapRegisteruploadortakeIDcard() {
    Get.toNamed(AppRoutes.registerUploadOrTakeIdCardScreen);
  }

  onTapRegisterphotoIDcard() {
    Get.toNamed(AppRoutes.registerPhotoIdCardScreen);
  }

  onTapRegisterphotoIDcardsaved() {
    Get.toNamed(AppRoutes.registerPhotoIdCardSavedScreen);
  }

  onTapRegisteraddress() {
    Get.toNamed(AppRoutes.registerAddressScreen);
  }

  onTapRegisterselfiewIDcardOne() {
    Get.toNamed(AppRoutes.registerSelfieWIdCardOneScreen);
  }

  onTapRegisterselfiewIDcard() {
    Get.toNamed(AppRoutes.registerSelfieWIdCardScreen);
  }

  onTapRegisterselfiewIDcardsaved() {
    Get.toNamed(AppRoutes.registerSelfieWIdCardSavedScreen);
  }

  onTapRegistertermagreement() {
    Get.toNamed(AppRoutes.registerTermAgreementScreen);
  }

  onTapRegistersetPIN() {
    Get.toNamed(AppRoutes.registerSetPinScreen);
  }

  onTapRegistersuccess() {
    Get.bottomSheet(
      RegisterSuccessBottomsheet(Get.put(RegisterSuccessController(),),),
      isScrollControlled: true,);
  }

  onTapHomepage() {
    Get.toNamed(AppRoutes.homepageScreen);
  }

  onTapHomepageVTwo() {
    Get.toNamed(AppRoutes.homepageVtwoScreen);
  }

  onTapHomepageVThreeContainer() {
    Get.toNamed(AppRoutes.homepageVthreeContainerScreen);
  }

  onTapDepositselectpayment() {
    Get.toNamed(AppRoutes.depositSelectPaymentScreen);
  }

  onTapDepositdepositamount() {
    Get.toNamed(AppRoutes.depositDepositAmountScreen);
  }

  onTapDepositwaitingfund() {
    Get.toNamed(AppRoutes.depositWaitingFundScreen);
  }

  onTapWithdrawselectaccount() {
    Get.toNamed(AppRoutes.withdrawSelectAccountScreen);
  }

  onTapWithdrawaddbankaccount() {
    Get.toNamed(AppRoutes.withdrawAddBankAccountScreen);
  }

  onTapWithdrawbankaccountinfo() {
    Get.toNamed(AppRoutes.withdrawBankAccountInfoScreen);
  }

  onTapWithdrawconfirmbankaccountOne() {
    Get.toNamed(AppRoutes.withdrawConfirmBankAccountOneScreen);
  }

  onTapWithdrawconfirmbankaccount() {
    Get.toNamed(AppRoutes.withdrawConfirmBankAccountScreen);
  }

  onTapWithdrawwithdrawamount() {
    Get.toNamed(AppRoutes.withdrawWithdrawAmountScreen);
  }

  onTapWithdrawsummary() {
    Get.toNamed(AppRoutes.withdrawSummaryScreen);
  }

  onTapWithdrawsuccess() {
    Get.bottomSheet(
      WithdrawSuccessBottomsheet(Get.put(WithdrawSuccessController(),),),
      isScrollControlled: true,);
  }

  onTapNotification() {
    Get.toNamed(AppRoutes.notificationScreen);
  }

  onTapSbuxstock() {
    Get.toNamed(AppRoutes.sbuxStockScreen);
  }

  onTapSbuxstockshare() {
    Get.bottomSheet(
      SbuxStockShareBottomsheet(Get.put(SbuxStockShareController(),),),
      isScrollControlled: true,);
  }

  onTapSPOTMarketstats() {
    Get.toNamed(AppRoutes.spotMarketStatsScreen);
  }

  onTapBuy() {
    Get.toNamed(AppRoutes.buyScreen);
  }

  onTapBuystockoption() {
    Get.toNamed(AppRoutes.buyStockOptionScreen);
  }

  onTapSummaryOne() {
    Get.toNamed(AppRoutes.summaryOneScreen);
  }

  onTapSuccessOne() {
    Get.bottomSheet(SuccessOneBottomsheet(Get.put(SuccessOneController(),),),
      isScrollControlled: true,);
  }

  onTapSell() {
    Get.toNamed(AppRoutes.sellScreen);
  }

  onTapSummary() {
    Get.toNamed(AppRoutes.summaryScreen);
  }

  onTapSuccess() {
    Get.bottomSheet(SuccessBottomsheet(Get.put(SuccessController(),),),
      isScrollControlled: true,);
  }

  onTapExchange() {
    Get.toNamed(AppRoutes.exchangeScreen);
  }

  onTapSummaryTwo() {
    Get.toNamed(AppRoutes.summaryTwoScreen);
  }

  onTapSuccessTwo() {
    Get.bottomSheet(SuccessTwoBottomsheet(Get.put(SuccessTwoController(),),),
      isScrollControlled: true,);
  }

  onTapLogout() {
    Get.dialog(AlertDialog(backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      insetPadding: EdgeInsets.only(left: 0),
      content: LogoutDialog(Get.put(LogoutController(),),),));
  }
}
