// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../util/color_data.dart';
import '../../util/constant.dart';
import '../../util/fetch_pixels.dart';
import '../../util/get/route_key.dart';
import '../../util/widget_utils.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ForgotPasswordScreen();
  }
}

class _ForgotPasswordScreen extends State<ForgotPasswordScreen> {
  backClick(BuildContext context) {
    Constant.backToFinish(context);
  }

  TextEditingController emailController = TextEditingController();

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
                    buildForgotHeader(context),
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
      context,
      getAccentColor(context),
      true,
      "Submit",
      getFontColor(context),
      () {
        Constant.sendToNext(context, resetPassRoute);
      },
      EdgeInsets.symmetric(horizontal: horSpace),
    );
  }

  Widget buildTextFieldWidget(BuildContext context) {
    return getDefaultUnderlineTextFiled(
        context, 'Email', emailController, getFontColor(context), (value) {},
        imgName: 'email.svg');
  }

  Column buildForgotHeader(BuildContext context) {
    return Column(
      children: [
        getSvgImageWithSize(context, 'splash_logo.svg', 60.w, 60.h,
            fit: BoxFit.scaleDown),
        20.h.verticalSpace,
        getMultilineCustomFont("Forgot Password", 22, getFontColor(context),
            fontWeight: FontWeight.w700, textAlign: TextAlign.center)
      ],
    );
  }
}
