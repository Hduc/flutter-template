
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:workout/generated/l10n.dart';
import 'package:workout/main_project.dart';

import 'ColorCategory.dart';
import 'ConstantWidget.dart';
import 'Constants.dart';
import 'ForgotPasswordPage.dart';

import 'IntroPage.dart';
import 'PrefData.dart';




class SignInPage extends StatefulWidget {
  @override
  _SignInPage createState() {
    return _SignInPage();
  }
}

class _SignInPage extends State<SignInPage> {
  bool isRemember = false;
  int themeMode = 0;
  TextEditingController textNameController = new TextEditingController();
  TextEditingController textPasswordController = new TextEditingController();
  TextEditingController userNameController = new TextEditingController();
  String countryCode = "IN";

  Future<bool> _requestPop() {
    exitApp();
    return new Future.value(false);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {


    setStatusBarColor(bgDarkWhite);
    return GestureDetector(
      child: WillPopScope(
          child: Scaffold(
            backgroundColor: bgDarkWhite,
            appBar: getNoneAppBar(context),
            body: Container(
              child: Column(
                children: [
                  ConstantWidget.getLoginAppBar(context, function: _requestPop),
                  Expanded(
                    flex: 1,
                    child: ListView(
                      padding: EdgeInsets.symmetric(
                          horizontal:
                              Constants.getDefaultHorizontalMargin(context)),
                      children: [
                        SizedBox(
                          height:
                              ConstantWidget.getScreenPercentSize(context, 2.5),
                        ),
                        ConstantWidget.getTextWidget(
                            "Login",
                            textColor,
                            TextAlign.left,
                            FontWeight.w700,
                            ConstantWidget.getScreenPercentSize(context, 3)),
                        SizedBox(
                          height:
                              ConstantWidget.getScreenPercentSize(context, 1.4),
                        ),
                        ConstantWidget.getTextWidget(
                            "Welcome back to our account!",
                            textColor,
                            TextAlign.left,
                            FontWeight.w400,
                            ConstantWidget.getScreenPercentSize(context, 2)),
                        SizedBox(
                          height:
                              ConstantWidget.getScreenPercentSize(context, 2),
                        ),
                        ConstantWidget.getDefaultTextFiledWidget(
                          context,
                          S.of(context).username,
                          userNameController,
                        ),
                        ConstantWidget.getPasswordTextFiled(
                            context, 'Password', textPasswordController),
                        Row(
                          children: [
                            Expanded(
                              child: InkWell(
                                child: ConstantWidget.getTextWidget(
                                    'Forgot Password?',
                                    textColor,
                                    TextAlign.end,
                                    FontWeight.w600,
                                    ConstantWidget.getScreenPercentSize(
                                        context, 1.8)),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            ForgotPasswordPage(),
                                      ));
                                },
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height:
                              ConstantWidget.getScreenPercentSize(context, 4),
                        ),
                        ConstantWidget.getButtonWidget(
                            context, 'Login', blueButton, () {
                          checkValidation();
                        }),
                        ConstantWidget.getTextWidget(
                            'OR',
                            textColor,
                            TextAlign.center,
                            FontWeight.w600,
                            ConstantWidget.getScreenPercentSize(context, 1.8)),
                        ConstantWidget.getButtonWidget(
                            context, 'Create New One', blueButton, () {
                          FocusScopeNode currentFocus = FocusScope.of(context);
                          if (!currentFocus.hasPrimaryFocus) {
                            currentFocus.unfocus();
                          }

                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => IntroPage(),
                              ));
                        }),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: ConstantWidget.getScreenPercentSize(context, 2),
                  ),
                ],
              ),
            ),
          ),
          onWillPop: _requestPop),
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
    );
  }

  Widget getDefaultPhoneNumberWidget(BuildContext context, String s,
      TextEditingController textEditingController) {
    double height = ConstantWidget.getDefaultButtonSize(context);

    double radius = ConstantWidget.getPercentSize(height, 20);
    double fontSize = ConstantWidget.getPercentSize(height, 27);
    FocusNode myFocusNode = FocusNode();

    Color color = borderColor;

    return StatefulBuilder(
      builder: (context, setState) {
        myFocusNode.addListener(() {
          print("focus---${myFocusNode.hasFocus}---$s");

          setState(() {
            if (myFocusNode.hasFocus) {
              color = primaryColor;
            } else {
              color = borderColor;
            }
          });
        });
        return Container(
          height: height,
          margin: EdgeInsets.symmetric(
              vertical: ConstantWidget.getScreenPercentSize(context, 1.2)),
          alignment: Alignment.centerLeft,

          decoration: getDefaultDecoration(radius: radius, borderColor: color),

          //

          child: Row(
            children: [
              SizedBox(
                width: ConstantWidget.getWidthPercentSize(context, 2.5),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(radius),
                  ),
                ),
                child: CountryCodePicker(
                  boxDecoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  closeIcon: Icon(Icons.close,
                      size: ConstantWidget.getScreenPercentSize(context, 3),
                      color: Colors.black),

                  onChanged: (value) {
                    countryCode = value.dialCode!;
                  },
                  // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                  initialSelection: 'IN',
                  padding: EdgeInsets.zero,
                  searchStyle: TextStyle(
                      color: Colors.black, fontFamily: Constants.fontsFamily),
                  searchDecoration: InputDecoration(
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      hintStyle: TextStyle(
                          color: textColor,
                          fontSize: fontSize,
                          fontFamily: Constants.fontsFamily)),
                  textStyle: TextStyle(
                      fontSize: fontSize,
                      color: textColor,
                      fontFamily: Constants.fontsFamily),
                  dialogTextStyle: TextStyle(
                      color: textColor,
                      fontSize: fontSize,
                      fontFamily: Constants.fontsFamily),

                  showFlagDialog: true,
                  hideSearch: true,
                  flagWidth: ConstantWidget.getWidthPercentSize(context, 5),
                  comparator: (a, b) => b.name!.compareTo(a.name!),

                  onInit: (code) {
                    countryCode = code!.dialCode!;

                    print("on init ${code.name} ${code.dialCode} ${code.name}");
                  },
                ),
              ),
              Icon(Icons.keyboard_arrow_down,
                  size: ConstantWidget.getScreenPercentSize(context, 3),
                  color: textColor),
              Expanded(
                flex: 1,
                child: Focus(
                  onFocusChange: (hasFocus) {},
                  child: TextFormField(
                    focusNode: myFocusNode,
                    maxLines: 1,
                    controller: textEditingController,
                    textAlign: TextAlign.start,
                    textAlignVertical: TextAlignVertical.center,
                    style: TextStyle(
                        fontFamily: Constants.fontsFamily,
                        color: textColor,
                        fontWeight: FontWeight.w400,
                        fontSize: fontSize),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(
                            left:
                                ConstantWidget.getWidthPercentSize(context, 4)),
                        border: OutlineInputBorder(),
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        hintText: s,
                        isDense: true,
                        hintStyle: TextStyle(
                            fontFamily: Constants.fontsFamily,
                            color: subTextColor,
                            fontWeight: FontWeight.w400,
                            fontSize: fontSize)),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void checkValidation() {
    // FocusScopeNode currentFocus = FocusScope.of(context);
    // if (!currentFocus.hasPrimaryFocus) {
    //   currentFocus.unfocus();
    // }
    //
    // if (ConstantUrl.isNotEmpty(userNameController.text) &&
    //     ConstantUrl.isNotEmpty(textPasswordController.text)) {
    //   if ((textPasswordController.text.length >= 6)) {
    checkNetwork();
    //   } else {
    //     ConstantUrl.showToast(S.of(context).passwordError, context);
    //   }
    // } else {
    //   ConstantUrl.showToast(S.of(context).fillDetails, context);
    // }
  }

  checkNetwork() async {
    // bool isNetwork = await ConstantUrl.getNetwork();
    // if (isNetwork) {
    signIn();
    // } else {
    //   getNoInternet(context);
    // }
  }

  Future<void> signIn() async {
    //   String deviceId = await ConstantUrl.getDeviceId();
    //
    //   DialogUtil dialogUtil = new DialogUtil(context);
    //   dialogUtil.showLoadingDialog();
    //
    //   Map data = {
    //     ConstantUrl.paramUserName:  userNameController.text,
    //     // ConstantUrl.paramUserName:  textNameController.text,
    //     // ConstantUrl.paramUserName: countryCode + textNameController.text,
    //     ConstantUrl.paramPassword: textPasswordController.text,
    //     ConstantUrl.paramDeviceId: deviceId,
    //   };
    //
    //   final response =
    //       await http.post(Uri.parse(ConstantUrl.loginUrl), body: data);
    //
    //   if (response.statusCode == 200) {
    //     Map<String, dynamic> map = json.decode(response.body);
    //
    //     LoginModel user = LoginModel.fromJson(map);
    //     print("response----12--${response.body}");
    //     FocusScopeNode currentFocus = FocusScope.of(context);
    //     if (!currentFocus.hasPrimaryFocus) {
    //       currentFocus.unfocus();
    //     }
    //
    //     if (user.dataModel!.login != null) {
    //       ConstantUrl.showToast(user.dataModel!.login!.error!, context);
    //     }
    //
    //
    //     dialogUtil.dismissLoadingDialog();
    //     if (user.dataModel!.success == 1) {
    //       if (user.dataModel!.login != null) {
    //         PrefData.setUserDetail(
    //             json.encode(user.dataModel!.login!.userDetail));
    //         PrefData.setSession(user.dataModel!.login!.session!);
    PrefData.setIsSignIn(true);
    Navigator.push(context, MaterialPageRoute(
      builder: (context) {
        return MainProject();
      },
    ));
    // Navigator.of(context).pop(true);
    //
    //
    //
    //       }
    //     }
    //
    //
    //   }
  }
}

getNoInternet(BuildContext context) {
  return Container(
      color: bgDarkWhite,
      child: Center(
        child: Text(
          S.of(context).noInternetConnection,
          style: TextStyle(
              color: Colors.black87,
              fontFamily: Constants.fontsFamily,
              fontWeight: FontWeight.bold),
        ),
      ));
}
