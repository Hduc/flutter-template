import 'package:flutter/material.dart';
import 'package:grocery/base/color_data.dart';
import 'package:grocery/base/constant.dart';
import 'package:grocery/base/resizer/fetch_pixels.dart';
import 'package:grocery/base/widget_utils.dart';
import '../../routes/app_routes.dart';

class ScreenSignUp extends StatefulWidget {
  const ScreenSignUp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ScreenSignUp();
  }
}

class _ScreenSignUp extends State<ScreenSignUp> {
  finish() {
    Constant.backToPrev(context);
  }

  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController passController = TextEditingController();
  ValueNotifier<bool> isShowPass = ValueNotifier(false);
  bool chkVal = false;
  String selectedCountry="US";

  @override
  Widget build(BuildContext context) {
    FetchPixels(context);
    Widget spaceWidget = getVerSpace(FetchPixels.getPixelHeight(60));
    return getDetailWidget(context, () {
      finish();
    }, buildList(context, spaceWidget));
  }

  ListView buildList(BuildContext context, Widget spaceWidget) {
    return ListView(
        padding: EdgeInsets.symmetric(
            horizontal: FetchPixels.getDefaultHorSpace(context)),
        shrinkWrap: true,
        primary: true,
        children: [
          getTopViewHeader(context,"Sign Up","Lorem ipsum dolor amet, consectetur adipiscing elit, sed do eiusmod."),
          getDefaultTextFiled(context, "Full Name", fullNameController,
              getFontColor(context)),
          spaceWidget,
          getDefaultTextFiled(
              context, "Email", emailController, getFontColor(context)),
          spaceWidget,
          getDefaultTextFiled(context, "Phone Number", mobileController,
              getFontColor(context)),
          spaceWidget,
            getTextFieldView(
                context,
                InkWell(
                  onTap: () {
                    Constant.sendToNextWithBackResult(
                        context, Routes.selectCountryPath,(value) {
                          if(value!=null)
                            {
                              setState(() {
                                selectedCountry=value[Constant.sendVal];
                              });
                            }
                        },);
                  },
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: getCustomFont(selectedCountry, getEditFontSize(),
                            getFontBlackColor(context), 1,
                            fontWeight: FontWeight.w500),
                      ),
                      getSvgImageWithSize(
                          context,
                          "arrow_bottom.svg",
                          FetchPixels.getPixelHeight(getEditIconSize()),
                          FetchPixels.getPixelHeight(getEditIconSize()))
                    ],
                  ),
                ),
                false,
                EdgeInsets.zero),
          spaceWidget,
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
          // Align(
          //   alignment: Alignment.topRight,
          //   child: InkWell(
          //     onTap: () {
          //       Constant.sendToNext(context, Routes.changePassRoute);
          //     },
          //     child: getCustomFont(
          //         "Forgot Password?", 38, getAccentColor(context), 1,
          //         fontWeight: FontWeight.w600, textAlign: TextAlign.end),
          //   ),
          // ),
          Row(
            children: [
              SizedBox(
                height: FetchPixels.getPixelHeight(48),
                width: FetchPixels.getPixelHeight(48),
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
              getCustomFont("I accepted", 36, getFontColor(context), 1,
                  textAlign: TextAlign.start, fontWeight: FontWeight.w500),
              getCustomFont(
                  " Terms & Privacy Policy", 36, getAccentColor(context), 1,
                  textAlign: TextAlign.start, fontWeight: FontWeight.w500),
            ],
          ),
          getVerSpace(FetchPixels.getPixelHeight(85)),
          getButton(
              context, getAccentColor(context), true, "Sign Up", Colors.white,
              () {
            // PrefData.setLogIn(true);
            Constant.sendToNext(context, Routes.verifyCodeRoute);
          }, EdgeInsets.zero),
          getVerSpace(FetchPixels.getPixelHeight(70)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              getCustomFont(
                  "Already have an account?", 40, getFontHint(context), 1,
                  textAlign: TextAlign.start, fontWeight: FontWeight.w500),
              InkWell(
                onTap: () {
                  Constant.sendToNext(context, Routes.loginRoute);
                },
                child: getCustomFont(" Login", 40, getAccentColor(context), 1,
                    textAlign: TextAlign.start, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          getVerSpace(FetchPixels.getPixelHeight(20)),
        ],
      );
  }
}
