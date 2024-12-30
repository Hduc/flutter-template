// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../util/color_data.dart';
import '../../util/constant.dart';
import '../../util/fetch_pixels.dart';
import '../../util/get/route_key.dart';
import '../../util/widget_utils.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  backClick(BuildContext context) {
    Constant.backToPrev(context);
  }

  @override
  Widget build(BuildContext context) {
    RxBool showPass = false.obs;
    RxBool agreeTerm = false.obs;

    TextEditingController emailController = TextEditingController();
    TextEditingController nameController = TextEditingController();
    TextEditingController passController = TextEditingController();
    TextEditingController numberController = TextEditingController();

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
                    buildSignUpHeader(context),
                    50.h.verticalSpace,
                    buildTextFieldWidget(
                        context,
                        nameController,
                        emailController,
                        numberController,
                        passController,
                        showPass,
                        agreeTerm,
                        horSpace),
                  ],
                ),
              ),
              buildSignUpButton(context, horSpace),
              30.h.verticalSpace,
              buildLoginButton(context),
              40.h.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }

  Row buildLoginButton(BuildContext context) {
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
        InkWell(
          onTap: () {
            Constant.sendToNext(context, loginRoute);
          },
          child: getCustomFont(
            " Login",
            18,
            getFontColor(context),
            1,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }

  Widget buildSignUpButton(BuildContext context, double horSpace) {
    return getButtonFigma(context, getAccentColor(context), true, "Sign Up",
        getFontColor(context), () {
      Constant.sendToNext(context, verificationScreenRoute);
    }, EdgeInsets.symmetric(horizontal: horSpace));
  }

  Column buildTextFieldWidget(
      BuildContext context,
      TextEditingController nameController,
      TextEditingController emailController,
      TextEditingController numberController,
      TextEditingController passController,
      RxBool showPass,
      RxBool agreeTerm,
      double horSpace) {
    return Column(
      children: [
        getDefaultUnderlineTextFiled(context, 'Full Name', nameController,
            getFontColor(context), (value) {},
            imgName: 'name.svg'),
        30.h.verticalSpace,
        getDefaultUnderlineTextFiled(context, 'Email Address', emailController,
            getFontColor(context), (value) {},
            imgName: 'email.svg'),
        30.h.verticalSpace,
        getDefaultUnderlineTextFiled(context, 'Phone Number', numberController,
            getFontColor(context), (value) {},
            imgName: 'phone.svg', country: true),
        30.h.verticalSpace,
        ObxValue((p0) {
          return getPassTextFiled(context, "Password", passController,
              getFontColor(context), showPass.value, () {
            showPass.value = !showPass.value;
          });
        }, showPass),
        12.h.verticalSpace,
        Row(
          children: [
            ObxValue((p0) {
              return Checkbox(
                visualDensity: VisualDensity.compact,
                side: BorderSide(color: getFontHint(context), width: 1.h),
                activeColor: getAccentColor(context),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(6.5))),
                onChanged: (value) {
                  agreeTerm.value = value!;
                },
                value: agreeTerm.value,
              );
            }, agreeTerm),
            getCustomFont(
                "I Agree with Terms & Privacy", 12, getFontHint(context), 1,
                fontWeight: FontWeight.w400, textAlign: TextAlign.start),
          ],
        ).paddingSymmetric(horizontal: horSpace)
      ],
    );
  }

  Column buildSignUpHeader(BuildContext context) {
    return Column(
      children: [
        getSvgImageWithSize(context, 'splash_logo.svg', 60.h, 60.h,
            fit: BoxFit.scaleDown),
        20.h.verticalSpace,
        getMultilineCustomFont("Sign Up", 22, getFontColor(context),
            fontWeight: FontWeight.w700, textAlign: TextAlign.center)
      ],
    );
  }
}
