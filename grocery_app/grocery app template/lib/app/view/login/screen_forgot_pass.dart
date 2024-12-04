import 'package:flutter/material.dart';
import 'package:grocery/base/color_data.dart';
import 'package:grocery/base/constant.dart';
import 'package:grocery/base/resizer/fetch_pixels.dart';
import 'package:grocery/base/widget_utils.dart';
import '../../routes/app_routes.dart';

class ScreenForgotPass extends StatefulWidget {
  const ScreenForgotPass({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ScreenForgotPass();
  }
}

class _ScreenForgotPass extends State<ScreenForgotPass> {
  finish() {
    Constant.backToPrev(context);
  }

  TextEditingController emailController = TextEditingController();
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
          getTopViewHeader(context,"Forgot Password","Please enter email for forgot your password."),
          getDefaultTextFiled(
              context, "Email", emailController, getFontColor(context)),
          getVerSpace(FetchPixels.getPixelHeight(60)),
          getButton(
              context, getAccentColor(context), true, "Submit", Colors.white,
              () {
            Constant.sendToNext(context, Routes.changePassRoute);
          }, EdgeInsets.zero),
          getVerSpace(FetchPixels.getPixelHeight(55)),

        ],
      );
  }
}
