import 'package:flutter/material.dart';
import 'package:grocery/base/color_data.dart';
import 'package:grocery/base/constant.dart';
import 'package:grocery/base/resizer/fetch_pixels.dart';
import 'package:grocery/base/widget_utils.dart';

import '../../../base/pref_data.dart';
import '../../routes/app_routes.dart';

class ScreenLogin extends StatefulWidget {
  const ScreenLogin({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ScreenLogin();
  }
}

class _ScreenLogin extends State<ScreenLogin> {
  finish() {
    Constant.backToPrev(context);
  }

  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController passController = TextEditingController();
  ValueNotifier<bool> isShowPass = ValueNotifier(false);

  bool chkVal = false;

  @override
  Widget build(BuildContext context) {
    FetchPixels(context);
    return getDetailWidget(context, () {
      finish();
    },
        ListView(
          padding: EdgeInsets.symmetric(
              horizontal: FetchPixels.getDefaultHorSpace(context)),
          shrinkWrap: true,
          primary: true,
          children: [
            getTopViewHeader(context, "Login",
                "Lorem ipsum dolor amet, consectetur adipiscing elit, sed do eiusmod."),
            buildDefaultTextFiled(context),
            getVerSpace(FetchPixels.getPixelHeight(60)),
            buildValueListenableBuilder(),
            getVerSpace(FetchPixels.getPixelHeight(40)),
            buildRow(context),
            getVerSpace(FetchPixels.getPixelHeight(70)),
            buildButton(context),
          ],
        ));
  }

  Widget buildDefaultTextFiled(BuildContext context) {
    return getDefaultTextFiled(
        context, "Email", emailController, getFontColor(context));
  }

  ValueListenableBuilder<bool> buildValueListenableBuilder() {
    return ValueListenableBuilder(
      builder: (context, value, child) {
        return getPassTextFiled(context, "Password", passController,
            getFontColor(context), isShowPass.value, () {
          isShowPass.value = !isShowPass.value;
        });
      },
      valueListenable: isShowPass,
    );
  }

  Row buildRow(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: FetchPixels.getPixelHeight(24),
          width: FetchPixels.getPixelHeight(24),
          child: Checkbox(
            onChanged: (value) {
              setState(() {
                chkVal = value!;
              });
            },
            value: chkVal,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            side: BorderSide(width: 0.8, color: greyFont),
            activeColor: getAccentColor(context),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
          ),
        ),
        getHorSpace(FetchPixels.getPixelWidth(30)),
        getCustomFont("Remember me", 32, getFontColor(context), 1,
            textAlign: TextAlign.start, fontWeight: FontWeight.w500)
      ],
    );
  }

  Widget buildButton(BuildContext context) {
    return getButton(
        context, getAccentColor(context), true, "Sign In", Colors.white, () {
      PrefData.setLogIn(true);
      Constant.sendToNext(context, Routes.homeScreenRoute);
    }, EdgeInsets.zero);
  }
}
