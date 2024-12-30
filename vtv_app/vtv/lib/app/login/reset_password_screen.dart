// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vtv/util/get/route_key.dart';

import '../../util/color_data.dart';
import '../../util/constant.dart';
import '../../util/fetch_pixels.dart';
import '../../util/widget_utils.dart';

class ResetPasswordScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ResetPasswordScreen();
  }
}

class _ResetPasswordScreen extends State<ResetPasswordScreen> {
  backClick(BuildContext context) {
    Constant.backToFinish(context);
  }

  RxBool showPass = false.obs;
  RxBool showPass1 = false.obs;
  RxBool showPass2 = false.obs;

  TextEditingController passController = TextEditingController();
  TextEditingController newPassController = TextEditingController();
  TextEditingController pass2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Constant.setupSize(context);

    double horSpace = FetchPixels.getDefaultHorSpaceFigma(context);

    return WillPopScope(
      onWillPop: () async {
        backClick(context);
        return false;
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: getCurrentTheme(context).scaffoldBackgroundColor,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              20.h.verticalSpace,
              GestureDetector(
                  onTap: () {
                    backClick(context);
                  },
                  child: getSvgImage(context, "arrow_back.svg", 24)
                      .paddingOnly(left: 20.h)),
              Expanded(
                child: Column(
                  children: [
                    16.h.verticalSpace,
                    buildReserHeader(context),
                    50.h.verticalSpace,
                    buildTextFieldWidget(context),
                    50.h.verticalSpace,
                    buildSubmitButton(context, horSpace),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSubmitButton(BuildContext context, double horSpace) {
    return getButtonFigma(
        context, getAccentColor(context), true, "Submit", getFontColor(context),
        () {
      showGetDialog(context, "pass_change_img.png", "Password Changed",
          "Your account has been successfully \nchanged!", "Ok", () {
        // backClick(context);
        Constant.sendToNext(context, loginRoute);
      });
    }, EdgeInsets.symmetric(horizontal: horSpace));
  }

  Column buildTextFieldWidget(BuildContext context) {
    return Column(
      children: [
        ObxValue((p0) {
          return getPassTextFiled(context, "Password", passController,
              getFontColor(context), showPass.value, () {
            showPass.value = !showPass.value;
          });
        }, showPass),
        30.h.verticalSpace,
        ObxValue((p0) {
          return getPassTextFiled(context, "New Password", newPassController,
              getFontColor(context), showPass1.value, () {
            showPass1.value = !showPass1.value;
          });
        }, showPass1),
        30.h.verticalSpace,
        ObxValue((p0) {
          return getPassTextFiled(context, "Confirm Password", pass2Controller,
              getFontColor(context), showPass2.value, () {
            showPass2.value = !showPass2.value;
          });
        }, showPass2)
      ],
    );
  }

  Column buildReserHeader(BuildContext context) {
    return Column(
      children: [
        getSvgImageWithSize(context, 'splash_logo.svg', 60.w, 60.h,
            fit: BoxFit.scaleDown),
        20.h.verticalSpace,
        getMultilineCustomFont("Reset  Password", 22, getFontColor(context),
            fontWeight: FontWeight.w700, textAlign: TextAlign.center)
      ],
    );
  }
}
