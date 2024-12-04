import 'package:flutter/material.dart';
import 'package:grocery/base/color_data.dart';
import 'package:grocery/base/constant.dart';
import 'package:grocery/base/resizer/fetch_pixels.dart';
import 'package:grocery/base/widget_utils.dart';

import '../../../base/pref_data.dart';
import '../../routes/app_routes.dart';

class ScreenLogin extends StatefulWidget {
  const ScreenLogin({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ScreenLogin();
  }
}

class _ScreenLogin extends State<ScreenLogin> {
  finish() {
    Constant.closeApp();

  }

  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController passController = TextEditingController();
  ValueNotifier<bool> isShowPass = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    FetchPixels(context);
    return getDetailWidget(context, () {
      finish();
    }, buildList(context));
  }

  ListView buildList(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(
          horizontal: FetchPixels.getDefaultHorSpace(context)),
      shrinkWrap: true,
      primary: true,
      children: [
        getTopViewHeader(context, "Login",
            "Lorem ipsum dolor amet, consectetur adipiscing elit, sed do eiusmod."),
        getDefaultTextFiled(
            context, "Email", emailController, getFontColor(context)),
        getVerSpace(FetchPixels.getPixelHeight(60)),
        ValueListenableBuilder(
          builder: (context, value, child) {
            return getPassTextFiled(context, "Password", passController,
                getFontColor(context), isShowPass.value, () {
              isShowPass.value = !isShowPass.value;
            });
          },
          valueListenable: isShowPass,
        ),
        getVerSpace(FetchPixels.getPixelHeight(40)),
        Align(
          alignment: Alignment.topRight,
          child: InkWell(
            onTap: () {
              Constant.sendToNext(context, Routes.forgotPassRoute);
            },
            child: getCustomFont(
                "Forgot Password?", 38, getAccentColor(context), 1,
                fontWeight: FontWeight.w600, textAlign: TextAlign.end),
          ),
        ),
        getVerSpace(FetchPixels.getPixelHeight(70)),
        getButton(context, getAccentColor(context), true, "Login", Colors.white,
            () {
          PrefData.setLogIn(true);
          Constant.sendToNext(context, Routes.homeScreenRoute);
        }, EdgeInsets.zero),
        getVerSpace(FetchPixels.getPixelHeight(55)),
        SizedBox(
          width: double.infinity,
          child: getCustomFont("Or sign in with", 35, getFontSkip(context), 1,
              fontWeight: FontWeight.w400, textAlign: TextAlign.center),
        ),
        getVerSpace(FetchPixels.getPixelHeight(55)),
        SizedBox(
          width: double.infinity,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: getButton(context, Colors.white, true, "Google",
                      getFontColor(context), () {}, EdgeInsets.zero,
                      isIcon: true,
                      icons: "google.svg",
                      withGradient: false,
                      shadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.05),
                            blurRadius: 8,
                            spreadRadius: 2)
                      ]),
                ),
                getHorSpace(FetchPixels.getDefaultHorSpace(context)),
                Expanded(
                  flex: 1,
                  child: getButton(context, Colors.white, true, "Facebook",
                      getFontColor(context), () {}, EdgeInsets.zero,
                      isIcon: true,
                      icons: "facebook.svg",
                      withGradient: false,
                      shadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.05),
                            blurRadius: 8,
                            spreadRadius: 2)
                      ]),
                ),
              ]),
        ),
        getVerSpace(FetchPixels.getPixelHeight(90)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            getCustomFont(
                "Don't have an account?", 38, getFontColor(context), 1,
                textAlign: TextAlign.start, fontWeight: FontWeight.w500),
            InkWell(
              onTap: () {
                Constant.sendToNext(context, Routes.signUpRoute);
              },
              child: getCustomFont(" Sign Up", 38, getAccentColor(context), 1,
                  textAlign: TextAlign.start, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ],
    );
  }
}
