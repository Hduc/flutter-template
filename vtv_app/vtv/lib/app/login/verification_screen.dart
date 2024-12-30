// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../util/color_data.dart';
import '../../util/constant.dart';
import '../../util/fetch_pixels.dart';
import '../../util/flutter_pin_code_fields.dart';
import '../../util/get/route_key.dart';
import '../../util/get/storage.dart';
import '../../util/widget_utils.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _VerificationScreen();
  }
}

class _VerificationScreen extends State<VerificationScreen> {
  backClick(BuildContext context) {
    Constant.backToFinish(context);
  }

  TextEditingController otpController = TextEditingController();

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
                child: ListView(
                  children: [
                    16.h.verticalSpace,
                    buildVerifyHeader(context),
                    50.h.verticalSpace,
                    buildPinTextFiled(context),

                    30.h.verticalSpace,
                    buildResendButton(context),
                    50.h.verticalSpace,
                    buildVerifyButton(context, horSpace),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildVerifyButton(BuildContext context, double horSpace) {
    return getButtonFigma(context, getAccentColor(context), true,
        "Verify & Proceed ", Colors.white, () {
      showGetDialog(
        context,
        "account_create_img.png",
        "Account Created",
        "Your account has been successfully \ncreated!",
        "Ok",
        () {
          Get.back();
          setLoggedIn(true);
          Constant.sendToNext(context, personalizationScreenRoute);
        },
      );
    }, EdgeInsets.symmetric(horizontal: horSpace));
  }

  Row buildResendButton(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        getCustomFont(
          "Don’t receive code?",
          16,
          getFontHint(context),
          1,
          fontWeight: FontWeight.w400,
        ),
        getCustomFont(
          " Resend",
          18,
          getFontColor(context),
          1,
          fontWeight: FontWeight.w700,
        )
      ],
    );
  }

  Row buildPinTextFiled(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: PinCodeFields(
            enabled: true,
            length: 6,
            controller: otpController,
            autofocus: true,
            onComplete: (value) {},
            textStyle: buildTextStyle(
                context, getFontColor(context), FontWeight.w700, 17.sp),
            fieldHeight: 50.h,
            fieldWidth: 50.h,

            responsive: true,
            margin: EdgeInsets.symmetric(horizontal: 9.h),
            activeBorderColor: getAccentColor(context),
            fieldBorderStyle: FieldBorderStyle.square,
            borderWidth: 1.h,
            borderRadius: BorderRadius.all(Radius.circular(16.h)),
            borderColor: getCardColor(context),
          ),
        ),
      ],
    );
  }

  Column buildVerifyHeader(BuildContext context) {
    return Column(
      children: [
        getSvgImageWithSize(context, 'splash_logo.svg', 60.h, 60.h,
            fit: BoxFit.scaleDown),
        20.h.verticalSpace,
        getMultilineCustomFont("Verify", 22, getFontColor(context),
            fontWeight: FontWeight.w700, textAlign: TextAlign.center)
      ],
    );
  }
}
