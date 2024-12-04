// ignore: file_names
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shopping/constants/constant.dart';
import '../../../constants/pref_data.dart';
import '../../../constants/size_config.dart';
import '../../../constants/widget_utils.dart';
import '../../../constants/color_data.dart';
import '../driver_home_screen.dart';

class DriverSignInScreen extends StatefulWidget {
  const DriverSignInScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _DriverSignInScreen();
  }
}

class _DriverSignInScreen extends State<DriverSignInScreen> {
  void backScreen() {
    Constant.backToFinish(context);
  }

  FocusNode focusNode = FocusNode();
  TextEditingController emailSignInController = TextEditingController();
  TextEditingController passSignInController = TextEditingController();
  ValueNotifier<bool> isShowPass = ValueNotifier(false);
  bool chkVal = false;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    double screenHeight = SizeConfig.safeBlockVertical! * 100;
    double screenWidth = SizeConfig.safeBlockHorizontal! * 100;
    double appbarPadding = getAppBarPadding();

    return WillPopScope(
        child: Scaffold(
          backgroundColor: backgroundColor,
          body: getBackgroundWidget(Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(
                horizontal: Constant.getPercentSize(screenWidth, 4)),
            child: Column(
              children: [
                getSpace(Constant.getPercentSize(screenHeight, 3)),
                getLoginTextField(emailSignInController, "Email", "email.svg"),
                ValueListenableBuilder(
                  builder: (context, value, child) {
                    return getPassTextField(passSignInController, "Password",
                        "Lock.svg", isShowPass.value, () {
                      isShowPass.value = !isShowPass.value;
                    });
                  },
                  valueListenable: isShowPass,
                ),
                getSpace(appbarPadding / 2),
                Row(
                  children: [
                    SizedBox(
                      height: getEdtIconSize(),
                      width: getEdtIconSize(),
                      child: Checkbox(
                        onChanged: (value) {
                          setState(() {
                            chkVal = value!;
                          });
                        },
                        value: chkVal,
                        materialTapTargetSize:
                        MaterialTapTargetSize.shrinkWrap,
                        side: BorderSide(width: 0.5, color: greyFont),
                        activeColor: primaryColor,
                        shape: const RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.all(Radius.circular(5)),
                        ),
                      ),
                    ),
                    getHorSpace(
                        Constant.getPercentSize(screenWidth, 1.5)),
                    getCustomText(
                        "Remember me",
                        fontBlack,
                        1,
                        TextAlign.start,
                        FontWeight.w400,
                        getEdtTextSize()),

                  ],
                ),
                getSpace(appbarPadding),
                getButton(primaryColor, true, "Sign In", Colors.white, () {
                  PrefData.setLogIn(true);
                  Constant.sendToScreen(DriverHomeScreen(), context);
                }, FontWeight.w500,
                    EdgeInsets.symmetric(vertical: appbarPadding)),
              ],
            ),
          )),
        ),
        onWillPop: () async {
          backScreen();
          return false;
        });
  }

  @override
  void dispose() {
    try {
      emailSignInController.dispose();
      focusNode.dispose();
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
    super.dispose();
  }
}
