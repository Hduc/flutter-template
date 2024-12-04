import 'package:flutter/material.dart';
import 'package:grocery/base/color_data.dart';
import 'package:grocery/base/constant.dart';
import 'package:grocery/base/resizer/fetch_pixels.dart';
import 'package:grocery/base/widget_utils.dart';

import '../../../base/flutter_pin_code_fields.dart';
import '../../../base/pref_data.dart';
import '../../routes/app_routes.dart';
import '../dialogs/custom_app_dialog.dart';

class ScreenVerifyCode extends StatefulWidget {
  const ScreenVerifyCode({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ScreenVerifyCode();
  }
}

class _ScreenVerifyCode extends State<ScreenVerifyCode> {
  finish() {
    Constant.backToPrev(context);
  }

  TextEditingController codeController = TextEditingController();


  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    FetchPixels(context);
    return getDetailWidget(context, () {
      finish();
    },buildList(context));
  }

  ListView buildList(BuildContext context) {
    return ListView(
    padding: EdgeInsets.symmetric(
        horizontal: FetchPixels.getDefaultHorSpace(context)),
    shrinkWrap: true,
    primary: true,
    children: [
      getTopViewHeader(context,"Verify","Please enter verify code that we've sent to your email."),
      PinCodeFields(
        length: 4,
        fieldBorderStyle: FieldBorderStyle.square,
        controller: codeController,
        activeBorderColor: getFontSkip(context),
        padding: EdgeInsets.zero,
        responsive: false,
        textStyle: TextStyle(
          color: getFontColor(context),
          fontSize: 60,
          fontFamily: Constant.fontsFamily,
          fontWeight: FontWeight.bold,
        ),
        borderWidth: 0.7,
        borderColor: getCurrentTheme(context).focusColor,
        borderRadius: BorderRadius.all(
            Radius.circular(FetchPixels.getPixelHeight(30))),
        fieldWidth: FetchPixels.getPixelHeight(150),
        fieldHeight: FetchPixels.getPixelHeight(150),
        onComplete: (result) {},
      ),
      getVerSpace(FetchPixels.getPixelHeight(60)),
      getButton(
          context, getAccentColor(context), true, "Verify", Colors.white,
              () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return CustomAppDialog(context, () {
                    // Constant.sendToNext(context, Routes.loginRoute);
                    PrefData.setLogIn(true);
                    Constant.sendToNext(context, Routes.homeScreenRoute);
                  }, "acc_created.svg", "Account Created",
                      "Your account has been successfully\ncreated!", "Ok");
                });

          }, EdgeInsets.zero),
      getVerSpace(FetchPixels.getPixelHeight(35)),
      getButton(context, Colors.transparent, true, "Resend",
          getAccentColor(context), () {
          }, EdgeInsets.zero, withGradient: false),
    ],
  );
  }
}
