import 'package:flutter/material.dart';
import 'package:grocery/base/color_data.dart';
import 'package:grocery/base/constant.dart';
import 'package:grocery/base/resizer/fetch_pixels.dart';
import 'package:grocery/base/widget_utils.dart';
import '../../routes/app_routes.dart';
import '../dialogs/custom_app_dialog.dart';

class ScreenChangePass extends StatefulWidget {
  const ScreenChangePass({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ScreenChangePass();
  }
}

class _ScreenChangePass extends State<ScreenChangePass> {
  finish() {
    Constant.backToPrev(context);
  }

  TextEditingController passController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();
  ValueNotifier<bool> isShowPass = ValueNotifier(false);
  ValueNotifier<bool> isShowConfirmPass = ValueNotifier(false);

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
        getTopViewHeader(context, "Forgot Password",
            "Please enter email for forgot your password."),
        ValueListenableBuilder(
          builder: (context, value, child) {
            return getPassTextFiled(context, "Password", passController,
                getFontColor(context), isShowPass.value, () {
              isShowPass.value = !isShowPass.value;
            });
          },
          valueListenable: isShowPass,
        ),
        getVerSpace(FetchPixels.getPixelHeight(60)),
        ValueListenableBuilder(
          builder: (context, value, child) {
            return getPassTextFiled(
                context,
                "Confirm Password",
                confirmPassController,
                getFontColor(context),
                isShowConfirmPass.value, () {
              isShowConfirmPass.value = !isShowConfirmPass.value;
            });
          },
          valueListenable: isShowConfirmPass,
        ),
        getVerSpace(FetchPixels.getPixelHeight(60)),
        getButton(
            context, getAccentColor(context), true, "Submit", Colors.white, () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return CustomAppDialog(context, () {
                  Constant.sendToNext(context, Routes.loginRoute);
                }, "pass.svg", "Password Changed",
                    "Your password has been successfully\nchanged!", "Ok");
              });
        }, EdgeInsets.zero),
        getVerSpace(FetchPixels.getPixelHeight(55)),
      ],
    );
  }
}
