import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterlearnvern/PhoneVerification.dart';
import 'package:flutterlearnvern/main_project.dart';
import 'package:flutterlearnvern/utils/ConstantData.dart';
import 'package:flutterlearnvern/utils/ConstantWidget.dart';


import 'SizeConfig.dart';
import 'generated/l10n.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPage createState() {
    return _SignUpPage();
  }
}

class _SignUpPage extends State<SignUpPage> {
  bool isRemember = false;
  int themeMode = 0;
  TextEditingController textEmailController = new TextEditingController();
  TextEditingController textNameController = new TextEditingController();
  TextEditingController textPasswordController = new TextEditingController();

  Future<bool> _requestPop() {
    Future.delayed(const Duration(milliseconds: 200), () {
      SystemChannels.platform.invokeMethod('SystemNavigator.pop');
    });

    return new Future.value(false);
  }

  @override
  void initState() {
    super.initState();
    ConstantData.setThemePosition();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    double height = ConstantWidget.getScreenPercentSize(context, 8.5);

    double radius = ConstantWidget.getPercentSize(height, 20);

    return WillPopScope(
        child: Scaffold(
          backgroundColor: bgColor,
          appBar: AppBar(
            backgroundColor: bgColor,
            elevation: 0,
            title: Text(""),
            leading: Icon(
              Icons.keyboard_backspace,
              color: textColor,
            ),
          ),
          body: Container(
            padding: EdgeInsets.symmetric(
                horizontal: ConstantWidget.getScreenPercentSize(context, 2.5)),
            child: ListView(
              children: [
                ConstantWidget.getTextWidget(
                    "Create Account!",
                    textColor,
                    TextAlign.left,
                    FontWeight.bold,
                    ConstantWidget.getScreenPercentSize(context, 4.2)),
                SizedBox(
                  height: ConstantWidget.getScreenPercentSize(context, 2.5),
                ),
                ConstantWidget.getDefaultTextFiledWidget(
                    context, S.of(context).yourName, textNameController),
                ConstantWidget.getDefaultTextFiledWidget(
                    context, S.of(context).yourEmail, textEmailController),
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical:
                          ConstantWidget.getScreenPercentSize(context, 1.2)),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        height: height,
                        margin: EdgeInsets.only(right: 7),
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          color: cellColor,
                          borderRadius: BorderRadius.all(
                            Radius.circular(radius),
                          ),
                        ),
                        child: CountryCodePicker(
                          boxDecoration: BoxDecoration(
                            color: cellColor,
                          ),
                          closeIcon: Icon(Icons.close,
                              size: ConstantWidget.getScreenPercentSize(
                                  context, 3),
                              color: textColor),

                          onChanged: (value) {},
                          // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                          initialSelection: 'IN',
                          searchStyle: TextStyle(
                              color: textColor,
                              fontFamily: ConstantData.fontsFamily),
                          searchDecoration: InputDecoration(
                              border: UnderlineInputBorder(
                                borderSide: BorderSide(color: textColor),
                              ),
                              hintStyle: TextStyle(
                                  color: textColor,
                                  fontFamily: ConstantData.fontsFamily)),
                          textStyle: TextStyle(
                              color: textColor,
                              fontFamily: ConstantData.fontsFamily),
                          dialogTextStyle: TextStyle(
                              color: textColor,
                              fontFamily: ConstantData.fontsFamily),

                          showFlagDialog: true,
                          hideSearch: true,
                          comparator: (a, b) => b.name!.compareTo(a.name!),

                          onInit: (code) {},
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: height,
                          padding: EdgeInsets.only(left: 7),
                          margin: EdgeInsets.only(left: 7),
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                            color: cellColor,
                            borderRadius: BorderRadius.all(
                              Radius.circular(radius),
                            ),
                          ),
                          child: TextField(
                            onChanged: (value) async {
                              try {} catch (e) {
                                print("resge$e");
                              }
                            },
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(
                                    left: ConstantWidget.getWidthPercentSize(
                                        context, 2)),
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                hintText: S.of(context).phoneNumber,
                                hintStyle: TextStyle(
                                    fontFamily: ConstantData.fontsFamily,
                                    color: textColor,
                                    fontWeight: FontWeight.w400,
                                    fontSize: ConstantWidget.getPercentSize(
                                        height, 25))),
                            style: TextStyle(
                                fontFamily: ConstantData.fontsFamily,
                                color: textColor,
                                fontWeight: FontWeight.w400,
                                fontSize:
                                    ConstantWidget.getPercentSize(height, 25)),
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ], // Only numbers can be entered
                          ),
                        ),
                        flex: 1,
                      )
                    ],
                  ),
                ),
                ConstantWidget.getPasswordTextFiled(
                    context, S.of(context).password, textPasswordController),
                SizedBox(
                  height: ConstantWidget.getScreenPercentSize(context, 2),
                ),
                ConstantWidget.getButtonWidget(
                    context, S.of(context).signUpNow, primaryColor, () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PhoneVerification(),
                      ));
                }),
                SizedBox(
                  height: ConstantWidget.getScreenPercentSize(context, 12),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ConstantWidget.getTextWidget(
                        S.of(context).youHaveAnAlreadyAccount,
                        textColor,
                        TextAlign.left,
                        FontWeight.w500,
                        ConstantWidget.getScreenPercentSize(context, 1.8)),
                    SizedBox(
                      width: ConstantWidget.getScreenPercentSize(context, 0.5),
                    ),
                    InkWell(
                      child: ConstantWidget.getTextWidget(
                          S.of(context).signIn,
                          primaryColor,
                          TextAlign.start,
                          FontWeight.bold,
                          ConstantWidget.getScreenPercentSize(context, 2)),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MainProject(),
                            ));
                      },
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        onWillPop: _requestPop);
  }
}
