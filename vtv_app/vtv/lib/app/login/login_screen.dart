// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../util/color_data.dart';
import '../../util/constant.dart';
import '../../util/fetch_pixels.dart';
import '../../util/get/route_key.dart';
import '../../util/get/storage.dart';
import '../../util/widget_utils.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  backClick(BuildContext context) {
    Constant.closeApp();
  }

  final List<String> icon = ['google.svg', 'facebook.svg', 'apple.svg'];

  @override
  Widget build(BuildContext context) {
    RxBool showPass = false.obs;

    TextEditingController emailController = TextEditingController();
    TextEditingController passController = TextEditingController();
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
                    buildLoginHeader(context),
                    50.h.verticalSpace,
                    buildTextFieldWidget(context, emailController,
                        passController, showPass, horSpace),
                    50.h.verticalSpace,
                    buildLoginButton(context, horSpace),
                    30.h.verticalSpace,
                    buildGoogleSignup(context),
                  ],
                ),
              ),
              buildSignupWidget(context),
              40.h.verticalSpace
            ],
          ),
        ),
      ),
    );
  }

  Row buildSignupWidget(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        getCustomFont(
          "Already have an account?",
          16,
          getFontHint(context),
          1,
          fontWeight: FontWeight.w400,
        ),
        GestureDetector(
          onTap: () {
            Constant.sendToNext(context, registrationRoute);
          },
          child: getCustomFont(
            " Sign up",
            18,
            getFontColor(context),
            1,
            fontWeight: FontWeight.w700,
          ),
        )
      ],
    );
  }

  Column buildGoogleSignup(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: getDivider(setColor: getDividerColor(context)),
            ),
            getCustomFont("Or Continue With", 12.sp, getFontColor(context), 1,
                fontWeight: FontWeight.w400, textAlign: TextAlign.center),
            Expanded(
              flex: 1,
              child: getDivider(setColor: getDividerColor(context)),
            )
          ],
        ),
        30.h.verticalSpace,
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
              icon.length,
              (index) => Container(
                    height: 60.h,
                    width: 60.h,
                    padding: EdgeInsets.all(18.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color(0xff2b2833),
                    ),
                    child: getSvgImage(context, icon[index], 24),
                  ).marginOnly(
                    left: (index == 0) ? 0 : 30.h,
                  )),
        )
      ],
    );
  }

  InkWell buildLoginButton(BuildContext context, double horSpace) {
    return InkWell(
      onTap: () {
        Constant.sendToNext(context, homeScreenRoute);
      },
      child: getButtonFigma(
        context,
        getAccentColor(context),
        true,
        "Log In",
        getFontColor(context),
        () {
          setLoggedIn(true);
          Constant.sendToNext(context, homeScreenRoute);
        },
        EdgeInsets.symmetric(horizontal: horSpace),
      ),
    );
  }

  Column buildTextFieldWidget(
      BuildContext context,
      TextEditingController emailController,
      TextEditingController passController,
      RxBool showPass,
      double horSpace) {
    return Column(
      children: [
        getDefaultUnderlineTextFiled(context, 'Email', emailController,
            getFontColor(context), (value) {},
            imgName: 'email.svg'),
        30.h.verticalSpace,
        ObxValue((p0) {
          return getPassTextFiled(context, "Password", passController,
              getFontColor(context), showPass.value, () {
            showPass.value = !showPass.value;
          });
        }, showPass),
        10.h.verticalSpace,
        Align(
          alignment: Alignment.bottomRight,
          child: GestureDetector(
            onTap: () {
              Constant.sendToNext(context, forgotPassRoute);
            },
            child: getCustomFont(
                "Forgot password ?", 14, getFontColor(context), 1,
                fontWeight: FontWeight.w400, textAlign: TextAlign.end),
          ),
        ).paddingOnly(right: horSpace)
      ],
    );
  }

  Column buildLoginHeader(BuildContext context) {
    return Column(
      children: [
        getSvgImageWithSize(context, 'splash_logo.svg', 60.h, 60.h,
            fit: BoxFit.fill),
        20.h.verticalSpace,
        getMultilineCustomFont(
            "Login to Your Account", 22, getFontColor(context),
            fontWeight: FontWeight.w700, textAlign: TextAlign.center),
      ],
    );
  }
}
